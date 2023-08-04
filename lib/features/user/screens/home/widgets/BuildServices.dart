part of 'HomeWidgetsImports.dart';

class BuildServices extends StatelessWidget {
  final HomeData homeData;

  const BuildServices({super.key, required this.homeData});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(right: 30, left: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisSize: MainAxisSize.max,
            children: [
              BuildItemService(
                  title: "مرتبات",
                  img: "assets/images/money.png",
                  fun: () {
                    homeData.moveToPage(context,0);
                  }),
              Container(
                color: GeneralColor.secondColor,
                height: 35,
                margin:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                width: 2,
              ),
              BuildItemService(
                  title: "اخطارات",
                  img: "assets/images/document.png",
                  fun: () {

                    homeData.moveToPage(context, 1);

                  }),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                color: GeneralColor.secondColor,
                height: 35,
                width: 2,
              ),
              BuildItemService(
                  title: "نظام المراسلات",
                  img: "assets/images/laptop.png",
                  fun: () {
                    homeData.moveToPage(context, 2);


                  }),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisSize: MainAxisSize.max,
            children: [
              BuildItemService(
                  title: "نظام ادارة الحالات",
                  img: "assets/images/caseportal.png",
                  fun: () {
                    homeData.moveToPage(context, 3);

                  }),
              Container(
                color: GeneralColor.secondColor,
                height: 35,
                margin:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                width: 2,
              ),
              BuildItemService(
                  title: "خدمات طبية",
                  img: "assets/images/medicalservices.png",
                  fun: () {
                    homeData.moveToPage(context,4);

                  }),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                color: GeneralColor.secondColor,
                height: 35,
                width: 2,
              ),
              BuildItemService(
                  title: "اشعارات اجتماعية",
                  img: "assets/images/notification.png",
                  fun: () {
                    homeData.moveToPage(context, 5);

                  }),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: InkWell(
                  onTap: () {
                    homeData.moveToPage(context, 6);

                  },
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/whoweare.png",
                        width: 30,
                        height: 30,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "من نحن",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: GeneralColor.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: GeneralColor.secondColor,
                height: 35,
                margin:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                width: 2,
              ),
              Flexible(
                child: InkWell(
                  onTap: () {
                    homeData.moveToPage(context, 7);

                  },
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/generalservices.png",
                        width: 30,
                        height: 30,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "خدمات عامة",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: GeneralColor.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
