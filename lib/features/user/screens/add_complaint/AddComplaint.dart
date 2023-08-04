part of 'AddComplaintImports.dart';

@RoutePage()
class AddComplaint extends StatefulWidget {
  final num? id;
  final String? title;

  const AddComplaint({super.key, required this.id, required this.title});

  @override
  _AddComplaintState createState() => _AddComplaintState();
}

class _AddComplaintState extends State<AddComplaint> {
  AddComplaintData addComplaintData = AddComplaintData();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: GeneralColor.babyBlueBackground,
      body: Column(
        children: [
          BuildMainHeader(
            title: widget.title ?? "",
          ),
          BuildFormAddComplaint(addComplaintData: addComplaintData),
          const Spacer(),
          BuildButtonAddComplaint(addComplaintData: addComplaintData, complainType: widget.id),
        ],
      ),
    );
  }
}
