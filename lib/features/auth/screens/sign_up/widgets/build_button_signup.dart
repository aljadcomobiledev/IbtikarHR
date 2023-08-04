part of 'SignUpWidgetsImports.dart';


class BuildButtonSignUp extends StatelessWidget {
  final SignUpData signUpData;

  const BuildButtonSignUp({super.key, required this.signUpData});

  @override
  Widget build(BuildContext context) {
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
                "تسجيل",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: GeneralColor.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            onTap: () {
             signUpData.signUp(context);
            },
          ));
  }
}
