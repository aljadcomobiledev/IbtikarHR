part of 'AddLoanWidgetsImports.dart';

class BuildLoanFields extends StatelessWidget {
  final AddLoanData addLoanData;

  const BuildLoanFields({Key? key, required this.addLoanData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            width: MediaQuery.of(context).size.width,
            height: 60,
            decoration: BoxDecoration(
                color: GeneralColor.white,
                borderRadius: BorderRadius.circular(15)),
            child: TextFormField(
              controller: addLoanData.loanAmountText,
              decoration: InputDecoration(
                labelText: "اجمالي مبلغ السلفة",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: GeneralColor.white, width: 2),
                  borderRadius: BorderRadius.circular(15),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: GeneralColor.white, width: 2),
                  borderRadius: BorderRadius.circular(15),
                ),
                filled: true,
                fillColor: GeneralColor.white,
              ),
              style: TextStyle(
                color: GeneralColor.textColor2,
                fontWeight: FontWeight.normal,
                fontSize: 16,
              ),
              cursorColor: GeneralColor.textColor2,
              keyboardType: TextInputType.text,
              onChanged: (text) {
                if (text.isEmpty) {
                  addLoanData.installmentValueText.text = "";
                } else if (addLoanData.installmentCountText.text.isNotEmpty) {
                  addLoanData.installmentValueText.text = (double.parse(text) /
                          int.parse(addLoanData.installmentCountText.text))
                      .toString();
                }
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            width: MediaQuery.of(context).size.width,
            height: 60,
            decoration: BoxDecoration(
                color: GeneralColor.white,
                borderRadius: BorderRadius.circular(15)),
            child: TextFormField(
              controller: addLoanData.startDateText,
              decoration: InputDecoration(
                labelText: "تاريخ بداية القسط",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: GeneralColor.white, width: 2),
                  borderRadius: BorderRadius.circular(15),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: GeneralColor.white, width: 2),
                  borderRadius: BorderRadius.circular(15),
                ),
                filled: true,
                fillColor: GeneralColor.white,
                suffixIcon: IconButton(
                  onPressed: () async {},
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
                fontSize: 16,
              ),
              // enabled: false,
              onTap: () async {
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
                addLoanData.startDateText.text = formatted;
                addLoanData.installmentCountText.text="";
                addLoanData.endDateText.text="";
                addLoanData.installmentValueText.text="";
              },
              // onChanged: (text) {
              //   if (text.isNotEmpty) {
              //     DateFormat dateFormat = DateFormat("yyyy-MM-dd");
              //     DateTime date = dateFormat.parse(text);
              //
              //     DateTime dateTime = DTU.addDays(
              //         date, int.parse(addLoanData.installmentCountText.text));
              //     addLoanData.endDateText.text = dateFormat.format(dateTime);
              //   } else {
              //     addLoanData.endDateText.text = "";
              //   }
              // },
              readOnly: true,
              enableInteractiveSelection: true,
              cursorColor: GeneralColor.textColor2,
              keyboardType: TextInputType.text,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            width: MediaQuery.of(context).size.width,
            height: 60,
            decoration: BoxDecoration(
                color: GeneralColor.white,
                borderRadius: BorderRadius.circular(15)),
            child: TextFormField(
              controller: addLoanData.installmentCountText,
              decoration: InputDecoration(
                labelText: "عدد الأقساط",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: GeneralColor.white, width: 2),
                  borderRadius: BorderRadius.circular(15),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: GeneralColor.white, width: 2),
                  borderRadius: BorderRadius.circular(15),
                ),
                filled: true,
                fillColor: GeneralColor.white,
              ),
              style: TextStyle(
                color: GeneralColor.textColor2,
                fontWeight: FontWeight.normal,
                fontSize: 16,
              ),
              cursorColor: GeneralColor.textColor2,
              keyboardType: TextInputType.number,
              onChanged: (text) {
                if (text.isNotEmpty) {
                  DateFormat dateFormat = DateFormat("yyyy-MM-dd");
                  DateTime date =
                      dateFormat.parse(addLoanData.startDateText.text);

                  DateTime dateTime = DTU.addMonths(date, int.parse(text)-1);
                  addLoanData.endDateText.text = dateFormat.format(dateTime);

                  if (addLoanData.loanAmountText.text.isNotEmpty) {
                    addLoanData.installmentValueText.text =
                        (double.parse(addLoanData.loanAmountText.text) /
                                int.parse(text))
                            .toString();
                  }
                } else {
                  addLoanData.endDateText.text = "";
                  addLoanData.installmentValueText.text = "";
                }
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          BlocBuilder<GenericBloc<String>, GenericState<String>>(
              bloc: addLoanData.endDateCubit,
              builder: (context, state) {
                return Container(
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  decoration: BoxDecoration(
                      color: GeneralColor.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: TextFormField(
                    enabled: false,
                    controller: addLoanData.endDateText,
                    decoration: InputDecoration(
                      labelText: "تاريخ نهاية القسط",
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: GeneralColor.white, width: 2),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: GeneralColor.white, width: 2),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      filled: true,
                      fillColor: GeneralColor.white,
                    ),
                    style: TextStyle(
                      color: GeneralColor.textColor2,
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                    ),
                    cursorColor: GeneralColor.textColor2,
                    keyboardType: TextInputType.text,
                  ),
                );
              }),
          const SizedBox(
            height: 20,
          ),
          BlocBuilder<GenericBloc<String>, GenericState<String>>(
              bloc: addLoanData.installmentValueCubit,
              builder: (context, state) {
                return Container(
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  decoration: BoxDecoration(
                      color: GeneralColor.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: TextFormField(
                    enabled: false,
                    controller: addLoanData.installmentValueText,
                    decoration: InputDecoration(
                      labelText: "قيمة القسط",
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: GeneralColor.white, width: 2),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: GeneralColor.white, width: 2),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      filled: true,
                      fillColor: GeneralColor.white,
                    ),
                    style: TextStyle(
                      color: GeneralColor.textColor2,
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                    ),
                    cursorColor: GeneralColor.textColor2,
                    keyboardType: TextInputType.text,
                  ),
                );
              }),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: GeneralColor.white,
                borderRadius: BorderRadius.circular(15)),
            child: TextFormField(
              controller: addLoanData.notesText,
              maxLines: 4,
              decoration: InputDecoration(
                labelText: "الملاحظات",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: GeneralColor.white, width: 2),
                  borderRadius: BorderRadius.circular(15),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: GeneralColor.white, width: 2),
                  borderRadius: BorderRadius.circular(15),
                ),
                filled: true,
                fillColor: GeneralColor.white,
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
        ],
      ),
    );
  }
}
