part of 'HistoryImports.dart';

class HistoryData {

  GenericBloc<HistoryResponse?> historyCubit = GenericBloc(null);

  void fetchHistory(BuildContext context) async {
    HistoryResponse? historyResponse =
    await UserRepository(context).getHistory();
    historyCubit.onUpdateData(historyResponse);
  }

}
