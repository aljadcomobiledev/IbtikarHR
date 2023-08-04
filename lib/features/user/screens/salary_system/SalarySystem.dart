part of 'SalarySystemImports.dart';

@RoutePage()
class SalarySystem extends StatefulWidget {
  @override
  _SalarySystemState createState() => _SalarySystemState();
}

class _SalarySystemState extends State<SalarySystem> {
  SalarySystemData salarySystemData = SalarySystemData();
  @override
  void initState() {
    salarySystemData.fetchSalarySystem(context, 1);
    salarySystemData.salarySystemPagingController.addPageRequestListener((pageKey) {
      salarySystemData.fetchSalarySystem(context, pageKey);
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
            title: "نظام المرتبات",
          ),
          Expanded(
            child:

            PagedListView<int, SalarySystemItem>(
              padding:
              const EdgeInsets.only(top: 8, bottom: 30, right: 5, left: 5),
              pagingController: salarySystemData.salarySystemPagingController,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              builderDelegate: PagedChildBuilderDelegate<SalarySystemItem>(
                  noItemsFoundIndicatorBuilder: (context) =>
                  const Center(child: Text("لا يوجد نظام مرتبات")),
                  itemBuilder: (context, item, index) {
                    return BuildSalarySystemListItem(
                      item: item,
                      index: index,
                      salarySystemData: salarySystemData,
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
