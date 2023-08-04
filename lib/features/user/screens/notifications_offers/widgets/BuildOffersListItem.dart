part of 'OffersWidgetsImports.dart';

class BuildOffersListItem extends StatelessWidget {
  final ItemDetailsResponse item;
  final int index;
  final OffersData offersData;

  const BuildOffersListItem(
      {super.key,
      required this.item,
      required this.index,
      required this.offersData});

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
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.network(
                      item.attatchmentPath ?? "",
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.fill,
                      height: 140,
                    ),
                  ),
                  Text(
                    item.title ?? "",
                    maxLines: 1,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,

                        color: GeneralColor.textColor2),
                  ),
                  Text(
                    item.body ?? "",
                    maxLines: 1,

                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: GeneralColor.textGreyColor),
                  ),
                ],
              )),
          onTap: () {
            offersData.moveToOfferDetails(context,item,"العرض");
          },
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
