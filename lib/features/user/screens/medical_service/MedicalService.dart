part of 'MedicalServiceImports.dart';

@RoutePage()
class MedicalService extends StatefulWidget {
  @override
  _MedicalServiceState createState() => _MedicalServiceState();
}

class _MedicalServiceState extends State<MedicalService> {
  MedicalServiceData medicalServiceData = MedicalServiceData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GeneralColor.babyBlueBackground,
      body: Column(
        children: [
          const BuildMainHeader(
            title: "الخدمات الطبية",
          ),
          Expanded(
            child: SingleChildScrollView(
              child: BuildMedicalServicePage(medicalServiceData: medicalServiceData),
            ),
          ),
        ],
      ),
    );
  }
}
