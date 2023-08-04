part of 'LoginWidgetsImports.dart';

class BuildButtonLogin extends StatelessWidget {
  final LoginData loginData;

  const BuildButtonLogin({super.key, required this.loginData});

  @override
  Widget build(BuildContext context) {
    // ToastContext().init(context);

    return
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16.0),
          child: InkWell(
            child: Container(
              height: 50,
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: GeneralColor.appColor,
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                "تسجيل الدخول",
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
            loginData.login(context);}
          ));
  }
}
