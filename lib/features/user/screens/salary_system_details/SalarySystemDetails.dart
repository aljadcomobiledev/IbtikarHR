part of 'SalarySystemDetailsImports.dart';

@RoutePage()
class SalarySystemDetails extends StatefulWidget {
  final SalarySystemItem item;

  const SalarySystemDetails({super.key, required this.item});

  @override
  _SalarySystemDetailsState createState() => _SalarySystemDetailsState();
}

class _SalarySystemDetailsState extends State<SalarySystemDetails> {
  SalarySystemDetailsData salarySystemDetailsData = SalarySystemDetailsData();

  @override
  void initState() {
    salarySystemDetailsData.fetchSalarySystemDetails(context, widget.item.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GeneralColor.babyBlueBackground,
      body: Column(
        children: [
          BuildMainHeader(
            title: widget.item.title ?? "",
          ),
          Expanded(
            child: BlocBuilder<GenericBloc<List<SalaryDetailsData>?>,
                GenericState<List<SalaryDetailsData>?>>(
              bloc: salarySystemDetailsData.salaryDetailsCubit,
              builder: (context, state) {
                if (state is GenericUpdateState) {
                  return SingleChildScrollView(
                    physics: const ClampingScrollPhysics(),
                    child: Column(
                      children: [
                        ListView.builder(
                          // physics: const NeverScrollableScrollPhysics(),
                          itemCount: state.data!.length,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context, index) {
                            return BuildSalarySystemDetailsListItem(
                              item: state.data![index],
                              index: index,
                              salarySystemDetailsData: salarySystemDetailsData,
                            );
                          },
                        ),
                        Container(
                            alignment: AlignmentDirectional.center,
                            margin: const EdgeInsets.symmetric(horizontal: 15),
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: GeneralColor.appColor,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  " اجمالي ${widget.item.title!}",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: GeneralColor.textColor2),
                                ),
                                Text(
                                  "${salarySystemDetailsData.getTotal(state.data)}  ج.م",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: GeneralColor.white),
                                ),
                              ],
                            ))
                      ],
                    ),
                  );
                } else {
                  return Container(
                    margin: const EdgeInsets.only(top: 80),
                    child: LoadingDialog.showLoadingView(),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
