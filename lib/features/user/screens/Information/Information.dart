part of 'InformationImports.dart';

@RoutePage()
class Information extends StatefulWidget {
  @override
  _InformationState createState() => _InformationState();


}

class _InformationState extends State<Information> {
  InformationData informationData = InformationData();

  @override
  void initState() {
    informationData.fetchNotifications(context, 1);
    informationData.notificationsController.addPageRequestListener((pageKey) {
      informationData.fetchNotifications(context, pageKey);
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
            title: "الإخطارات",
          ),
          Expanded(
            child:
            PagedListView<int, NotificationsList>(
              padding:
              const EdgeInsets.only(top: 8, bottom: 30, right: 5, left: 5),
              pagingController: informationData.notificationsController,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              builderDelegate: PagedChildBuilderDelegate<NotificationsList>(
                  noItemsFoundIndicatorBuilder: (context) =>
                  const Center(child: Text("لا يوجد إخطارات")),
                  itemBuilder: (context, item, index) {
                    return BuildInfoListItem(
                      item: item,
                      index: index,
                      informationData: informationData,
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
