part of 'MedicalComplaintsWidgetsImports.dart';

class BuildMedicalComplaintsListItem extends StatelessWidget {
  final MedicalComplaintItem item;
  final int index;
  final MedicalComplaintsData medicalComplaintsData;

  const BuildMedicalComplaintsListItem({super.key, required this.item,
    required this.index,
    required this.medicalComplaintsData});

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
                  maxLines: 1,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: GeneralColor.textColor2),
                ),
                Text(
                  item.body??"",
                  maxLines: 3,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: GeneralColor.textGreyColor),
                ),


              ],
            )
          ),
          onTap: (){
            medicalComplaintsData.moveToMedicalComplaintsDetails(context,item.id, item.title);
          },
        ),
        const SizedBox(
          height: 10,
        ),

      ],
    );
  }
}
