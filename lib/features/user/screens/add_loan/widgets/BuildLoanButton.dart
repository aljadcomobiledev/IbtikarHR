part of 'AddLoanWidgetsImports.dart';

class BuildLoanButton extends StatelessWidget {
  final AddLoanData addLoanData;

  const BuildLoanButton({Key? key, required this.addLoanData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: InkWell(
          child: Container(
            margin: const EdgeInsets.only(bottom: 20),
            height: 60,
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: GeneralColor.appColor,
                borderRadius: BorderRadius.circular(15)),
            child: Text(
              "ارسال الطلب",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: GeneralColor.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          onTap: () {
            addLoanData.addLoan(context);
          }),
    );
  }
}
