part of 'HomeImports.dart';

class HomeData {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  String userName = "";
  String userPosition = "";
  List<String> list = [];

  void setData(BuildContext context) {
    list.add("مرتبات");
    list.add("اخطارات");
    list.add("نظام المراسلات");
    list.add("نظام اداراه الحالات");
    list.add("خدمات طبية");
    list.add("اشعارات اجتماعية");
    list.add("من  نحن");
    list.add("خدمات عامة");
    list.add("مسح كود جديد");
    list.add("تسجيل خروج");
    LoginResponse? data = context.read<UserCubit>().state.model;

    userName =
        "${data!.response!.data!.firstName!} ${data.response!.data!.lastName!}";
    userPosition = data.response!.data!.jobTitle!;
  }

  void moveToPage(BuildContext context, int index) async {
    ToastContext().init(context);

    if (index == 0) {
      AutoRouter.of(context).push(const Salary());
    } else if (index == 1) {
      AutoRouter.of(context).push(const Information());
    } else if (index == 2) {
      AlertDialog(
        title: const Text("تنبيه!"),
        titleTextStyle: const TextStyle(
            fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
        actionsOverflowButtonSpacing: 20,
        actions: [
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(GeneralColor.appColor)),
              child: const Text("الرجوع")),
          ElevatedButton(
              onPressed: () async {
                String packageName = "";
                if (Platform.isAndroid) {
                  packageName = "Intalio.CTS.Mobile.Android";
                } else {
                  packageName = "Intalio.CTS.Mobile.Ios";
                }

                bool isInstalled = await DeviceApps.isAppInstalled(packageName);

                if (isInstalled) {
                  await LaunchApp.openApp(
                    androidPackageName: packageName,
                  );
                } else {
                  Toast.show("يرجي تثبيت التطبيق",
                      duration: Toast.lengthLong, gravity: Toast.bottom);
                }
                Navigator.of(context).pop();
              },
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(GeneralColor.appColor)),
              child: const Text("التالي")),
        ],
        content: const Text("يرجي تفعيل ال VPN أولا."),
      ).show(context);
    } else if (index == 3) {
      AlertDialog(
        title: const Text("تنبيه!"),
        titleTextStyle: const TextStyle(
            fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
        actionsOverflowButtonSpacing: 20,
        actions: [
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(GeneralColor.appColor)),
              child: const Text("الرجوع")),
          ElevatedButton(
              onPressed: () async {
                String packageName = "";
                if (Platform.isAndroid) {
                  packageName = "intalio.cts.mobile.caseport";
                } else {
                  packageName = "com.Intalio.CasePortalEastern";
                }
                bool isInstalled = await DeviceApps.isAppInstalled(packageName);
                Toast.show(packageName,
                    duration: Toast.lengthLong, gravity: Toast.bottom);
                print("P $packageName");
                print("P $isInstalled");
                if (isInstalled) {
                  Platform.isAndroid
                      ? await LaunchApp.openApp(
                          androidPackageName: packageName,
                        )
                      : await LaunchApp.openApp(
                          iosUrlScheme: packageName,
                        );
                } else {
                  Toast.show("يرجي تثبيت التطبيق",
                      duration: Toast.lengthLong, gravity: Toast.bottom);
                }
                Navigator.of(context).pop();
              },
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(GeneralColor.appColor)),
              child: const Text("التالي")),
        ],
        content: const Text("يرجي تفعيل ال VPN أولا."),
      ).show(context);
    } else if (index == 4) {
      AutoRouter.of(context).push(const MedicalService());
    } else if (index == 5) {
      AutoRouter.of(context).push(const Notifications());
    } else if (index == 6) {
      AutoRouter.of(context).push(const WhoWeAre());
    } else if (index == 7) {
      AutoRouter.of(context).push(const GeneralServices());
    } else if (index == 8) {
      AutoRouter.of(context).push(const ScanQR());
    } else if (index == 9) {
      logout(context);
    }
  }

  void logout(BuildContext context) {
    if (context.mounted) {
      context.read<AuthCubit>().onUpdateAuth(false);
      context.read<UserCubit>().onUpdateUserData(LoginResponse());
      GlobalState.instance.set("token", "");
      SharedData.logout();
      AutoRouter.of(context).push(const Landing());
    }
  }
}
