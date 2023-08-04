part of 'ComplaintDetailsWidgetsImports.dart';

class BuildOriginalComplaint extends StatefulWidget {
  final ComplaintsDetailsData complaintDetailsData;
  final ComplaintDetails? complaintDetails;

  const BuildOriginalComplaint(
      {super.key,
      required this.complaintDetailsData,
      required this.complaintDetails});

  @override
  _OriginalComplaints createState() => _OriginalComplaints();
}

class _OriginalComplaints extends State<BuildOriginalComplaint> {
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

      fileName = p.basename(widget.complaintDetails!.attatchmentPath ?? "");
      print("file name is: $fileName");
      print("file name is: ${widget.complaintDetails!.attatchmentPath}");
    });

    checkPermission();
    checkFileExit();
  }

  @override
  Widget build(BuildContext context) {
    print("attachment path is : ${widget.complaintDetails!.attatchmentPath}");
    return Column(
      children: [
        Container(
          alignment: AlignmentDirectional.centerStart,
          margin: const EdgeInsets.symmetric(horizontal: 15),
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: GeneralColor.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.complaintDetails!.title ?? "",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: GeneralColor.textColor),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                widget.complaintDetails!.body ?? "",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                    color: GeneralColor.textColor),
              ),
            ],
          ),
        ),
        Container(
          alignment: AlignmentDirectional.centerStart,
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: GeneralColor.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: InkWell(
              onTap: () {
                fileExists && dowloading == false
                    ? openFile()
                    : startDownload();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "الملف المرفق",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: GeneralColor.textColor),
                  ),
                  IconButton(
                      onPressed: () {
                        if (widget.complaintDetails!.attatchmentPath!.isEmpty) {
                          Toast.show("لا يوجد ملف مرفق",
                              duration: Toast.lengthLong,
                              gravity: Toast.bottom
                          );
                        } else {
                          fileExists && dowloading == false
                              ? openFile()
                              : startDownload();
                        }
                      },
                      icon: fileExists
                          ? const Icon(
                              Icons.save,
                              color: Colors.brown,
                              size: 25,
                            )
                          : dowloading
                              ? Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    CircularProgressIndicator(
                                      value: progress,
                                      strokeWidth: 3,
                                      backgroundColor: Colors.white,
                                      valueColor:
                                          const AlwaysStoppedAnimation<Color>(
                                              Colors.brown),
                                    ),
                                    Text(
                                      "${(progress * 100).toStringAsFixed(2)}",
                                      style: TextStyle(fontSize: 12),
                                    )
                                  ],
                                )
                              : const Icon(
                                  Icons.download,
                                  color: Colors.brown,
                                  size: 25,
                                ))
                ],
              )),
        )
      ],
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
      await Dio()
          .download(widget.complaintDetails!.attatchmentPath ?? "", filePath,
              onReceiveProgress: (count, total) {
        setState(() {
          progress = (count / total);
        });
      }, cancelToken: cancelToken);
      setState(() {
        dowloading = false;
        fileExists = true;
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
