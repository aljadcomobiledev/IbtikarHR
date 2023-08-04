part of 'SalarySystemWidgetsImports.dart';

class BuildSalarySystemListItem extends StatelessWidget {
  final SalarySystemItem item;
  final int index;
  final SalarySystemData salarySystemData;

  const BuildSalarySystemListItem({super.key, required this.item,
    required this.index,
    required this.salarySystemData});

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
                Text(
                  item.title??"",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: GeneralColor.textColor2),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  item.uploadDate??"",

                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: GeneralColor.textGreyColor),
                ),


              ],
            )
          ),
          onTap: (){
            salarySystemData.moveToSalarySystemDetails(context,item);
          },
        ),
        const SizedBox(
          height: 10,
        ),

      ],
    );
  }
}
