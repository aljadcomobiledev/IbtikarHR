part of 'CEOSpeechImports.dart';

class CEOSpeechData {


  GenericBloc<HistoryResponse?> ceoSpeechCubit = GenericBloc(null);

  void fetchCEOSpeech(BuildContext context) async {
    HistoryResponse? historyResponse =
    await UserRepository(context).getCEOSpeech();
    ceoSpeechCubit.onUpdateData(historyResponse);
  }


}
