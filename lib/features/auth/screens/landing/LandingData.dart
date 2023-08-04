part of 'LandingImports.dart';


class LandingData {


  void moveToLogin(BuildContext context){
    AutoRouter.of(context).push(const Login());

  }
  void moveToSignUp(BuildContext context){
    AutoRouter.of(context).push(const SignUp());

  }
}
