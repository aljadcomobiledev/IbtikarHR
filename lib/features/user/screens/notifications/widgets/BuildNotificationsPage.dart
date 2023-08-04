part of 'NotificationsWidgetsImports.dart';

class BuildNotificationsPage extends StatelessWidget {

  final NotificationsData notificationData ;

  const BuildNotificationsPage({super.key, required this.notificationData});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(right: 30, left: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        const SizedBox(height: 60,)  ,
          Image.asset(
            "assets/images/notifications_img.png",
            width: 167,
            fit: BoxFit.fill,
            height: 140,
          ),
          const SizedBox(height: 120,)  ,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BuildSalaryItem(
                title: "أخبار",
                img: "assets/images/news.png",
                fun: () {
                  notificationData.moveToNews(context);
                },
              ),
              Container(
                color: GeneralColor.secondColor,
                height: 70,
                margin:
                    const EdgeInsets.symmetric(vertical: 10 ,horizontal: 5),
                width: 2,
              ),
              BuildSalaryItem(
                title: "عروض",
                img: "assets/images/offers.png",
                fun: () {
                  notificationData.moveToOffers(context);

                },
              )
            ],
          ),
          const SizedBox(height: 45,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              BuildSalaryItem(
                title: "رحلات",
                img: "assets/images/trips.png",
                fun: () {
                  notificationData.moveToTrips(context);

                },
              )
            ],
          ),
          const SizedBox(height: 25,)  ,

        ],

      ),
    );
  }
}
