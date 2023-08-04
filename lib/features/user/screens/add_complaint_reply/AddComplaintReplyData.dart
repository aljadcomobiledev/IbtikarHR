part of 'AddComplaintReplyImports.dart';

class AddComplaintReplyData {
  GlobalKey<FormState> keyForm = GlobalKey();

  TextEditingController titleText = TextEditingController();
  TextEditingController subjectText = TextEditingController();
  GenericBloc<String> attachmentCubit = GenericBloc("ارفاق الملف");

  String attachmentPath = "";
  String attachmentExtention = "";

  void addComplaintReply(BuildContext context, num? complainId, String? title, num? complaintType) async {
    ToastContext().init(context);

    if (titleText.text.isNotEmpty && subjectText.text.isNotEmpty) {
      LoadingDialog.showLoadingDialog();

      AddComplaintReplyBody addComplaintReplyBody = AddComplaintReplyBody(
          title: titleText.text,
          body: subjectText.text,
          complaintId: complainId);
      AddComplaintResponse addComplaintResponse = await UserRepository(context)
          .addMedicalComplaintReply(addComplaintReplyBody, "medical");

      if (addComplaintResponse.response!.code == "200") {
        Toast.show("تم اضافة الرد",
            duration: Toast.lengthLong,
            gravity: Toast.bottom
        );
        AutoRouter.of(context).push( ComplaintsDetails(id: complainId, title: title, complaintType: complaintType));

      } else {


        Toast.show(addComplaintResponse.response!.message.toString(),
            duration: Toast.lengthLong,
            gravity: Toast.bottom
        );
      }
      EasyLoading.dismiss();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('يرجي إضافة عنوان وموضوع الشكوي')),
      );
    }
  }
  void addPublicComplaintReply(BuildContext context, num? complainId,String? title, num? complaintType) async {
    ToastContext().init(context);

    if (titleText.text.isNotEmpty && subjectText.text.isNotEmpty) {
      LoadingDialog.showLoadingDialog();

      AddComplaintReplyBody addComplaintReplyBody = AddComplaintReplyBody(
          title: titleText.text,
          body: subjectText.text,
          complaintId: complainId);
      AddComplaintResponse addComplaintResponse = await UserRepository(context)
          .addPublicComplaintReply(addComplaintReplyBody, "medical");

      if (addComplaintResponse.response!.code == "200") {

        Toast.show("تم اضافة الرد",
            duration: Toast.lengthLong,
            gravity: Toast.bottom
        );
        AutoRouter.of(context).push( ComplaintsDetails(id: complainId, title: title, complaintType: complaintType));


      } else {

        Toast.show(addComplaintResponse.response!.message.toString(),
            duration: Toast.lengthLong,
            gravity: Toast.bottom
        );
      }
      EasyLoading.dismiss();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('يرجي إضافة عنوان وموضوع الشكوي')),
      );
    }
  }

  String getBase64() {
    String imgPath = attachmentPath;
    File imgFile = File(imgPath);
    Uint8List imgBytes = imgFile.readAsBytesSync();
    String bs4str = base64.encode(imgBytes);

    return bs4str;
  }
}
