part of 'CEOSpeechImports.dart';

@RoutePage()
class CEOSpeech extends StatefulWidget {
  @override
  _CEOSpeechState createState() => _CEOSpeechState();
}

class _CEOSpeechState extends State<CEOSpeech> {
  DetailsData detailsData = DetailsData();
  CEOSpeechData ceoSpeechData = CEOSpeechData();

  @override
  void initState() {
    ceoSpeechData.fetchCEOSpeech(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: GeneralColor.babyBlueBackground,
        body: Column(children: [
          const BuildMainHeader(
            title: "كلمة رئيس مجلس الإدارة",
          ),
          Expanded(
            child: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: BlocBuilder<GenericBloc<HistoryResponse?>,
                GenericState<HistoryResponse?>>(
              bloc: ceoSpeechData.ceoSpeechCubit,
              builder: (context, state) {
                if (state is GenericUpdateState) {
                  return Column(
                    children: [

                      Container(

                        decoration: BoxDecoration(
                            color: GeneralColor.white,
                            borderRadius: BorderRadius.circular(10)),
                        margin: const EdgeInsets.only(
                            left: 15, right: 15, bottom: 10, top: 0),
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            BuildDetailsImage(
                              title: state.data!.response!.title!,
                              img_url: state.data!.response!.attatchmentPath!,
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(
                        height: 5,
                      ),

                      Container(
                        width: MediaQuery.of(context).size.width,
                        height:MediaQuery.of(context).size.width,

                        decoration: BoxDecoration(
                            color: GeneralColor.white,
                            borderRadius: BorderRadius.circular(10)),
                        margin: const EdgeInsets.only(
                            left: 15, right: 15, bottom: 10, top: 0),
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BuildDetailsDescription(
                              description: state.data!.response!.body!,
                            )
                          ],
                        ),
                      ),

                    ],
                  );
                } else {
                  return Container(
                    margin: const EdgeInsets.only(top: 80),
                    child: LoadingDialog.showLoadingView(),
                  );
                }
              },
            ),
          ),
    ),
        ]));
  }
}
