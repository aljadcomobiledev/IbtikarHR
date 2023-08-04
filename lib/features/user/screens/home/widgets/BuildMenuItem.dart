part of 'HomeWidgetsImports.dart';

class BuildMenuItem extends StatelessWidget {
  final String title;
  final int index;
  final HomeData homeData;
  final BuildContext globalContext;

  const BuildMenuItem(
      {super.key, required this.title, required this.index, required this.homeData,required this.globalContext});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: GeneralColor.babyBlueBackground,
                borderRadius: BorderRadius.circular(10),
              ),
              height: 50,
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.black),
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              homeData.moveToPage(globalContext, index);
            }

        ), 
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }


}
