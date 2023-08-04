part of 'OffersImports.dart';

@RoutePage()
class Offers extends StatefulWidget {
  @override
  _OffersState createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  OffersData offersData = OffersData();
  @override
  void initState() {
    offersData.fetchOffers(context, 1);
    offersData.offersPagingController.addPageRequestListener((pageKey) {
      offersData.fetchOffers(context, pageKey);
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
            title: "العروض",
          ),
          Expanded(
            child:
            PagedListView<int, ItemDetailsResponse>(
              padding:
              const EdgeInsets.only(top: 8, bottom: 30, right: 5, left: 5),
              pagingController: offersData.offersPagingController,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              builderDelegate: PagedChildBuilderDelegate<ItemDetailsResponse>(
                  noItemsFoundIndicatorBuilder: (context) =>
                  const Center(child: Text("لا يوجد عروض")),
                  itemBuilder: (context, item, index) {
                    return BuildOffersListItem(
                      item: item,
                      index: index,
                      offersData: offersData,
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
