part of 'AddLoanImports.dart';

class AddLoanData {
  TextEditingController loanAmountText = TextEditingController();
  TextEditingController startDateText = TextEditingController();
  TextEditingController installmentCountText = TextEditingController();
  TextEditingController installmentValueText = TextEditingController();
  TextEditingController endDateText = TextEditingController();
  TextEditingController notesText = TextEditingController();

  final GenericBloc<String> endDateCubit = GenericBloc("");
  final GenericBloc<String> installmentValueCubit = GenericBloc("");

  void addLoan(BuildContext context) async {
    if (loanAmountText.text.isNotEmpty &&
        startDateText.text.isNotEmpty &&
        installmentCountText.text.isNotEmpty) {
      LoadingDialog.showLoadingDialog();

      LoginResponse? data = context.read<UserCubit>().state.model;
      String employeeID = data!.obj!.employeeId.toString();

      AddLoanBody loanBody = AddLoanBody(
          branchId: 1,
          debtId: 1,
          debts: 0,
          employeeId: int.parse(employeeID),
          jobId: 1,
          lastInstallmentValue: 300,
          notes: notesText.text,
          installmentCount: installmentCountText.text,
          startInstallment: startDateText.text,
          totaloan: loanAmountText.text,
          endInstallment: endDateText.text,
          installmentValue: double.parse(installmentValueText.text));
      AddLoanResponse addLoanResponse =
          await UserRepository(context).addLoan(loanBody);

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
