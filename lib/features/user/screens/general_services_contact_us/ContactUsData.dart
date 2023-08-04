part of 'ContactUsImports.dart';

class ContactUsData {
  TextEditingController searchInternalTxt = TextEditingController();
  TextEditingController searchPublicTxt = TextEditingController();



  final PagingController<int, ContactUsItem> contactUsInternalPagingController =
  PagingController(firstPageKey: 1);
  final PagingController<int, ContactUsItem> contactUsPublicPagingController =
  PagingController(firstPageKey: 1);

  void contactUsInternal(BuildContext context, int page,String text) async {
    List<ContactUsItem>? news =
    await UserRepository(context).contactUsInternal(page,text);
    final isLastPage = news!.length < SharedData.pageSize;
    if (page == 1) {
      contactUsInternalPagingController.itemList = [];
    }
    if (isLastPage) {
      contactUsInternalPagingController.appendLastPage(news);
    } else {
      final nextPageKey = page + 1;
      contactUsInternalPagingController.appendPage(news, nextPageKey);
    }
  }


  void contactUsPublic(BuildContext context, int page,String text) async {
    List<ContactUsItem>? news =
    await UserRepository(context).contactUsPublic(page,text);
    final isLastPage = news!.length < SharedData.pageSize;
    if (page == 1) {
      contactUsPublicPagingController.itemList = [];
    }
    if (isLastPage) {
      contactUsPublicPagingController.appendLastPage(news);
    } else {
      final nextPageKey = page + 1;
      contactUsPublicPagingController.appendPage(news, nextPageKey);
    }
  }

}
