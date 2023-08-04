part of 'GeneralServicesWidgetsImports.dart';

class BuildGeneralServicesPage extends StatelessWidget {

  final GeneralServicesData generalServicesData ;

  const BuildGeneralServicesPage({super.key, required this.generalServicesData});

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
            "assets/images/gs_img.png",
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
                title: "أسئلة متكررة",
                img: "assets/images/gs_quistions.png",
                fun: () {
                  generalServicesData.moveToQuestions(context);

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
                title: "دليل التواصل",
                img: "assets/images/gs_contactus.png",
                fun: () {
                  generalServicesData.moveToContactUS(context);
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
                title: "شكاوي عامة",
                img: "assets/images/gs_complains.png",
                fun: () {
                  generalServicesData.moveToComplaints(context);

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