part of 'AddComplaintReplyImports.dart';

@RoutePage()
class AddComplaintReply extends StatefulWidget {
  final num? id;
  final String? title;
  final num? complaintType;

  const AddComplaintReply(
      {super.key,
      required this.id,
      required this.title,
      required this.complaintType});

  @override
  _AddComplaintReplyState createState() => _AddComplaintReplyState();
}

class _AddComplaintReplyState extends State<AddComplaintReply> {
  AddComplaintReplyData addComplaintReplyData = AddComplaintReplyData();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      backgroundColor: GeneralColor.babyBlueBackground,
      body: Column(
        children: [
          BuildMainHeader(
            title: widget.title ?? "",
          ),
          BuildFormAddComplaintReply(
              addComplaintReplyData: addComplaintReplyData),
          const Spacer(),
          BuildButtonAddComplaintReply(
              addComplaintReplyData: addComplaintReplyData,
              title: widget.title,
              complaintId: widget.id,
              complaintType: widget.complaintType),
        ],
      ),
    );
  }
}
