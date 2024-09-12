part of 'VacationsWidgetsImports.dart';

class BuildVacationsListView extends StatelessWidget {
  final VacationsData vacationsData;

  const BuildVacationsListView({Key? key, required this.vacationsData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<List<VacationRequests>>,
            GenericState<List<VacationRequests>>>(
        bloc: vacationsData.vacationsCubit,
        builder: (context, state) {
          if (state is GenericUpdateState) {
            if (state.data.isEmpty) {
              return Container();
            } else {
              List<VacationRequests> listVacations = state.data;

              return ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: listVacations.length,
                shrinkWrap: true,
                padding:
                    const EdgeInsets.symmetric(horizontal: 6, vertical: 10),
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return BuildVacationsItemView(
                    item: listVacations[index],
                    vacationsData: vacationsData,
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
