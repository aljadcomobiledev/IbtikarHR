part of 'MembersImports.dart';


@RoutePage()
class Members extends StatefulWidget {
  @override
  _MembersState createState() => _MembersState();
}

class _MembersState extends State<Members> {
  MembersData membersData = MembersData();
  @override
  void initState() {
    membersData.fetchBoardMembers(context, 1);
    membersData.boardMembersPagingController.addPageRequestListener((pageKey) {
      membersData.fetchBoardMembers(context, pageKey);
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
            title: "أعضاء مجلس الإدارة",
          ),
          Expanded(
            child:
            PagedListView<int, ItemDetailsResponse>(
              padding:
              const EdgeInsets.only(top: 8, bottom: 30, right: 5, left: 5),
              pagingController: membersData.boardMembersPagingController,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              builderDelegate: PagedChildBuilderDelegate<ItemDetailsResponse>(
                  noItemsFoundIndicatorBuilder: (context) =>
                  const Center(child: Text("لا يوجد اعضاء")),
                  itemBuilder: (context, item, index) {
                    return BuildMembersListItem(
                      item: item,
                      index: index,
                      membersData: membersData,
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
