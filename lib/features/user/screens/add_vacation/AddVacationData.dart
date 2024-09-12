part of 'AddVacationImports.dart';

class AddVacationData {
  TextEditingController startDateText = TextEditingController();
  TextEditingController vacationCountText = TextEditingController();
  TextEditingController endDateText = TextEditingController();
  TextEditingController notesText = TextEditingController();

  final GenericBloc<String> endDateCubit = GenericBloc("");
  final GenericBloc<bool> showVacCubit = GenericBloc(false);
  final GenericBloc<String> installmentValueCubit = GenericBloc("");
  final GenericBloc<List<Vac>> vacCubit = GenericBloc([]);
  Vac? selectedValue;

  void getVacs(BuildContext context) async {
    List<Vac>? vac = await UserRepository(context).getVacationTypes();
    vacCubit.onUpdateData(vac ?? []);
    showVacCubit.onUpdateData(true);
  }

  void addVacation(BuildContext context) async {
    if (startDateText.text.isNotEmpty && vacationCountText.text.isNotEmpty) {
      LoadingDialog.showLoadingDialog();

      LoginResponse? data = context.read<UserCubit>().state.model;
      String employeeID = data!.obj!.employeeId.toString();

      AddVacationBody vacationBody = AddVacationBody(
          employeeId: int.parse(employeeID),
          vacType: selectedValue!.id,
          notes: notesText.text,
          vacDuration: int.parse(vacationCountText.text),
          vacstartDate: startDateText.text,
          docSupport: "",
          empReplaceId: 0,
          status: 0,
          vacEndDate: endDateText.text);
      AddLoanResponse addLoanResponse =
          await UserRepository(context).addVacation(vacationBody);

      if (addLoanResponse.isSuccess != true) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(addLoanResponse.message.toString()),backgroundColor: GeneralColor.appColor),
        );
      } else {
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(addLoanResponse.message.toString()),backgroundColor: GeneralColor.appColor),
          );
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const MainHome()));
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
