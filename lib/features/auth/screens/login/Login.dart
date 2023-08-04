part of 'LoginImports.dart';

@RoutePage()
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  LoginData loginData = LoginData();

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
                  )
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Text(
                  "الدخول",
                  style: TextStyle(
                    fontSize: 30,
                    color: GeneralColor.textColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              BuildFormLogin(
                loginData: loginData,
              ),
              BuildButtonLogin(loginData: loginData)
            ],
          ),
        ));
  }
}
