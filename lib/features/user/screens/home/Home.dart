part of 'HomeImports.dart';

@RoutePage()
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  HomeData homeData = HomeData();

  @override
  void initState() {
    homeData.setData(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          if (homeData.scaffoldKey.currentState!.isDrawerOpen ) {
            homeData.scaffoldKey.currentState!.closeDrawer();
          } else {
            await SystemNavigator.pop();
          }
          return false;
        },
        child: Scaffold(
          key: homeData.scaffoldKey,
          drawer: BuildMenu(
            homeData: homeData,
            globalContext: context,
            listData: homeData.list,
          ),
          backgroundColor: GeneralColor.wGrey,
          body: Column(
            children: [
              BuildHomeHeader(
                homeData: homeData,
              ),
              Expanded(
                child: Container(
                    decoration: BoxDecoration(
                        color: GeneralColor.white,
                        borderRadius: BorderRadius.circular(10)),
                    margin: const EdgeInsets.only(top: 2),
                    padding: const EdgeInsets.all(20),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          BuildHomeImage(
                            homeData: homeData,
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          BuildServices(
                            homeData: homeData,
                          ),
                        ],
                      ),
                    )),
              ),
            ],
          ),
        ));
  }
}
