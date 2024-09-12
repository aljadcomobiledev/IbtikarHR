part of 'VacationsImports.dart';

class Vacations extends StatefulWidget {
  const Vacations({Key? key}) : super(key: key);

  @override
  State<Vacations> createState() => _VacationsState();
}

class _VacationsState extends State<Vacations> {
  final VacationsData vacationsData = VacationsData();

  @override
  void initState() {
    vacationsData.getVacations(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GeneralColor.wGrey,
      body: Column(children: [
        const BuildMainHeader(
          title: "الأجازات",
        ),
        Expanded(
          child: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: Column(
              children: [
                BuildVacationsListView(
                  vacationsData: vacationsData,
                )
              ],
            ),
          ),
        )
      ]),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: GeneralColor.appColor,
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => const AddVacation())),
        icon: const Icon(Icons.add),
        label: const Text("طلب أجازة"),
      ),
    );
  }
}
