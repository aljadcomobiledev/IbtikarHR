part of 'MainHomeWidgetsImports.dart';

class BuildListHome extends StatelessWidget {
  final MainHomeData mainHomeData;

  const BuildListHome({Key? key, required this.mainHomeData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/layer1.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.2,
        ),
        itemBuilder: (_, index) => buildItem(mainHomeData.list[index],context),
        itemCount: mainHomeData.list.length - 1,
      ),
    );
  }

  buildItem(HomeModel model,BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: InkWell(
          child: Container(
            alignment: AlignmentDirectional.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  model.img,
                  width: 45,
                  color: GeneralColor.appColor,
                  height: 45,
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  model.title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: GeneralColor.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          onTap: ()=>mainHomeData.moveToPage(context, model.title),
        ),
      ),
    );
  }
}
