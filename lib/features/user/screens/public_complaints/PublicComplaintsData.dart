part of 'PublicComplaintsImports.dart';

class PublicComplaintsData {
  TextEditingController searchTxt = TextEditingController();

  final PagingController<int, MedicalComplaintItem>
      publicComplaintsController = PagingController(firstPageKey: 1);

  void fetchPublicComplaints(BuildContext context, int page,String value) async {
    List<MedicalComplaintItem>? news =
        await UserRepository(context).getPublicComplaints(page,value);
    final isLastPage = news!.length < SharedData.pageSize;
    if (page == 1) {
      publicComplaintsController.itemList = [];
    }
    if (isLastPage) {
      publicComplaintsController.appendLastPage(news);
    } else {
      final nextPageKey = page + 1;
      publicComplaintsController.appendPage(news, nextPageKey);
    }
  }

  void moveToPublicComplaintsDetails(BuildContext context, num? id, String? title) {
     AutoRouter.of(context).push(ComplaintsDetails(id: id, title: title,complaintType: 1));
  }
  void moveToAddComplaint(BuildContext context, num? id, String? title) {
     AutoRouter.of(context).push(AddComplaint(id: id, title: title));
  }
}
