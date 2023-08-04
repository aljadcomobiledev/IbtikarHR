part of 'LoginWidgetsImports.dart';

class BuildFormLogin extends StatelessWidget {
  final LoginData loginData;

  const BuildFormLogin({super.key, required this.loginData});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: loginData.keyForm,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                  decoration: BoxDecoration(
                      color: GeneralColor.wGrey,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    controller: loginData.numberText,
                    decoration: const InputDecoration(
                      hintText: "الرقم الثابت",
                      border: InputBorder.none,
                    ),
                    style: TextStyle(
                      color: GeneralColor.textColor2,
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                    ),
                    cursorColor: GeneralColor.textColor2,
                    keyboardType: TextInputType.text,
                  ),
                )),
            BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
                bloc: loginData.showPassword,
                builder: (context, state) {
                  return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 16),
                      child: Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 0),
                        decoration: BoxDecoration(
                            color: GeneralColor.wGrey,
                            borderRadius: BorderRadius.circular(10)),
                        child: TextFormField(
                          controller: loginData.passText,
                          obscureText: state.data ? false : true,

                          decoration: InputDecoration(
                            hintText: "كلمة السر",
                            border: InputBorder.none,
                            suffixIcon:
                            IconButton(
                              onPressed: () => loginData.showPassword
                                  .onUpdateData(!state.data),
                              icon: Icon(
                                state.data
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                size: 20,
                                color: GeneralColor.iconColor,
                              ),
                            ),
                          ),
                          style: TextStyle(
                              color: GeneralColor.textColor2,
                              fontWeight: FontWeight.normal,
                              fontSize: 16),
                          cursorColor: GeneralColor.textColor2,
                          // keyboardType:  state.data?TextInputType.visiblePassword: TextInputType.text,
                        ),
                      ));
                }),
          ],
        ),
      ),
    );
  }
}
