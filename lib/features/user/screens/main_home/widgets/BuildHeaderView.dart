part of 'MainHomeWidgetsImports.dart';

class BuildHeaderView extends StatelessWidget {
  final MainHomeData mainHomeData;

  const BuildHeaderView({Key? key, required this.mainHomeData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(top: 50, bottom: 15, right: 15, left: 15),
      decoration: BoxDecoration(
        color: GeneralColor.white,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "assets/images/user.png",
                width: 40,
                height: 40,
              ),
              InkWell(
                child: Image.asset(
                  "assets/images/menu2.png",
                  width: 25,
                  height: 25,
                ),
                onTap: () =>
                    mainHomeData.scaffoldKey.currentState!.openDrawer(),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                "مرحبآ , ",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: GeneralColor.greyBack,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                mainHomeData.userName,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: GeneralColor.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    );
  }
}
