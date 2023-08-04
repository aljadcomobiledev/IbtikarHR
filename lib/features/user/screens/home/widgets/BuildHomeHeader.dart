part of 'HomeWidgetsImports.dart';

class BuildHomeHeader extends StatelessWidget {
  final HomeData homeData;

  const BuildHomeHeader({super.key, required this.homeData});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: GeneralColor.white, borderRadius: BorderRadius.circular(10)),
      padding: const EdgeInsets.only(top: 50, bottom: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 35),
            alignment: Alignment.topRight,
            child:InkWell(child:  Image.asset(
              "assets/images/menu.png",
              width: 20,
              height: 20,
              alignment: Alignment.topRight,
            ),onTap: ()=>homeData.scaffoldKey.currentState!.openDrawer(),),
          ),
          Container(
            margin: const EdgeInsets.only(right: 40, left: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text(
                  homeData.userName,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Text(
                  homeData.userPosition,
                  style:TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: GeneralColor.appColor,
                )

                ) ],
            ),
          )
        ],
      ),
    );
  }
}
