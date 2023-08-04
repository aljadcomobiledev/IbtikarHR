part of 'SplashImports.dart';

class SplashData {
  void checkingData(BuildContext context) async {
    Future.delayed(
        const Duration(milliseconds: 1500), () => manipulateSaveData(context));
  }

  void manipulateSaveData(BuildContext context) async {
    // SharedPreferences.setMockInitialValues({});

    SharedPreferences prefs = await SharedPreferences.getInstance();

    String qrValue = prefs.getString("qrCode") ?? "";
    context.read<QrCubit>().onUpdateQr(qrValue);
    // PermissionStatus status = await _getCameraPermission();
    print("qrcode:$qrValue");
    if (qrValue != ""&&context.mounted) {
      String code = context.read<QrCubit>().state.code;
      ApisName.appUrl = code;
      var strUser = prefs.getString("user");
      if (strUser != null && strUser != "" && context.mounted) {
        context.read<AuthCubit>().onUpdateAuth(true);
        LoginResponse user = LoginResponse.fromJson(json.decode("$strUser"));
        GlobalState.instance.set("token", user.response!.token);
        context.read<UserCubit>().onUpdateUserData(user);

        if (context.mounted) {
          AutoRouter.of(context).push(const Home());
        }
      } else {
        context.read<AuthCubit>().onUpdateAuth(false);
        AutoRouter.of(context).push(const Landing());
      }
    } else {
      AutoRouter.of(context).push(const ScanQR());
    }
  }

// Future<PermissionStatus> _getCameraPermission() async {
//   var status = await Permission.camera.status;
//   if (!status.isGranted) {
//     final result = await Permission.camera.request();
//     return result;
//   } else {
//     return status;
//   }
// }
}
