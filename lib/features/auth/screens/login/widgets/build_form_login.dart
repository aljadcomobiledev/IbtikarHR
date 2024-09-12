part of 'LoginWidgetsImports.dart';

class BuildFormLogin extends StatelessWidget {
  final LoginData loginData;

  const BuildFormLogin({super.key, required this.loginData});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: loginData.keyForm,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              width: MediaQuery.of(context).size.width,
              height: 60,
              decoration: BoxDecoration(
                  color: GeneralColor.wGrey,
                  borderRadius: BorderRadius.circular(15)),
              child: TextFormField(
                controller: loginData.userNameText,
                decoration: InputDecoration(
                  labelText: "اسم المستخدم",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: GeneralColor.wGrey, width: 2),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: GeneralColor.wGrey, width: 2),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  filled: true,
                  fillColor: GeneralColor.wGrey,
                ),
                style: TextStyle(
                  color: GeneralColor.textColor2,
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                ),
                cursorColor: GeneralColor.textColor2,
                keyboardType: TextInputType.text,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
                bloc: loginData.showPassword,
                builder: (context, state) {
                  return Container(
                    height: 60,
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: GeneralColor.wGrey,
                        borderRadius: BorderRadius.circular(15)),
                    child: TextFormField(
                      controller: loginData.passText,
                      obscureText: state.data ? false : true,

                      decoration: InputDecoration(
                        labelText: "كلمةالسر",
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: GeneralColor.wGrey, width: 2),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: GeneralColor.wGrey, width: 2),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        filled: true,
                        fillColor: GeneralColor.wGrey,
                        suffixIcon: IconButton(
                          onPressed: () =>
                              loginData.showPassword.onUpdateData(!state.data),
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
                  );
                }),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 5,
            ),
            BlocBuilder<GenericBloc<List<BranchResponse>>,
                    GenericState<List<BranchResponse>>>(
                bloc: loginData.branchesCubit,
                builder: (context, state) {
                  print("state : " + state.data.length.toString());
                  if (state.data.isEmpty) {
                    return Container();
                  } else {
                    List<BranchResponse> listBranches = state.data;
                    return DropdownButtonFormField(
                      decoration: InputDecoration(
                        labelText: "الفرع",
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: GeneralColor.wGrey, width: 2),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: GeneralColor.wGrey, width: 2),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        filled: true,
                        fillColor: GeneralColor.wGrey,
                      ),
                      validator: (value) =>
                          value == null ? "Select a country" : null,
                      dropdownColor: Colors.white,
                      value: loginData.selectedValue,
                      items: listBranches.map((BranchResponse value) {
                        return DropdownMenuItem(
                          value: value,
                          child: Text(
                            value.nameAr ?? "",
                            style: const TextStyle(fontSize: 16),
                          ),
                        );
                      }).toList(),
                      onChanged: (value) {
                        BranchResponse? branch = value as BranchResponse?;
                        print("Value : " + branch!.nameAr!);
                        loginData.selectedValue = branch;
                      },
                    );
                  }
                }),
          ],
        ),
      ),
    );
  }
}
