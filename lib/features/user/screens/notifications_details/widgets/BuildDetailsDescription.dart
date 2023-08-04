part of 'DetailsWidgetsImports.dart';

class BuildDetailsDescription extends StatelessWidget {
  final String description;

  const BuildDetailsDescription(
      {super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Expanded(

      child: SingleChildScrollView(
        child:ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child:
          Text(
            description,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: GeneralColor.textColor2),
          ),

        ),



      ) );
  }
}
