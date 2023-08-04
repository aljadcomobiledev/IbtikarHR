part of 'MedicalServiceWidgetsImports.dart';

class BuildMedicalServicePage extends StatefulWidget {
  final MedicalServiceData medicalServiceData;

  const BuildMedicalServicePage({super.key, required this.medicalServiceData});

  @override
  _MedicalServiceState createState() => _MedicalServiceState();
}

class _MedicalServiceState extends State<BuildMedicalServicePage> {
  bool isPermission = false;
  var checkAllPermissions = CheckPermission();

//

  bool dowloading = false;
  bool fileExists = false;
  double progress = 0;
  String fileName = "";
  late String filePath;
  late CancelToken cancelToken;
  var getPathFile = DirectoryPath();

  @override
  void initState() {
    super.initState();
    ToastContext().init(context);

    setState(() {

      fileName = p.basename(ApisName.medicalNetworkFilePath);
      print("file name is: $fileName");
      print("file name is: ${ApisName.medicalNetworkFilePath}");
    });
    checkPermission();
    checkFileExit();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(right: 30, left: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 80,
          ),
          Image.asset(
            "assets/images/doctors.png",
            width: 167,
            fit: BoxFit.fill,
            height: 140,
          ),
          const SizedBox(
            height: 140,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BuildSalaryItem(
                title: "الشبكة الطبية",
                img: "assets/images/medical_network.png",
                fun: () {
                  if (fileExists && dowloading == false) {
                    openFile();
                  } else {

                    Toast.show("جاري تحميل الملف",
                        duration: Toast.lengthLong,
                        gravity: Toast.bottom
                    );

                    startDownload();
                  }
                },
              ),
              Container(
                color: GeneralColor.secondColor,
                height: 70,
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                width: 2,
              ),
              BuildSalaryItem(
                title: "شكاوي طبية",
                img: "assets/images/complains.png",
                fun: () {
                  widget.medicalServiceData.moveToMedicalComplaints(context);
                },
              )
            ],
          ),
        ],
      ),
    );
  }

  checkPermission() async {
    var permission = await checkAllPermissions.isStoragePermission();
    if (permission) {
      setState(() {
        isPermission = true;
      });
    }
  }

  checkFileExit() async {
    var storePath = await getPathFile.getPath();
    filePath = '$storePath/$fileName';
    bool fileExistCheck = await File(filePath).exists();
    setState(() {
      fileExists = fileExistCheck;
    });
  }

  openFile() {
    OpenFile.open(filePath);
    print("fff $filePath");
  }

  startDownload() async {
    cancelToken = CancelToken();
    var storePath = await getPathFile.getPath();
    filePath = '$storePath/$fileName';
    setState(() {
      dowloading = true;
      progress = 0;
    });

    try {
      await Dio().download(
          ApisName.medicalNetworkFilePath,
          filePath, onReceiveProgress: (count, total) {
        setState(() {
          progress = (count / total);
        });
      }, cancelToken: cancelToken);

      setState(() {
        dowloading = false;
        fileExists = true;
        OpenFile.open(filePath);
      });
    } catch (e) {
      print(e);
      setState(() {
        dowloading = false;
      });
    }
  }

  cancelDownload() {
    cancelToken.cancel();
    setState(() {
      dowloading = false;
    });
  }
}
