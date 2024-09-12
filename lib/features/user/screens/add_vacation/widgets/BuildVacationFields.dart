part of 'AddVacationWidgetsImports.dart';

class BuildVacationFields extends StatelessWidget {
  final AddVacationData addVacationData;

  const BuildVacationFields({Key? key, required this.addVacationData})
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
              controller: addVacationData.startDateText,
              decoration: InputDecoration(
                labelText: "تاريخ بداية الأجازة",
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
                addVacationData.startDateText.text = formatted;
                addVacationData.vacationCountText.text = "";
                addVacationData.endDateText.text = "";
              },
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
              controller: addVacationData.vacationCountText,
              decoration: InputDecoration(
                labelText: "عدد أيام الأجازة",
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
                      dateFormat.parse(addVacationData.startDateText.text);
                  DateTime dateTime = DTU.addDays(date, int.parse(text) - 1);
                  addVacationData.endDateText.text =
                      dateFormat.format(dateTime);
                } else {
                  addVacationData.endDateText.text = "";
                }
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          BlocBuilder<GenericBloc<String>, GenericState<String>>(
              bloc: addVacationData.endDateCubit,
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
                    controller: addVacationData.endDateText,
                    decoration: InputDecoration(
                      labelText: "تاريخ نهاية الأجازة",
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
          BlocBuilder<GenericBloc<List<Vac>>,
              GenericState<List<Vac>>>(
              bloc: addVacationData.vacCubit,
              builder: (context, state) {
                print("state : " + state.data.length.toString());
                if (state.data.isEmpty) {
                  return Container();
                } else {
                  List<Vac> listVacs = state.data;
                  return DropdownButtonFormField(
                    decoration: InputDecoration(
                      labelText: "نوع الأجازة",
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
                      fillColor: GeneralColor.white,
                    ),
                    validator: (value) =>
                    value == null ? "Select a vacation" : null,
                    dropdownColor: Colors.white,
                    value: addVacationData.selectedValue,
                    items: listVacs.map((Vac value) {
                      return DropdownMenuItem(
                        value: value,
                        child: Text(
                          value.nameAr ?? "",
                          style: const TextStyle(fontSize: 16),
                        ),
                      );
                    }).toList(),
                    onChanged: (value) {
                      Vac? vac = value as Vac?;
                      print("Value : " + vac!.nameAr!);
                      addVacationData.selectedValue = vac;
                    },
                  );
                }
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
              controller: addVacationData.notesText,
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
