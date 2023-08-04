part of 'WhoWeAreWidgetsImports.dart';

class BuildWhoWeArePage extends StatelessWidget {
  final WhoWeAreData whoWeAreData;

  const BuildWhoWeArePage({super.key, required this.whoWeAreData});

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
            "assets/images/whoweareimg.png",
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
                title: "أعضاء مجلس الإدارة",
                img: "assets/images/company_members.png",
                fun: () {
                  whoWeAreData.moveToMembers(context);

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
                title: "كلمة رئيس مجلس الإدارة",
                img: "assets/images/manager_word.png",
                fun: () {
                  whoWeAreData.moveToCEOSpeech(context);
                },
              )
            ],
          ),
          const SizedBox(height: 25,)  ,

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              BuildSalaryItem(
                title: "التاريخ",
                img: "assets/images/history.png",
                fun: () {
                  whoWeAreData.moveToHistory(context);

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
                title: "معلومات عنا",
                img: "assets/images/about_us"
                    ".png",
                fun: () {
                  whoWeAreData.moveToAboutUs(context);

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
