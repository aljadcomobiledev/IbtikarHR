part of 'LoginWidgetsImports.dart';

class BuildButtonLogin extends StatelessWidget {
  final LoginData loginData;

  const BuildButtonLogin({super.key, required this.loginData});

  @override
  Widget build(BuildContext context) {
    // ToastContext().init(context);

    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: InkWell(
            child: Container(
              margin:  const EdgeInsets.only(top: 30),
              height: 60,
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: GeneralColor.appColor,
                  borderRadius: BorderRadius.circular(15)),
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
              loginData.login(context);
            }));
  }
}
