part of 'AddComplaintReplyWidgetsImports.dart';

class BuildFormAddComplaintReply extends StatelessWidget {
  final AddComplaintReplyData addComplaintReplyData;

  const BuildFormAddComplaintReply({super.key, required this.addComplaintReplyData});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: addComplaintReplyData.keyForm,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                  decoration: BoxDecoration(
                      color: GeneralColor.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    controller: addComplaintReplyData.titleText,
                    decoration: const InputDecoration(
                      hintText: "العنوان",
                      border: InputBorder.none,
                    ),
                    keyboardType: TextInputType.text,
                    style: TextStyle(
                        color: GeneralColor.textColor2,
                        fontWeight: FontWeight.normal,
                        fontSize: 16),
                    cursorColor: GeneralColor.textColor2,
                  ),

                )),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                  decoration: BoxDecoration(
                      color: GeneralColor.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    maxLines: 6,
                    controller: addComplaintReplyData.subjectText,
                    decoration: const InputDecoration(
                      hintText: "الموضوع",
                      border: InputBorder.none,
                    ),
                    keyboardType: TextInputType.text,
                    style: TextStyle(
                        color: GeneralColor.textColor2,
                        fontWeight: FontWeight.normal,
                        fontSize: 16),
                    cursorColor: GeneralColor.textColor2,

                  ),
                )),
          ],
        ),
      ),
    );
  }
}
