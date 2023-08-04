part of 'AboutUsImports.dart';

@RoutePage()
class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  AboutUsData aboutUsData = AboutUsData();

  @override
  void initState() {
    aboutUsData.infoAboutUs(context, 1);
    aboutUsData.infoAboutUsPagingController.addPageRequestListener((pageKey) {
      aboutUsData.infoAboutUs(context, pageKey);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GeneralColor.babyBlueBackground,
      body: Column(
        children: [
          const BuildMainHeader(
            title: "معلومات عنا",
          ),
          Expanded(
            child: PagedListView<int, ContactUsItem>(
          padding:
          const EdgeInsets.only(top: 8, bottom: 30, right: 5, left: 5),
          pagingController: aboutUsData.infoAboutUsPagingController,
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          builderDelegate: PagedChildBuilderDelegate<ContactUsItem>(
              noItemsFoundIndicatorBuilder: (context) =>
              const Center(child: Text("لا يوجد بيانات")),
              itemBuilder: (context, item, index) {
                return BuildContactUsListItem(
                  item: item,
                  index: index,

                );
              },
              noMoreItemsIndicatorBuilder: (context) {

                return Container();
              },
              firstPageProgressIndicatorBuilder: (context) => Container(
                  margin: const EdgeInsets.only(top: 150),
                  child: LoadingDialog.showLoadingView()),
              newPageProgressIndicatorBuilder: (context) =>
              const CupertinoActivityIndicator()),
          ),


          ),
        ],
      ),
    );
  }
}
