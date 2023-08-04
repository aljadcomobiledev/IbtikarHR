part of 'SignUpImports.dart';

@RoutePage()
class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  SignUpData signUpData = SignUpData();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
        backgroundColor: GeneralColor.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  alignment: Alignment.topRight,
                  padding: const EdgeInsets.only(top: 75, right: 10),
                  child: IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: Icon(
                      Icons.arrow_back_outlined,
                      size: 25,
                      color: GeneralColor.appColor,
                    ),
                  )),
              Text(
                "التسجيل",
                style: TextStyle(
                  fontSize: 30,
                  color: GeneralColor.textColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              BuildFormSignUp(signUpData: signUpData),
              BuildButtonSignUp(signUpData: signUpData),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "ان كنت تملك حساب",
                      style: TextStyle(
                          color: GeneralColor.textColor, fontSize: 14),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: ()=>signUpData.moveToLogin(context),
                      child: Text(
                        "سجل الدخول",
                        style: TextStyle(
                            color: GeneralColor.textColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
