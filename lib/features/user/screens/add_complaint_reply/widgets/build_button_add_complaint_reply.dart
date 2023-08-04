part of 'AddComplaintReplyWidgetsImports.dart';

class BuildButtonAddComplaintReply extends StatelessWidget {
  final AddComplaintReplyData addComplaintReplyData;
  final num? complaintId;
  final String? title;
  final num? complaintType;

  const BuildButtonAddComplaintReply(
      {super.key,
      required this.addComplaintReplyData,
      required this.complaintId,
      required this.title,
      required this.complaintType});

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
            if (complaintType == 0) {
              addComplaintReplyData.addComplaintReply(
                  context, complaintId, title,complaintType);
            } else {
              addComplaintReplyData.addPublicComplaintReply(
                  context, complaintId,title,complaintType);
            }
          },
        ));
  }
}
