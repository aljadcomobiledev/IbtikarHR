part of 'AddComplaintImports.dart';

class AddComplaintData {
  GlobalKey<FormState> keyForm = GlobalKey();

  TextEditingController titleText = TextEditingController();
  TextEditingController subjectText = TextEditingController();
  GenericBloc<String> attachmentCubit = GenericBloc("ارفاق الملف");

  String attachmentPath = "";
  String attachmentExtention = "";

  void addMedicalComplaint(BuildContext context) async {
    ToastContext().init(context);

    if (titleText.text.isNotEmpty && subjectText.text.isNotEmpty) {
      LoadingDialog.showLoadingDialog();
      String base64 = "";
      if (attachmentPath.isNotEmpty) {
        base64 = "data:@file/$attachmentExtention;base64,${getBase64()}";
      }

      AddComplaintBody addComplaintBody = AddComplaintBody(
          title: titleText.text,
          body: subjectText.text,
          attatchmentBase64: base64);
      AddComplaintResponse addComplaintResponse = await UserRepository(context)
          .addMedicalComplaint(addComplaintBody, "medical");

      if (addComplaintResponse.response!.code == "200") {
        Toast.show("تمت إضافة الشكوي",
            duration: Toast.lengthLong,
            gravity: Toast.bottom
        );
        AutoRouter.of(context).push(
            const MedicalComplaints());

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

  void addPublicComplaint(BuildContext context) async {
    ToastContext().init(context);

    if (titleText.text.isNotEmpty && subjectText.text.isNotEmpty) {
      LoadingDialog.showLoadingDialog();
      String base64 = "";
      if (attachmentPath.isNotEmpty) {
        base64 = "data:@file/$attachmentExtention;base64,${getBase64()}";
      }

      AddComplaintBody addComplaintBody = AddComplaintBody(
          title: titleText.text,
          body: subjectText.text,
          attatchmentBase64: base64);
      AddComplaintResponse addComplaintResponse = await UserRepository(context)
          .addPublicComplaint(addComplaintBody, "public");

      if (addComplaintResponse.response!.code == "200") {

        Toast.show("تمت إضافة الشكوي",
            duration: Toast.lengthLong,
            gravity: Toast.bottom
        );

        AutoRouter.of(context).push(
            const PublicComplaints());
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
