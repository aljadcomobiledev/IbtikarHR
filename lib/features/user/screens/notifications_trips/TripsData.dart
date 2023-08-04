part of 'TripsImports.dart';

class TripsData{


  final PagingController<int, ItemDetailsResponse> tripsPagingController =
  PagingController(firstPageKey: 1);

  void fetchTrips(BuildContext context, int page) async {
    List<ItemDetailsResponse>? news = await UserRepository(context).getTrips(page);
    final isLastPage = news!.length < SharedData.pageSize;
    if (page == 1) {
      tripsPagingController.itemList = [];
    }
    if (isLastPage) {
      tripsPagingController.appendLastPage(news);
    } else {
      final nextPageKey = page + 1;
      tripsPagingController.appendPage(news, nextPageKey);
    }
  }


  void moveToTripsDetails(BuildContext context,
      ItemDetailsResponse itemDetailsResponse, String title) {
    AutoRouter.of(context)
        .push(Details(itemDetailsResponse: itemDetailsResponse, title: title));
  }


}
