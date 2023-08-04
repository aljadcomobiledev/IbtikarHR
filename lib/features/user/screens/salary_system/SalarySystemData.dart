part of 'SalarySystemImports.dart';

class SalarySystemData {


  final PagingController<int, SalarySystemItem> salarySystemPagingController =
  PagingController(firstPageKey: 1);

  void fetchSalarySystem(BuildContext context, int page) async {
    List<SalarySystemItem>? news = await UserRepository(context).getSalarySystem(page);
    final isLastPage = news!.length < SharedData.pageSize;
    if (page == 1) {
      salarySystemPagingController.itemList = [];
    }
    if (isLastPage) {
      salarySystemPagingController.appendLastPage(news);
    } else {
      final nextPageKey = page + 1;
      salarySystemPagingController.appendPage(news, nextPageKey);
    }
  }



  void moveToSalarySystemDetails(BuildContext context, SalarySystemItem item){
    AutoRouter.of(context).push(SalarySystemDetails(item: item));

  }


}
