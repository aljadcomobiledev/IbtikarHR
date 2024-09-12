part of 'LoansImports.dart';

class Loans extends StatefulWidget {
  const Loans({Key? key}) : super(key: key);

  @override
  State<Loans> createState() => _LoansState();
}

class _LoansState extends State<Loans> {
  final LoansData loansData = LoansData();

  @override
  void initState() {
    loansData.getLoans(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GeneralColor.wGrey,
      body: Column(children: [
        const BuildMainHeader(
          title: "السلف",
        ),
        Expanded(
          child: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: Column(
              children: [
                BuildLoansListView(
                  loansData: loansData,
                )
              ],
            ),
          ),
        )
      ]),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: GeneralColor.appColor,
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => const AddLoan())),
        icon: const Icon(Icons.add),
        label: const Text("طلب سلفة"),
      ),
    );
  }
}
