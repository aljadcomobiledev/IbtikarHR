part of 'MainHomeWidgetsImports.dart';

class BuildMenuItem extends StatelessWidget {
  final String title;
  final int index;
  final MainHomeData homeData;
  final BuildContext globalContext;

  const BuildMenuItem(
      {super.key, required this.title, required this.index, required this.homeData,required this.globalContext});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: GeneralColor.appColor,
                borderRadius: BorderRadius.circular(10),
              ),
              height: 50,
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.white),
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              homeData.moveToPage(globalContext, title);
            }

        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }


}
