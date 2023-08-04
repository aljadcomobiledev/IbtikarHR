part of 'LoginImports.dart';

class LoginData {
  final GlobalKey<FormState> keyForm = GlobalKey();
  final GenericBloc<bool> showPassword = GenericBloc(false);

  TextEditingController numberText = TextEditingController();
  TextEditingController passText = TextEditingController();

  void login(BuildContext context) async {

    ToastContext().init(context);

    if (numberText.text.isNotEmpty && passText.text.isNotEmpty) {
      LoadingDialog.showLoadingDialog();
      LoginBody loginBody =
          LoginBody(password: passText.text, username: numberText.text);
      LoginResponse loginResponse =
          await AuthRepository(context).login(loginBody);

      if (loginResponse.response?.code != 200) {
        Toast.show(loginResponse.response!.message.toString(),
            duration: Toast.lengthLong,
            gravity: Toast.bottom
        );

      } else {
        if (context.mounted) {
          context.read<AuthCubit>().onUpdateAuth(true);

          context.read<UserCubit>().onUpdateUserData(loginResponse);

          GlobalState.instance.set("token", loginResponse.response?.token);
          SharedData.saveUserData(loginResponse);
          AutoRouter.of(context).push(const Home());
        }
      }
      EasyLoading.dismiss();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('يرجي ملئ جميع الحقول')),
      );
    }
  }
}
