part of 'GeneralServicesImports.dart';

@RoutePage()
class GeneralServices extends StatefulWidget {
  @override
  _GeneralServicesState createState() => _GeneralServicesState();
}

class _GeneralServicesState extends State<GeneralServices> {
  GeneralServicesData generalServicesData = GeneralServicesData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GeneralColor.babyBlueBackground,
      body: Column(
        children: [
          const BuildMainHeader(
            title: "خدمات عامة",
          ),
          Expanded(
            child: SingleChildScrollView(
            child: BuildGeneralServicesPage(generalServicesData: generalServicesData ,)
            ),
          ),
        ],
      ),
    );
  }
}
