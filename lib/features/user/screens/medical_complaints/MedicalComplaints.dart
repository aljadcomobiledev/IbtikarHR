part of 'MedicalComplaintsImports.dart';

@RoutePage()
class MedicalComplaints extends StatefulWidget {
  @override
  _MedicalComplaintsSystemState createState() =>
      _MedicalComplaintsSystemState();
}

class _MedicalComplaintsSystemState extends State<MedicalComplaints> {
  MedicalComplaintsData medicalComplaintsData = MedicalComplaintsData();

  @override
  void initState() {
    medicalComplaintsData.fetchMedicalComplaints(context, 1, "");
    medicalComplaintsData.medicalComplaintsController.addPageRequestListener((
        pageKey) {
      medicalComplaintsData.fetchMedicalComplaints(context, pageKey, "");
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return
      WillPopScope(
          onWillPop: () async {
            AutoRouter
                .of(context)
                .push(
                const Home());
                return false;
            },
          child:
          Scaffold(
            backgroundColor: GeneralColor.babyBlueBackground,
            body: Column(
              children: [
                BuildMainHeader(
                  title: "شكاوي طبية",
                  fun: () =>
                      AutoRouter.of(context).push(
                          const Home()),

                ),
                Container(
                  margin: const EdgeInsets.only(left: 8, right: 8),
                  child: Padding(
                      padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
                      child: Container(
                        height: 56,
                        alignment: Alignment.center,
                        width: MediaQuery
                            .of(context)
                            .size
                            .width,
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        decoration: BoxDecoration(
                            color: GeneralColor.white,
                            borderRadius: BorderRadius.circular(25)),
                        child: TextFormField(
                          onChanged: (value) {
                            medicalComplaintsData.fetchMedicalComplaints(
                                context, 1, value);
                            medicalComplaintsData.medicalComplaintsController
                                .addPageRequestListener((pageKey) {
                              medicalComplaintsData.fetchMedicalComplaints(
                                  context, pageKey, value);
                            });
                          },
                          controller: medicalComplaintsData.searchTxt,
                          decoration: InputDecoration(
                            hintText: "بحث",
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                                color: GeneralColor.textColor3),
                            suffixIcon: IconButton(
                              onPressed: () {},
                              // onPressed: () => completeRegisterData.passwordCubit
                              //     .onUpdateData(!state.data),
                              icon: Icon(
                                Icons.search_outlined,
                                size: 20,
                                color: GeneralColor.searchIconColor,
                              ),
                            ),
                          ),
                          style: TextStyle(
                              color: GeneralColor.greyText.withOpacity(0.3),
                              fontWeight: FontWeight.normal,
                              fontSize: 16),
                        ),
                      )),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
                  child: Text(
                    "الشكاوي السابقة",
                    textAlign: TextAlign.left,
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: GeneralColor.textColor2),
                  ),


                ),
                Expanded(
                  child:
                  PagedListView<int, MedicalComplaintItem>(
                    padding:
                    const EdgeInsets.only(
                        top: 8, bottom: 30, right: 5, left: 5),
                    pagingController: medicalComplaintsData
                        .medicalComplaintsController,
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(
                        parent: AlwaysScrollableScrollPhysics()),
                    builderDelegate: PagedChildBuilderDelegate<
                        MedicalComplaintItem>(
                        noItemsFoundIndicatorBuilder: (context) =>
                        const Center(child: Text("لا يوجد شكاوي طبية")),
                        itemBuilder: (context, item, index) {
                          return BuildMedicalComplaintsListItem(
                            item: item,
                            index: index,
                            medicalComplaintsData: medicalComplaintsData,
                          );
                        },
                        noMoreItemsIndicatorBuilder: (context) {
                          return Container();
                        },
                        firstPageProgressIndicatorBuilder: (context) =>
                            Container(
                                margin: const EdgeInsets.only(top: 150),
                                child: LoadingDialog.showLoadingView()),
                        newPageProgressIndicatorBuilder: (context) =>
                        const CupertinoActivityIndicator()),
                  ),


                ),

              ],
            ),
            floatingActionButton: FloatingActionButton(
                onPressed: () {
                  medicalComplaintsData.moveToAddComplaint(
                      context, 0, "شكوي جديدة");
                },
                backgroundColor: GeneralColor.appColor,
                child: const Icon(Icons.add)
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation
                .startFloat,
          ));
  }
}
