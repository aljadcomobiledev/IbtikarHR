part of 'HomeWidgetsImports.dart';

class BuildItemService extends StatelessWidget {
  final String title;
  final String img;
  final Function() fun;

  const BuildItemService(
      {super.key, required this.title, required this.img, required this.fun});

  @override
  Widget build(BuildContext context) {
    return Expanded(
     child: InkWell(
        onTap: fun,

        child: Column(
          children: [
            Image.asset(
              img,
              width: 30,
              height: 30,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: GeneralColor.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
     ),
    );
  }
}
