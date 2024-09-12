part of 'MainHomeImports.dart';

class MainHomeData {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  String userName = "";
  String userPosition = "";
  List<HomeModel> list = [];

  void setData(BuildContext context) {
    list.add(HomeModel(
      "طلب سلفة",
      "assets/images/loan.png",
    ));
    list.add(HomeModel(
      "طلب أجازة",
      "assets/images/interview.png",
    ));
    list.add(HomeModel(
      "حدد موقعك",
      "assets/images/location.png",
    ));
    list.add(HomeModel(
      "التقارير",
      "assets/images/analytics.png",
    ));
    list.add(HomeModel(
      "تسجيل خروج",
      "assets/images/analytics.png",
    ));

    LoginResponse? data = context.read<UserCubit>().state.model;

    userName = data!.obj!.userName!;
    userPosition = data.obj!.roleName!;
  }

  void moveToPage(BuildContext context, String title) async {
    if (title == "تسجيل خروج") {
      logout(context);
    } else if (title == "طلب سلفة") {
      Navigator.push(context, MaterialPageRoute(builder: (context) => const Loans()));
    } else if (title == "طلب أجازة") {
      Navigator.push(context, MaterialPageRoute(builder: (context) => const Vacations()));
    }
  }

  void logout(BuildContext context) {
    if (context.mounted) {
      context.read<AuthCubit>().onUpdateAuth(false);
      context.read<UserCubit>().onUpdateUserData(LoginResponse());
      GlobalState.instance.set("token", "");
      SharedData.logout();
      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
    }
  }
}
