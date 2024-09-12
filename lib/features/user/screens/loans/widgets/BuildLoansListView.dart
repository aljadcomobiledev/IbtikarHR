part of 'LoansWidgetsImports.dart';

class BuildLoansListView extends StatelessWidget {
  final LoansData loansData;

  const BuildLoansListView({Key? key, required this.loansData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<List<LoansModel>>,
            GenericState<List<LoansModel>>>(
        bloc: loansData.loansCubit,
        builder: (context, state) {
          if (state is GenericUpdateState) {
            if (state.data.isEmpty) {
              return Container();
            } else {
              List<LoansModel> listLoans = state.data;

              return ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: listLoans.length,
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(horizontal: 6,vertical: 10),
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return BuildLoansItemView(
                    item: listLoans[index],
                    loansData: loansData,
                  );
                },
              );
            }
          } else {
            return Container(
                margin: const EdgeInsets.only(top: 150),
                child: LoadingDialog.showLoadingView());
          }
        });
    // return  ListView.builder(
    //   physics: const NeverScrollableScrollPhysics(),
    //   itemCount: item.info!.length,
    //   shrinkWrap: true,
    //   scrollDirection: Axis.vertical,
    //   itemBuilder: (context, index) {
    //     return BuildInfoListItem(
    //       item: item.info![index],
    //     );
    //   },
    // );
  }
}
