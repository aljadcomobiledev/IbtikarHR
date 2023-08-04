part of 'SalarySystemDetailsImports.dart';

class SalarySystemDetailsData {
  GenericBloc<List<SalaryDetailsData>?> salaryDetailsCubit = GenericBloc(null);

  void fetchSalarySystemDetails(BuildContext context, num? salaryId) async {
    List<SalaryDetailsData>? salarySystemDetailsList =
        await UserRepository(context).getSalarySystemDetails(salaryId);
    salaryDetailsCubit.onUpdateData(salarySystemDetailsList);
  }

  double getTotal(List<SalaryDetailsData>? list) {
    double total = 0;
    for(int i=0; i<list!.length ; i++){
      total = total + int.parse(list[i].value!).toDouble();
    }
    return total;
  }
}
