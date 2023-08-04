part of 'SignUpWidgetsImports.dart';

class BuildFormSignUp extends StatelessWidget {
  final SignUpData signUpData;

  const BuildFormSignUp({super.key, required this.signUpData});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: signUpData.keyForm,
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
                    controller: signUpData.numberText,
                    decoration: const InputDecoration(
                      hintText: "الرقم الثابت",
                      border: InputBorder.none,
                    ),
                    keyboardType: TextInputType.text,
                    // validator: (value) => value?.validateEmpty(context),
                    style: TextStyle(
                        color: GeneralColor.textColor2,
                        fontWeight: FontWeight.normal,
                        fontSize: 16),
                    cursorColor: GeneralColor.textColor2,
                  ),
                )),
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
                    controller: signUpData.firstNameText,
                    decoration: const InputDecoration(
                      hintText: "الإسم الأول",
                      border: InputBorder.none,
                    ),
                    keyboardType: TextInputType.text,
                    style: TextStyle(
                        color: GeneralColor.textColor2,
                        fontWeight: FontWeight.normal,
                        fontSize: 16),
                    cursorColor: GeneralColor.textColor2,
                  ),
                )),
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
                    controller: signUpData.lastNameText,
                    decoration: const InputDecoration(
                      hintText: "الإسم الأخير",
                      border: InputBorder.none,
                    ),
                    keyboardType: TextInputType.text,
                    style: TextStyle(
                        color: GeneralColor.textColor2,
                        fontWeight: FontWeight.normal,
                        fontSize: 16),
                    cursorColor: GeneralColor.textColor2,
                  ),
                )),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                  decoration: BoxDecoration(
                      color: GeneralColor.wGrey,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    controller: signUpData.birthDateText,
                    decoration: InputDecoration(
                      hintText: "تاريخ الميلاد",
                      border: InputBorder.none,
                      suffixIcon: IconButton(
                        onPressed: () async {
                          DateTime? newDateTime = await showRoundedDatePicker(
                            context: context,
                            theme: ThemeData(
                              primaryColor: GeneralColor.appColor,
                              dialogBackgroundColor: GeneralColor.white,
                              textButtonTheme: TextButtonThemeData(
                                  style: TextButton.styleFrom(
                                foregroundColor: GeneralColor.appColor,
                              )),
                              colorScheme: ColorScheme.light(
                                      primary: GeneralColor.appColor,
                                      onSecondary: Colors.white,
                                      onPrimary: Colors.white,
                                      surface: Colors.white,
                                      onSurface: Colors.white,
                                      secondary: Colors.white)
                                  .copyWith(secondary: Colors.white),
                            ),
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1900),
                            lastDate: DateTime(DateTime.now().year + 1),
                            borderRadius: 16,
                          );

                          final DateFormat formatter = DateFormat('yyyy-MM-dd');
                          String formatted = formatter.format(newDateTime!);
                          signUpData.birthDateText.text = formatted;
                        },
                        icon: Icon(
                          Icons.date_range,
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
                  ),
                )),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                  decoration: BoxDecoration(
                      color: GeneralColor.wGrey,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    controller: signUpData.phoneNumberText,
                    decoration: const InputDecoration(
                      hintText: "رقم الهاتف المحمول",
                      border: InputBorder.none,
                    ),
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                        color: GeneralColor.textColor2,
                        fontWeight: FontWeight.normal,
                        fontSize: 16),
                    cursorColor: GeneralColor.textColor2,
                  ),
                )),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                  decoration: BoxDecoration(
                      color: GeneralColor.wGrey,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    controller: signUpData.cardNumberText,
                    decoration: const InputDecoration(
                      hintText: "رقم البطاقة",
                      border: InputBorder.none,
                    ),
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                        color: GeneralColor.textColor2,
                        fontWeight: FontWeight.normal,
                        fontSize: 16),
                    cursorColor: GeneralColor.textColor2,
                  ),
                )),
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
                    controller: signUpData.jobTitle,
                    decoration: const InputDecoration(
                      hintText: "الوظيفة",
                      border: InputBorder.none,
                    ),
                    keyboardType: TextInputType.text,
                    style: TextStyle(
                        color: GeneralColor.textColor2,
                        fontWeight: FontWeight.normal,
                        fontSize: 16),
                    cursorColor: GeneralColor.textColor2,
                  ),
                )),

            BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
                bloc: signUpData.showPassword,
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
                          obscureText: state.data ? false : true,
                          controller: signUpData.passText,
                          decoration: InputDecoration(
                            hintText: "كلمة السر",
                            border: InputBorder.none,
                            suffixIcon: IconButton(
                              onPressed: () => signUpData.showPassword
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
                            fontSize: 16,
                          ),
                          keyboardType: TextInputType.text,
                          cursorColor: GeneralColor.textColor2,
                        ),
                      ));
                }),
          ],
        ),
      ),
    );
  }
}
