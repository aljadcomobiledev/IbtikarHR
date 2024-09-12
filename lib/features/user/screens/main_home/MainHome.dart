part of 'MainHomeImports.dart';

class MainHome extends StatefulWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  MainHomeData mainHomeData = MainHomeData();

  @override
  void initState() {
    mainHomeData.setData(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: mainHomeData.scaffoldKey,
      drawer: BuildMenu(
        homeData: mainHomeData,
        globalContext: context,
        listData: mainHomeData.list,
      ),
      backgroundColor: GeneralColor.babyBlueBackground,
      body: Column(
        children: [
          BuildHeaderView(
            mainHomeData: mainHomeData,
          ),
          Expanded(
            child: BuildListHome(mainHomeData: mainHomeData),
          )
        ],
      ),
    );
  }
}
