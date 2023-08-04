part of 'MedicalComplaintsImports.dart';

class MedicalComplaintsData {
  TextEditingController searchTxt = TextEditingController();

  final PagingController<int, MedicalComplaintItem>
      medicalComplaintsController = PagingController(firstPageKey: 1);

  void fetchMedicalComplaints(BuildContext context, int page,String value) async {
    List<MedicalComplaintItem>? news =
        await UserRepository(context).getMedicalComplaints(page,value);
    final isLastPage = news!.length < SharedData.pageSize;
    if (page == 1) {
      medicalComplaintsController.itemList = [];
    }
    if (isLastPage) {
      medicalComplaintsController.appendLastPage(news);
    } else {
      final nextPageKey = page + 1;
      medicalComplaintsController.appendPage(news, nextPageKey);
    }
  }

  void moveToMedicalComplaintsDetails(BuildContext context, num? id, String? title) {
     AutoRouter.of(context).push(ComplaintsDetails(id: id, title: title,complaintType: 0));
  }
  void moveToAddComplaint(BuildContext context, num? id, String? title) {
     AutoRouter.of(context).push(AddComplaint(id: id, title: title));
  }
}
