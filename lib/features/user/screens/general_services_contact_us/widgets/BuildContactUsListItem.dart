part of 'ContactUsWidgetsImports.dart';

class BuildContactUsListItem extends StatelessWidget {
  final ContactUsItem item;
  final int index;

  const BuildContactUsListItem(
      {super.key,
      required this.item,
      required this.index,
     });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          child: Container(
              alignment: AlignmentDirectional.centerStart,
              margin: const EdgeInsets.symmetric(horizontal: 15),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: GeneralColor.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                      flex: 1,
                      child: Text(
                        item.title??"",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: GeneralColor.appColor),
                      )),
                  Expanded(
                      flex: 2,
                      child:

                      ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: item.info!.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          return BuildInfoListItem(
                            item: item.info![index],
                          );
                        },
                      ),


                      )
                ],
              )),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
// Row(
// mainAxisSize: MainAxisSize.max,
// crossAxisAlignment: CrossAxisAlignment.center,
// textDirection: TextDirection.ltr,
// children: [
// Image.asset(
// "assets/images/phone_icon.png",
// width: 16,
// height: 15,
// ),
// const SizedBox(
// width: 7,
// ),
// Flexible(
// child: Text(
// contactUsModel.date,
// textDirection: TextDirection.ltr,
// style: TextStyle(
// fontWeight: FontWeight.bold,
// fontSize: 14,
// color: GeneralColor.textColor2),
// ),
// )
// ],
// ),