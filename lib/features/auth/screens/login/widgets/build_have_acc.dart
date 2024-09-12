part of 'LoginWidgetsImports.dart';

class BuildHaveAcc extends StatelessWidget {
  final LoginData loginData;

  const BuildHaveAcc({super.key, required this.loginData});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "ليس لديك حساب!",
          style: TextStyle(
            fontSize: 16,
            color: GeneralColor.textGreyColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        InkWell(child:Text(
          "انشاء حسابك الآن",
          style: TextStyle(
            fontSize: 16,
            color: GeneralColor.appColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        // onTap: ()=>   Navigator.push(
        //     context, MaterialPageRoute(builder: (context) =>  SignUp())),
        ),
      ],
    );
  }
}
