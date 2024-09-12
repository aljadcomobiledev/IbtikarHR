part of 'AddVacationImports.dart';

class AddVacation extends StatefulWidget {
  const AddVacation({Key? key}) : super(key: key);

  @override
  State<AddVacation> createState() => _AddVacationState();
}

class _AddVacationState extends State<AddVacation> {
  AddVacationData addVacationData = AddVacationData();

  @override
  void initState() {
    addVacationData.getVacs(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GeneralColor.wGrey,
      body: Column(children: [
        const BuildMainHeader(
          title: "طلب أجازة",
        ),
        BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
            bloc: addVacationData.showVacCubit,
            builder: (context, state) {
              if (state.data == false) {
                return Container(
                  margin: const EdgeInsets.only(top: 200),
                  alignment: AlignmentDirectional.center,
                  child: CircularProgressIndicator(
                    color: GeneralColor.appColor,
                  ),
                );
              } else {
                return Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        BuildVacationFields(
                          addVacationData: addVacationData,
                        ),
                        BuildVacationButton(
                          addVacationData: addVacationData,
                        )
                      ],
                    ),
                  ),
                );
              }
            }),
      ]),
    );
  }
}
