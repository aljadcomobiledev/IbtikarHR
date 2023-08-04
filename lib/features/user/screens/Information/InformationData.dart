part of 'InformationImports.dart';

class InformationData {


  final PagingController<int, NotificationsList> notificationsController =
  PagingController(firstPageKey: 1);

  void fetchNotifications(BuildContext context, int page) async {
    List<NotificationsList>? news = await UserRepository(context).getNotifications(page);
    final isLastPage = news!.length < SharedData.pageSize;
    if (page == 1) {
      notificationsController.itemList = [];
    }
    if (isLastPage) {
      notificationsController.appendLastPage(news);
    } else {
      final nextPageKey = page + 1;
      notificationsController.appendPage(news, nextPageKey);
    }
  }




}
