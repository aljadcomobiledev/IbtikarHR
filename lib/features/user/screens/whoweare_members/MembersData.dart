part of 'MembersImports.dart';

class MembersData {




  final PagingController<int, ItemDetailsResponse> boardMembersPagingController =
  PagingController(firstPageKey: 1);

  void fetchBoardMembers(BuildContext context, int page) async {
    List<ItemDetailsResponse>? news = await UserRepository(context).getBoardMembers(page);
    final isLastPage = news!.length < SharedData.pageSize;
    if (page == 1) {
      boardMembersPagingController.itemList = [];
    }
    if (isLastPage) {
      boardMembersPagingController.appendLastPage(news);
    } else {
      final nextPageKey = page + 1;
      boardMembersPagingController.appendPage(news, nextPageKey);
    }
  }




}
