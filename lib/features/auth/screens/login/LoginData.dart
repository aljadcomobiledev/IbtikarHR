part of 'LoginImports.dart';

class LoginData {
  final GlobalKey<FormState> keyForm = GlobalKey();
  final GenericBloc<bool> showPassword = GenericBloc(false);
  final GenericBloc<List<BranchResponse>> branchesCubit = GenericBloc([]);
  BranchResponse? selectedValue;

  TextEditingController userNameText = TextEditingController();
  TextEditingController passText = TextEditingController();

  void getBranches(BuildContext context) async {
    List<BranchResponse>? branches = await AuthRepository(context).branches();
    branchesCubit.onUpdateData(branches ?? []);
  }

  void login(BuildContext context) async {
    ToastContext().init(context);
    if (selectedValue == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('يرجي اختيار فرع')),
      );
    } else {
      if (userNameText.text.isNotEmpty && passText.text.isNotEmpty) {
        LoadingDialog.showLoadingDialog();
        LoginBody loginBody = LoginBody(
            userName: userNameText.text,
            password: passText.text,
            branchId: selectedValue!.branchId!,
            companyId: 1,
            rememberMe: true);
        LoginResponse loginResponse =
            await AuthRepository(context).login(loginBody);

        if (loginResponse.isSuccess != true) {
          Toast.show(loginResponse.message.toString(),
              duration: Toast.lengthLong, gravity: Toast.bottom);
        } else {
          if (context.mounted) {
            context.read<AuthCubit>().onUpdateAuth(true);

            context.read<UserCubit>().onUpdateUserData(loginResponse);

            GlobalState.instance.set("token", loginResponse.obj?.accessToken);
            SharedData.saveUserData(loginResponse);
            // AutoRouter.of(context).push(const Home());

            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MainHome()));
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
}
