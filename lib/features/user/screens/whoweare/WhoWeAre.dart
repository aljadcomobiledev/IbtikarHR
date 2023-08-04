part of 'WhoWeAreImports.dart';

@RoutePage()
class WhoWeAre extends StatefulWidget {
  @override
  _WhoWeAreState createState() => _WhoWeAreState();
}

class _WhoWeAreState extends State<WhoWeAre> {
  WhoWeAreData whoWeAreData = WhoWeAreData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GeneralColor.babyBlueBackground,
      body: Column(
        children: [
          const BuildMainHeader(
            title: "من نحن",
          ),
          Expanded(
            child: SingleChildScrollView(
            child: BuildWhoWeArePage(whoWeAreData: whoWeAreData)
            ),
          ),
        ],
      ),
    );
  }
}
