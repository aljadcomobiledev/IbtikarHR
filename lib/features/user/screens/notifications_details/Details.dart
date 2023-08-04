part of 'DetailsImports.dart';

@RoutePage()
class Details extends StatefulWidget {
  final ItemDetailsResponse itemDetailsResponse;
  final String title;

  const Details({super.key, required this.itemDetailsResponse,required this.title});

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  DetailsData detailsData = DetailsData();

  @override
  void initState() {
    detailsData.setData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: GeneralColor.babyBlueBackground,
        body: Column(children: [
           BuildMainHeader(
            title: widget.title??"",
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
                  child: Column(
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
                          title: widget.itemDetailsResponse.title??"",
                          img_url: widget.itemDetailsResponse.attatchmentPath??"",
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.width,
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
                          description: widget.itemDetailsResponse.body??"",
                        )
                      ],
                    ),
                  ),
                ],
              )),
            ),
        ]));
  }
}
