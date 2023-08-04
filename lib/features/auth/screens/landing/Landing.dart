part of 'LandingImports.dart';

@RoutePage()
class Landing extends StatefulWidget {
  const Landing({super.key});

  // final GlobalKey<NavigatorState> navigatorKey;
  // const Landing({required this.navigatorKey});

  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  LandingData landingData = LandingData();

  // @override
  // void initState() {
  //   landingData.checkingData(context);
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          await SystemNavigator.pop();
          return false;
        },
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Container(
            decoration: BoxDecoration(
              color: const Color(0xff7c94b6),
              image: DecorationImage(
                fit: BoxFit.fill,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.8), BlendMode.dstATop),
                image: const AssetImage(
                  "assets/images/splashbackground2.png",
                ),
              ),
            ),
            child: Stack(
              children: [
                Image.asset(
                  "assets/images/splashbackground.png",
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  fit: BoxFit.fill,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.topCenter,
                      margin: const EdgeInsets.fromLTRB(0, 93, 0, 0),
                      child: Image.asset(
                        "assets/images/splashicon.png",
                        fit: BoxFit.fill,
                        width: 190,
                        height: 195,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(40, 0, 40, 107),
                      child: Column(
                        textDirection: TextDirection.rtl,
                        children: [
                          InkWell(
                            child: Container(
                              height: 50,
                              alignment: Alignment.center,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  color: GeneralColor.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                "الدخول",
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                  color: GeneralColor.appColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            onTap: () {
                              landingData.moveToLogin(context);
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            child: Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: GeneralColor.appColor,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                "تسجيل حساب",
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
                              landingData.moveToSignUp(context);
                            },
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
