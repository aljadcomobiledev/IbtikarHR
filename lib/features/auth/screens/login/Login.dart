part of 'LoginImports.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  LoginData loginData = LoginData();

  @override
  void initState() {
    loginData.getBranches(context);
    super.initState();
  }
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
                  padding: const EdgeInsets.only(top: 50, right: 10),
                  child: IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: Icon(
                      Icons.arrow_back_outlined,
                      size: 25,
                      color: GeneralColor.appColor,
                    ),
                  )),
              Image.asset("assets/images/splashicon.png",width: 150,height:150,),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  "مرحبا بعودتك,تسجيل الدخول",
                  style: TextStyle(
                    fontSize: 25,
                    color: GeneralColor.appColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              BuildFormLogin(
                loginData: loginData,
              ),
              BuildButtonLogin(loginData: loginData),
              SizedBox(
                height: 10,
              )],
          ),
        ));
  }
}
