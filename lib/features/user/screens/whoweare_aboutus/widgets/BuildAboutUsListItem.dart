part of 'AboutUsWidgetsImports.dart';

class BuildAboutUsListItem extends StatelessWidget {
  final AboutUsModel aboutUsModel;
  final int index;
  final AboutUsData aboutUsData;

  const BuildAboutUsListItem(
      {super.key,
      required this.aboutUsModel,
      required this.index,
      required this.aboutUsData});

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
                children: [
                  Expanded(
                      flex: 1,
                      child: Text(
                        aboutUsModel.title,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: GeneralColor.appColor),
                      )),
                  Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            textDirection: TextDirection.ltr,
                            children: [
                              Visibility(visible: index != 2,child:
                              Image.asset(
                                "assets/images/email_icon.png",
                                width: 16,
                                height: 15,
                              )),
                              const SizedBox(
                                width: 7,
                              ),
                              Flexible(
                                child: Text(
                                  aboutUsModel.email,
                                  textDirection: TextDirection.ltr,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: GeneralColor.textColor2),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            textDirection: TextDirection.ltr,
                            children: [

                              Visibility(visible: index != 2,child:

                              Image.asset(
                                "assets/images/phone_icon.png",
                                width: 16,
                                height: 15,
                              ),
                              ),
                              const SizedBox(
                                width: 7,
                              ),
                              Text(
                                aboutUsModel.phoneNumber,
                                textDirection: TextDirection.ltr,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: GeneralColor.textColor2),
                              )
                            ],
                          ),
                        ],
                      ))
                ],
              )),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
