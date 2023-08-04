part of 'SalaryWidgetsImports.dart';

class BuildSalaryPage extends StatelessWidget {
  final SalaryData salariesData;

  const BuildSalaryPage({super.key, required this.salariesData});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(right: 30, left: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        const SizedBox(height: 80,)  ,
          Image.asset(
            "assets/images/mymoney.png",
            width: 167,
            fit: BoxFit.fill,
            height: 140,
          ),
          const SizedBox(height: 140,)  ,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BuildSalaryItem(
                title: "نظام المرتبات",
                img: "assets/images/salarysystem.png",
                fun: () {
                  salariesData.moveToSalarySystem(context);

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
                title: "كشف الراتب",
                img: "assets/images/salaryrevealed.png",
                fun: () {
                  salariesData.moveToSalaryStatement(context);

                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
