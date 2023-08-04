part of 'AboutUsImports.dart';

class AboutUsData {

  final PagingController<int, ContactUsItem> infoAboutUsPagingController =
  PagingController(firstPageKey: 1);

  void infoAboutUs(BuildContext context, int page) async {
    List<ContactUsItem>? news =
    await UserRepository(context).infoAboutUs(page);
    final isLastPage = news!.length < SharedData.pageSize;
    if (page == 1) {
      infoAboutUsPagingController.itemList = [];
    }
    if (isLastPage) {
      infoAboutUsPagingController.appendLastPage(news);
    } else {
      final nextPageKey = page + 1;
      infoAboutUsPagingController.appendPage(news, nextPageKey);
    }
  }
}
