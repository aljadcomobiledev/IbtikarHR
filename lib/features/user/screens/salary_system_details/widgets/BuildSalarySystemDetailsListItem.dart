part of 'SalarySystemDetailsWidgetsImports.dart';

class BuildSalarySystemDetailsListItem extends StatelessWidget {
  final SalaryDetailsData item;
  final int index;
  final SalarySystemDetailsData salarySystemDetailsData;

  const BuildSalarySystemDetailsListItem({super.key, required this.item,
    required this.index,
    required this.salarySystemDetailsData});

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
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  item.title??"",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: GeneralColor.textColor2),
                ),
                Text(
                  "${item.value??""}  ج.م",

                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: GeneralColor.appColor),
                ),


              ],
            )
          ),
          onTap: (){
            
          },
        ),
        const SizedBox(
          height: 10,
        ),

      ],
    );
  }
}
