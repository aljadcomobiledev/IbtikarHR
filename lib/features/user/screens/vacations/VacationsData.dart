part of 'VacationsImports.dart';

class VacationsData {
  GenericBloc<List<VacationRequests>> vacationsCubit = GenericBloc([]);

  void getVacations(BuildContext context) async {
    List<VacationRequests>? vacations = await UserRepository(context).getVacations();
    vacationsCubit.onUpdateData(vacations ?? []);
  }

  void removeVacation(BuildContext context, String vacationId) async {
    LoadingDialog.showLoadingDialog();

    AddLoanResponse addLoanResponse =
        await UserRepository(context).removeVacation(vacationId);

    if (addLoanResponse.isSuccess != true) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(addLoanResponse.message.toString()),backgroundColor: GeneralColor.appColor),
      );
    } else {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(addLoanResponse.message.toString()),backgroundColor: GeneralColor.appColor),
        );
    getVacations(context);
      }
    }
    EasyLoading.dismiss();
  }
}
