part of 'SplashImports.dart';

class Splash extends StatefulWidget {

  const Splash();

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  SplashData splashData = SplashData();

  @override
  void initState() {
    splashData.checkingData(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          color: GeneralColor.splashGreyColor,


          // image: DecorationImage(
          //   fit: BoxFit.fill,
          //   colorFilter: ColorFilter.mode(
          //       Colors.black.withOpacity(0.8), BlendMode.dstATop),
          //   image: const AssetImage(
          //     "assets/images/splashbackground2.png",
          //   ),
          // ),
        ),
        child: Stack(
          children: [
            Container(
              color: GeneralColor.white,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,

              // Image.asset(
              //   "assets/images/splashbackground.png",
              //   width: MediaQuery.of(context).size.width,
              //   height: MediaQuery.of(context).size.height,
              //   fit: BoxFit.fill,
            ),
            Center(
              child: AnimationContainer(
                index: 0,
                vertical: true,
                duration: const Duration(milliseconds: 1000),
                distance: MediaQuery.of(context).size.height * .3,
                child: Hero(
                  tag: "assets/images/splashicon.png",
                  child: Image.asset(
                    "assets/images/splashicon.png",
                    width: 300,
                    height: 300,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
