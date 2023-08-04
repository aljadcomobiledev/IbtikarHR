part of 'AddComplaintWidgetsImports.dart';

class BuildButtonAddComplaint extends StatelessWidget {
  final AddComplaintData addComplaintData;
  final num? complainType;

  const BuildButtonAddComplaint(
      {super.key, required this.addComplaintData, required this.complainType});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16.0),
        child: InkWell(
          child: Container(
            height: 50,
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: GeneralColor.appColor,
                borderRadius: BorderRadius.circular(10)),
            child: Text(
              "ارسال",
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: GeneralColor.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          onTap: () {
            if (complainType == 0) {
              addComplaintData.addMedicalComplaint(context);
            } else {
              addComplaintData.addPublicComplaint(context);
            }
          },
        ));
  }
}
