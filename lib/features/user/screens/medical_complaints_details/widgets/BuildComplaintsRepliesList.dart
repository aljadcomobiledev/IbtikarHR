part of 'ComplaintDetailsWidgetsImports.dart';

class BuildComplaintsRepliesList extends StatelessWidget {
  final ComplaintsDetailsData complaintDetailsData;

  final MedicalComplaintResponses medicalComplaintResponses;

  const BuildComplaintsRepliesList(
      {super.key,
      required this.complaintDetailsData,
      required this.medicalComplaintResponses});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            alignment: AlignmentDirectional.centerStart,
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color:medicalComplaintResponses.byAdmin!?   GeneralColor.msgColor:GeneralColor.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  medicalComplaintResponses.title ?? "",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: GeneralColor.textColor),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  medicalComplaintResponses.body ?? "",
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                      color: GeneralColor.textColor),
                ),
              ],
            )),

      ],
    );
  }
}
