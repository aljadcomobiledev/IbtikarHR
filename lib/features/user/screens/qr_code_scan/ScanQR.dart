part of '../qr_code_scan/SacnQRImports.dart';

@RoutePage()
class ScanQR extends StatefulWidget {
  @override
  _SacnQRState createState() => _SacnQRState();
}

class _SacnQRState extends State<ScanQR> {
  // SalaryData salariesData = SalaryData();
  final navigatorKey = GlobalKey<NavigatorState>();

  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? controller;
  PermissionStatus? status;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void reassemble() {
    super.reassemble();
    // print("status is : $status");

    if (Platform.isAndroid) {
      controller!.pauseCamera();
    } else if (Platform.isIOS) {
      controller!.resumeCamera();
    }
  }

  @override
  Widget build(BuildContext context) {
    var scanArea = (MediaQuery.of(context).size.width < 400 ||
            MediaQuery.of(context).size.height < 400)
        ? 200.0
        : 400.0;
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 5,
            child: QRView(
              key: qrKey,
              overlay: QrScannerOverlayShape(
                  borderColor: Colors.white,
                  borderRadius: 10,
                  borderLength: 30,
                  borderWidth: 10,
                  cutOutSize: scanArea),
              onQRViewCreated: _onQRViewCreated,
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
                child: (result != null)
                    ? const Text('')
                    : InkWell(
                        child: Text(
                          'يرجي مسح الكود',
                          style: TextStyle(
                            fontSize: 20,
                            color: GeneralColor.textColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onTap: () {
                          // SharedData.saveQr("http://41.33.229.188:6064/");
                          // context.read<QrCubit>().onUpdateQr("http://41.33.229.188:6064/");
                          // ApisName.appUrl = "http://41.33.229.188:6064/";
                          // AutoRouter.of(context).push(const LandingRoute());
                        },
                      )),
          ),
          Expanded(
            flex: 1,
            child: Center(
                child: InkWell(
                    child: Container(
                      height: 50,
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: GeneralColor.appColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "أو الدخول بالعنوان الإفتراضي",
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          color: GeneralColor.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    onTap: () {
                      // Map<Permission, PermissionStatus> statuses = await [
                      //   Permission.manageExternalStorage,
                      //   Permission.camera,
                      //   //add more permission to request here.
                      // ].request();
                      // if (statuses[Permission.manageExternalStorage]!
                      //     .isDenied) {
                      //   //check each permission status after.
                      //   print("manageExternalStorage permission is denied.");
                      // } else {
                      //   print("manageExternalStorage permission is accepted.");
                      // }
                      //
                      // if (statuses[Permission.camera]!.isDenied) {
                      //   //check each permission status after.
                      //   print("camera permission is denied.");
                      // } else {
                      //   print("camera permission is accepted.");
                      // } //
                      SharedData.saveQr("http://41.33.229.188:6064/");
                      context
                          .read<QrCubit>()
                          .onUpdateQr("http://41.33.229.188:6064/");
                      ApisName.appUrl = "http://41.33.229.188:6064/";
                      AutoRouter.of(context).push(const Landing());
                    })),
          )
        ],
      ),
    );
  }

  // void _onQRViewCreated(QRViewController controller) {
  //   this.controller = controller;
  //   controller.scannedDataStream.listen((scanData) {
  //     setState(() {
  //       result = scanData;
  //       SharedData.saveQr(result!.code ?? "");
  //       context.read<QrCubit>().onUpdateQr(result!.code ?? "");
  //       ApisName.appUrl = result!.code ?? "";
  //     });
  //     AutoRouter.of(context).push(const Landing());
  //   });
  // }
  void _onQRViewCreated(QRViewController controller) {
    //Here's the setState in the build method
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((scanData) async {
      setState(() {
        result = scanData;
        SharedData.saveQr(result!.code ?? "");
        context.read<QrCubit>().onUpdateQr(result!.code ?? "");
        ApisName.appUrl = result!.code ?? "";
      });
    });
  }

  Future<PermissionStatus> _getCameraPermission() async {
    var status = await Permission.camera.status;
    if (!status.isGranted) {
      final result = await Permission.camera.request();
      return result;
    } else {
      return status;
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
