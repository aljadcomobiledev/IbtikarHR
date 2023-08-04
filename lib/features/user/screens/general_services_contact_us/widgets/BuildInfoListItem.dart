part of 'ContactUsWidgetsImports.dart';

class BuildInfoListItem extends StatelessWidget {
  final Info item;

  const BuildInfoListItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Flexible(
            child: Text(
              item.value ?? "",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: GeneralColor.textColor2),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Visibility(
              visible: item.name == "Phone",
              child: Image.asset(
                "assets/images/phone_icon.png",
                width: 16,
                height: 15,
              )),
          Visibility(
              visible: item.name == "Email",
              child: Image.asset(
                "assets/images/email_icon.png",
                width: 16,
                height: 15,
              )),
        ],
      ),
    );
  }
}
