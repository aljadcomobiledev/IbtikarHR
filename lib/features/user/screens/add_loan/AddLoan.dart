part of 'AddLoanImports.dart';

class AddLoan extends StatefulWidget {
  const AddLoan({Key? key}) : super(key: key);

  @override
  State<AddLoan> createState() => _AddLoanState();
}

class _AddLoanState extends State<AddLoan> {
  AddLoanData addLoanData = AddLoanData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GeneralColor.wGrey,
      body: Column(children: [
        const BuildMainHeader(
          title: "طلب سلفة",
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                BuildLoanFields(
                  addLoanData: addLoanData,
                ),
                BuildLoanButton(
                  addLoanData: addLoanData,
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
