part of 'HomeWidgetsImports.dart';

class BuildHomeImage extends StatelessWidget {
  final HomeData homeData;

  const BuildHomeImage({super.key, required this.homeData});

  @override
  Widget build(BuildContext context) {
    return
      ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Image.asset(
        "assets/images/splashbackground2.png",
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.fill,
        height: 260,
      ),
    );
  }
}
