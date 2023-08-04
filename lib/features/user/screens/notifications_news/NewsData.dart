part of 'NewsImports.dart';

class NewsData {
  final PagingController<int, ItemDetailsResponse> newsPagingController =
      PagingController(firstPageKey: 1);

  void fetchNews(BuildContext context, int page) async {
    List<ItemDetailsResponse>? news =
        await UserRepository(context).getNews(page);
    final isLastPage = news!.length < SharedData.pageSize;
    if (page == 1) {
      newsPagingController.itemList = [];
    }
    if (isLastPage) {
      newsPagingController.appendLastPage(news);
    } else {
      final nextPageKey = page + 1;
      newsPagingController.appendPage(news, nextPageKey);
    }
  }

  void moveToNewsDetails(BuildContext context,
      ItemDetailsResponse itemDetailsResponse, String title) {
    AutoRouter.of(context).push(
        Details(itemDetailsResponse: itemDetailsResponse, title: title));
  }
}
