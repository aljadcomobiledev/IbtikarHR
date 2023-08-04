part of 'AddComplaintWidgetsImports.dart';

class BuildFormAddComplaint extends StatelessWidget {
  final AddComplaintData addComplaintData;

  const BuildFormAddComplaint({super.key, required this.addComplaintData});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: addComplaintData.keyForm,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                  decoration: BoxDecoration(
                      color: GeneralColor.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    controller: addComplaintData.titleText,
                    decoration: const InputDecoration(
                      hintText: "العنوان",
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
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                  decoration: BoxDecoration(
                      color: GeneralColor.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    maxLines: 6,
                    controller: addComplaintData.subjectText,
                    decoration: const InputDecoration(
                      hintText: "الموضوع",
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
            BlocBuilder<GenericBloc<String>,
                    GenericState<String>>(
                bloc: addComplaintData.attachmentCubit,
                builder: (context, state) {
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    child: InkWell(
                      onTap: () async {
                        FilePickerResult? result =
                            await FilePicker.platform.pickFiles();

                        if (result != null) {
                          File file = File(result.files.single.path!);

                          addComplaintData.attachmentCubit.onUpdateData(result.files.single.name);
                          addComplaintData.attachmentPath=result.files.single.path!;
                          addComplaintData.attachmentExtention=result.files.single.extension!;
                          print(result.files.single.path);
                        } else {
                          print("errorrrr");
                        }
                      },
                      child: Container(
                        height: 56,
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 0),
                        decoration: BoxDecoration(
                            color: GeneralColor.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              addComplaintData.attachmentCubit.state.data,
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16,
                                  color: GeneralColor.black),
                            ),
                            Image.asset(
                              "assets/images/attachfile.png",
                              width: 20,
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
