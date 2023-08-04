part of 'HomeWidgetsImports.dart';

class BuildMenu extends StatelessWidget {
  List<String> listData;
  HomeData homeData;
  BuildContext globalContext;

  BuildMenu({super.key, required this.listData, required this.homeData,required this.globalContext});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width - 100,
        height: MediaQuery.of(context).size.height,
        color: GeneralColor.white,
        padding: const EdgeInsets.only(top: 60),
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                    "assets/images/splashicon.png",
                    width: 95,
                    height: 95,
                  ),
               Text(
              homeData.userName,
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text(
              homeData.userPosition,
                style:  TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: GeneralColor.appColor),
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return BuildMenuItem(title: listData[index],index: index,homeData: homeData,globalContext: globalContext,);
                },
                itemCount: listData.length,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
              ),
            ],
          ),
        ));
  }
}
