part of 'FAQWidgetsImports.dart';

class BuildFAQListItem extends StatelessWidget {
  final FAQDetails item;
  final int index;
  final FAQData faqData;

  const BuildFAQListItem(
      {super.key,
      required this.item,
      required this.index,
      required this.faqData});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        item.title??"",
        style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: GeneralColor.textColor),
      ),
      children: [
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            item.body??"",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: GeneralColor.textColor),
          ),
        ),
      ],
    );
  }
}
