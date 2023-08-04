part of 'SignUpImports.dart';

class SignUpData {
  GlobalKey<FormState> keyForm = GlobalKey();
  final GenericBloc<bool> showPassword = GenericBloc(false);

  TextEditingController numberText = TextEditingController();
  TextEditingController firstNameText = TextEditingController();
  TextEditingController lastNameText = TextEditingController();
  TextEditingController birthDateText = TextEditingController();
  TextEditingController phoneNumberText = TextEditingController();
  TextEditingController cardNumberText = TextEditingController();
  TextEditingController passText = TextEditingController();
  TextEditingController jobTitle = TextEditingController();

  void signUp(BuildContext context) async {
    ToastContext().init(context);


    if (numberText.text.isEmpty ||
        firstNameText.text.isEmpty ||
        lastNameText.text.isEmpty ||
        birthDateText.text.isEmpty ||
        phoneNumberText.text.isEmpty ||
        cardNumberText.text.isEmpty ||
        jobTitle.text.isEmpty ||
        passText.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('يرجي ملئ جميع الحقول')),
      );
    } else if (!phoneNumberText.text.startsWith("01") ||
        phoneNumberText.text.length != 11) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("يرجي ادخال رقم هاتف صحيح")),
      );
    } else if (cardNumberText.text.length != 14) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("يرجي ادخال رقم قومي صحيح")),
      );
    } else if (passText.text.length < 6) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text( "يرجي ادخال كلمة مرور من 6 حروف أو أرقام")),
      );
    } else {
      LoadingDialog.showLoadingDialog();
      SignUpBody signUpBody = SignUpBody(
          username: numberText.text,
          firstName: firstNameText.text,
          lastName: lastNameText.text,
          mobileNumber: phoneNumberText.text,
          nationalId: cardNumberText.text,
          birthDate: birthDateText.text,
          jobTitle: jobTitle.text,
          email: "e@s.com",
          password: passText.text);
      SignUpResponse signUpResponse =
          await AuthRepository(context).signup(signUpBody);

      if (signUpResponse.response?.status == "Success") {

        Toast.show(signUpResponse.response!.message.toString(),
            duration: Toast.lengthLong,
            gravity: Toast.bottom
        );
        if (context.mounted) {
          AutoRouter.of(context).push(const Login());
        }
      } else {

        Toast.show(signUpResponse.response!.message.toString(),
            duration: Toast.lengthLong,
            gravity: Toast.bottom
        );
      }

      EasyLoading.dismiss();
    }
  }
  void moveToLogin(BuildContext context){
    AutoRouter.of(context).push(const Login());

  }

}
