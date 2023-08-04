part of 'NewsImports.dart';

@RoutePage()
class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  NewsData newsData = NewsData();

  @override
  void initState() {
    newsData.fetchNews(context, 1);
    newsData.newsPagingController.addPageRequestListener((pageKey) {
      newsData.fetchNews(context, pageKey);
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
            title: "أخبار",
          ),
          Expanded(
            child:
            PagedListView<int, ItemDetailsResponse>(
              padding:
                  const EdgeInsets.only(top: 8, bottom: 30, right: 5, left: 5),
              pagingController: newsData.newsPagingController,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              builderDelegate: PagedChildBuilderDelegate<ItemDetailsResponse>(
                  noItemsFoundIndicatorBuilder: (context) =>
                      const Center(child: Text("لا يوجد أخبار")),
                  itemBuilder: (context, item, index) {
                    return BuildNewsListItem(
                      item: item,
                      index: index,
                      newsData: newsData,
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
