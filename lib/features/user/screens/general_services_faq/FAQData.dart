part of 'FAQImports.dart';

class FAQData {

  final PagingController<int, FAQDetails> faqPagingController =
  PagingController(firstPageKey: 1);

  void getFAQ(BuildContext context, int page) async {
    List<FAQDetails>? news =
    await UserRepository(context).getFAQ(page);
    final isLastPage = news!.length < SharedData.pageSize;
    if (page == 1) {
      faqPagingController.itemList = [];
    }
    if (isLastPage) {
      faqPagingController.appendLastPage(news);
    } else {
      final nextPageKey = page + 1;
      faqPagingController.appendPage(news, nextPageKey);
    }
  }



}
