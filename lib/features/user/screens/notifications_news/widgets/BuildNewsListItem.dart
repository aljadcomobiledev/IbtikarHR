part of 'NewsWidgetsImports.dart';

class BuildNewsListItem extends StatelessWidget {
  final ItemDetailsResponse item;
  final int index;
  final NewsData newsData;

  const BuildNewsListItem(
      {super.key,
      required this.item,
      required this.index,
      required this.newsData});

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
              child:
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.network(
                      item.attatchmentPath??"",
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
                    item.body ??"",
                    maxLines: 1,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: GeneralColor.textGreyColor),
                  ),
                ],
              )),
          onTap: () {
            newsData.moveToNewsDetails(context,item,"الخبر");
          },
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
