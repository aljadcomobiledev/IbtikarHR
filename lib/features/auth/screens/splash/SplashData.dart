part of 'SplashImports.dart';

class SplashData {
  void checkingData(BuildContext context) async {
    Future.delayed(
        const Duration(milliseconds: 1500), () => manipulateSaveData(context));
  }

  void manipulateSaveData(BuildContext context) async {
    // SharedPreferences.setMockInitialValues({});

    SharedPreferences prefs = await SharedPreferences.getInstance();
    var strUser = prefs.getString("user");
    if (strUser != null && strUser != "" && context.mounted) {
      context.read<AuthCubit>().onUpdateAuth(true);
      LoginResponse user = LoginResponse.fromJson(json.decode("$strUser"));
      GlobalState.instance.set("token", user.obj?.accessToken);
      context.read<UserCubit>().onUpdateUserData(user);

      if (context.mounted) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MainHome()));
      }
    } else {
      context.read<AuthCubit>().onUpdateAuth(false);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) =>  Login()));
    }
  }
}
