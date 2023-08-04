part of 'SalaryStatementWidgetsImports.dart';

class BuildSalaryStatementListItem extends StatefulWidget {
  final PayrollItem item;
  final int index;
  final SalaryStatementData salaryStatementData;

  const BuildSalaryStatementListItem(
      {super.key,
      required this.item,
      required this.index,
      required this.salaryStatementData});

  @override
  _PayrollState createState() => _PayrollState();
}

class _PayrollState extends State<BuildSalaryStatementListItem> {
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
    setState(() {
      fileName = p.basename(widget.item.path ?? "");
    });

    checkPermission();
    checkFileExit();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            padding:
                const EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      widget.item.title ?? "",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: GeneralColor.textColor2),
                    ),
                    IconButton(
                        onPressed: () {
                          fileExists && dowloading == false
                              ? openFile()
                              : startDownload();
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
                ))),
        const SizedBox(
          height: 10,
        ),
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
      await Dio().download(widget.item.path ?? "", filePath,
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
