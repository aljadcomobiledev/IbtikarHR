part of 'SalaryImports.dart';

@RoutePage()
class Salary extends StatefulWidget {
  @override
  _SalaryState createState() => _SalaryState();
}

class _SalaryState extends State<Salary> {
  SalaryData salariesData = SalaryData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GeneralColor.babyBlueBackground,
      body: Column(
        children: [
          const BuildMainHeader(
            title: "المرتبات",
          ),
          Expanded(
            child: SingleChildScrollView(
              child: BuildSalaryPage(salariesData: salariesData, ),
            ),
          ),
        ],
      ),
    );
  }
}
