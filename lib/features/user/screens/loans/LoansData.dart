part of 'LoansImports.dart';

class LoansData {
  GenericBloc<List<LoansModel>> loansCubit = GenericBloc([]);

  void getLoans(BuildContext context) async {
    List<LoansModel>? loans = await UserRepository(context).getLoans();
    loansCubit.onUpdateData(loans ?? []);
  }

  void removeLoan(BuildContext context, String loanId) async {
    LoadingDialog.showLoadingDialog();

    AddLoanResponse addLoanResponse =
        await UserRepository(context).removeLoan(loanId);

    if (addLoanResponse.isSuccess != true) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(addLoanResponse.message.toString()),backgroundColor: GeneralColor.appColor),
      );
      EasyLoading.dismiss();
    } else {
      if (context.mounted) {
        getLoans(context);
        ScaffoldMessenger.of(context).showSnackBar(
           SnackBar(content: Text(addLoanResponse.message.toString()),backgroundColor: GeneralColor.appColor),
        );
        EasyLoading.dismiss();
      }
    }
  }
}
