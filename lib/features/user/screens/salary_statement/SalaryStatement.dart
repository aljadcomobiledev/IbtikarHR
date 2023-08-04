part of 'SalaryStatementImports.dart';

@RoutePage()
class SalaryStatement extends StatefulWidget {
  @override
  _SalaryStatementState createState() => _SalaryStatementState();
}

class _SalaryStatementState extends State<SalaryStatement> {
  SalaryStatementData salaryStatementData = SalaryStatementData();

  @override
  void initState() {
    salaryStatementData.fetchPayroll(context, 1);
    salaryStatementData.payrollPagingController.addPageRequestListener((pageKey) {
      salaryStatementData.fetchPayroll(context, pageKey);
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
            title: "كشف الراتب",
          ),
          Expanded(
            child:

            PagedListView<int, PayrollItem>(
              padding:
              const EdgeInsets.only(top: 8, bottom: 30, right: 5, left: 5),
              pagingController: salaryStatementData.payrollPagingController,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              builderDelegate: PagedChildBuilderDelegate<PayrollItem>(
                  noItemsFoundIndicatorBuilder: (context) =>
                  const Center(child: Text("لا يوجد كشف راتب")),
                  itemBuilder: (context, item, index) {
                    return BuildSalaryStatementListItem(
                      item: item,
                      index: index,
                      salaryStatementData: salaryStatementData,
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
