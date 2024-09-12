part of 'LoansWidgetsImports.dart';

class BuildLoansItemView extends StatelessWidget {
  final LoansModel item;
  final LoansData loansData;

  const BuildLoansItemView(
      {Key? key, required this.item, required this.loansData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // DateFormat dateFormat = DateFormat("yyyy-MM-dd HH:mm:ss");
    // DateTime dateTime = dateFormat.parse(item.createdDate!);
    // String date = dateFormat.format(dateTime);

    return Container(
      margin: const EdgeInsets.all(5),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "#${item.id}",
                    style: TextStyle(color: GeneralColor.black, fontSize: 14),
                  ),
                  Text(
                    item.createdDate!,
                    style: TextStyle(color: GeneralColor.black, fontSize: 14),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "قيمة السلفة",
                    style: TextStyle(
                        color: GeneralColor.textGreyColor, fontSize: 14),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    item.totaloan.toString(),
                    style: TextStyle(color: GeneralColor.black, fontSize: 14),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "قيمة المديونات",
                    style: TextStyle(
                        color: GeneralColor.textGreyColor, fontSize: 14),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    item.debts.toString(),
                    style: TextStyle(color: GeneralColor.black, fontSize: 14),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "عدد الأقساط",
                    style: TextStyle(
                        color: GeneralColor.textGreyColor, fontSize: 14),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    item.installmentCount.toString(),
                    style: TextStyle(color: GeneralColor.black, fontSize: 14),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),        Row(
                children: [
                  Text(
                    "قيمة القسط",
                    style: TextStyle(
                        color: GeneralColor.textGreyColor, fontSize: 14),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    item.installmentValue.toString(),
                    style: TextStyle(color: GeneralColor.black, fontSize: 14),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "العملة",
                    style: TextStyle(
                        color: GeneralColor.textGreyColor, fontSize: 14),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "ريال",
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Spacer(),
                  InkWell(
                    child: const Icon(
                      Icons.delete_outline,
                      color: Colors.red,
                    ),
                    onTap: () {
                      loansData.removeLoan(context, item.id.toString());
                    },
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.edit_note_sharp,
                    color: GeneralColor.appColor,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
