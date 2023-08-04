part of 'OffersImports.dart';

class OffersData {
  final PagingController<int, ItemDetailsResponse> offersPagingController =
      PagingController(firstPageKey: 1);

  void fetchOffers(BuildContext context, int page) async {
    List<ItemDetailsResponse>? news =
        await UserRepository(context).getOffers(page);
    final isLastPage = news!.length < SharedData.pageSize;
    if (page == 1) {
      offersPagingController.itemList = [];
    }
    if (isLastPage) {
      offersPagingController.appendLastPage(news);
    } else {
      final nextPageKey = page + 1;
      offersPagingController.appendPage(news, nextPageKey);
    }
  }


  void moveToOfferDetails(BuildContext context,
      ItemDetailsResponse itemDetailsResponse, String title) {
    AutoRouter.of(context).push(Details(itemDetailsResponse: itemDetailsResponse, title: title));
  }
}
