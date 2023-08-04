part of 'SalaryWidgetsImports.dart';

class BuildSalaryItem extends StatelessWidget {
  final String title;
  final String img;
  final Function() fun;

  const BuildSalaryItem(
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
              width: 46,
              height: 50,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: GeneralColor.textColor2,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
     ),
    );
  }
}
