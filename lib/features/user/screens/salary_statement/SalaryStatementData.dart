part of 'SalaryStatementImports.dart';

class SalaryStatementData {
  final PagingController<int, PayrollItem> payrollPagingController =
  PagingController(firstPageKey: 1);

  void fetchPayroll(BuildContext context, int page) async {
    List<PayrollItem>? news = await UserRepository(context).getPayroll(page);
    final isLastPage = news!.length < SharedData.pageSize;
    if (page == 1) {
      payrollPagingController.itemList = [];
    }
    if (isLastPage) {
      payrollPagingController.appendLastPage(news);
    } else {
      final nextPageKey = page + 1;
      payrollPagingController.appendPage(news, nextPageKey);
    }
  }

  void moveToViewFile(BuildContext context, String attachmentTitle, String attachmentPath) {
 // AutoRouter.of(context).push(const OpenFileRoute());

  }
}
