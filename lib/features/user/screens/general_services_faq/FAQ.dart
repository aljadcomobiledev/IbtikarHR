part of 'FAQImports.dart';

@RoutePage()
class FAQ extends StatefulWidget {
  @override
  _FAQState createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  FAQData faqData = FAQData();
  @override
  void initState() {
    faqData.getFAQ(context, 1);
    faqData.faqPagingController.addPageRequestListener((pageKey) {
      faqData.getFAQ(context, pageKey);
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
            title: "أسئلة متكررة",
          ),
          Expanded(
            child: PagedListView<int, FAQDetails>(
              padding:
              const EdgeInsets.only(top: 8, bottom: 30, right: 5, left: 5),
              pagingController: faqData.faqPagingController,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              builderDelegate: PagedChildBuilderDelegate<FAQDetails>(
                  noItemsFoundIndicatorBuilder: (context) =>
                  const Center(child: Text("لا يوجد أخبار")),
                  itemBuilder: (context, item, index) {
                    return BuildFAQListItem(
                      item: item,
                      index: index,
                      faqData: faqData,
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
