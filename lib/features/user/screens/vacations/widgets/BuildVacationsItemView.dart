part of 'VacationsWidgetsImports.dart';

class BuildVacationsItemView extends StatelessWidget {
  final VacationRequests item;
  final VacationsData vacationsData;

  const BuildVacationsItemView(
      {Key? key, required this.item, required this.vacationsData})
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
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Text(
              //       "#${item.id}",
              //       style: TextStyle(color: GeneralColor.black, fontSize: 14),
              //     ),
              //     Text(
              //       item.createdDate!,
              //       style: TextStyle(color: GeneralColor.black, fontSize: 14),
              //     ),
              //   ],
              // ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "من تاريخ",
                    style: TextStyle(
                        color: GeneralColor.textGreyColor, fontSize: 14),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    item.vacstartDate.toString(),
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
                    "إلي تاريخ",
                    style: TextStyle(
                        color: GeneralColor.textGreyColor, fontSize: 14),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    item.vacstartDate.toString(),
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
                    "نوع الأجازة",
                    style: TextStyle(
                        color: GeneralColor.textGreyColor, fontSize: 14),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "أجازة مرضي",
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 14),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "عدد الأيام",
                    style: TextStyle(
                        color: GeneralColor.textGreyColor, fontSize: 14),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    item.vacDuration.toString(),
                    style: const TextStyle(
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
                      vacationsData.removeVacation(context, item.id.toString());
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
