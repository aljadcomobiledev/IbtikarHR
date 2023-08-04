part of 'TripsImports.dart';

@RoutePage()
class Trips extends StatefulWidget {
  @override
  _TripsState createState() => _TripsState();
}

class _TripsState extends State<Trips> {
  TripsData tripsData = TripsData();
  @override
  void initState() {
    tripsData.fetchTrips(context, 1);
    tripsData.tripsPagingController.addPageRequestListener((pageKey) {
      tripsData.fetchTrips(context, pageKey);
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
            title: "الرحلات",
          ),
          Expanded(
            child:
            PagedListView<int, ItemDetailsResponse>(
              padding:
              const EdgeInsets.only(top: 8, bottom: 30, right: 5, left: 5),
              pagingController: tripsData.tripsPagingController,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              builderDelegate: PagedChildBuilderDelegate<ItemDetailsResponse>(
                  noItemsFoundIndicatorBuilder: (context) =>
                  const Center(child: Text("لا يوجد رحلات")),
                  itemBuilder: (context, item, index) {
                    return BuildTripsListItem(
                      item: item,
                      index: index,
                      tripsData: tripsData,
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
