part of 'DetailsWidgetsImports.dart';

class BuildDetailsImage extends StatelessWidget {
  final String title;
  final String img_url;


  const BuildDetailsImage(
      {super.key, required this.title, required this.img_url});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image.network(
            img_url,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fill,
            height: 260,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          title,
          maxLines: 1,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: GeneralColor.textColor2),
        ),
      ],
    );
  }
}
