part of 'ContactUsImports.dart';

@RoutePage()
class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> with TickerProviderStateMixin {
  ContactUsData contactUsData = ContactUsData();
  TabController? tabController;

  @override
  void initState() {
    contactUsData.contactUsInternal(context, 1, "");
    contactUsData.contactUsInternalPagingController
        .addPageRequestListener((pageKey) {
      contactUsData.contactUsInternal(context, pageKey, "");
    });
    tabController = TabController(vsync: this, length: 2);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: GeneralColor.babyBlueBackground,
        body: Column(
          children: [
            Container(
              color: Colors.white, // Tab Bar color change

              child: const BuildMainHeader(
                title: "دليل التواصل",
              ),
            ),
            Container(
              color: Colors.white, // Tab Bar color change
              child: TabBar(
                // TabBar
                controller: tabController,
                unselectedLabelColor: GeneralColor.appColor,
                labelColor: GeneralColor.appColor,
                indicatorWeight: 2,
                indicatorColor: GeneralColor.appColor,
                tabs: <Widget>[
                  Tab(
                    text: "الارقام الداخلية",
                  ),
                  Tab(
                    text: "الارقام الخارجية",
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: TabBarView(
                // Tab Bar View
                physics: BouncingScrollPhysics(),
                controller: tabController,
                children: <Widget>[
                  BuildInternalContacts(),
                  BuildPublicContacts()
                ],
              ),
            ),
          ],
        ),

        // Column(
        //   children: [
        //     const BuildMainHeader(
        //       title: "دليل التواصل",
        //     ),
        //     Container(
        //       margin: const EdgeInsets.only(left: 8, right: 8),
        //       child: Padding(
        //           padding:
        //               const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
        //           child: Container(
        //             height: 56,
        //             alignment: Alignment.center,
        //             width: MediaQuery.of(context).size.width,
        //             padding: const EdgeInsets.symmetric(horizontal: 15),
        //             decoration: BoxDecoration(
        //                 color: GeneralColor.white,
        //                 borderRadius: BorderRadius.circular(25)),
        //             child: TextFormField(
        //               onChanged: (value) {
        //                 contactUsData.contactUsInternal(context, 1, value);
        //                 contactUsData.contactUsInternalPagingController
        //                     .addPageRequestListener((pageKey) {
        //                   contactUsData.contactUsInternal(
        //                       context, pageKey, value);
        //                 });
        //               },
        //               controller: contactUsData.searchInternalTxt,
        //               decoration: InputDecoration(
        //                 hintText: "بحث",
        //                 border: InputBorder.none,
        //                 hintStyle: TextStyle(color: GeneralColor.textColor3),
        //                 suffixIcon: IconButton(
        //                   onPressed: () {},
        //                   // onPressed: () => completeRegisterData.passwordCubit
        //                   //     .onUpdateData(!state.data),
        //                   icon: Icon(
        //                     Icons.search_outlined,
        //                     size: 20,
        //                     color: GeneralColor.searchIconColor,
        //                   ),
        //                 ),
        //               ),
        //               style: TextStyle(
        //                   color: GeneralColor.greyText.withOpacity(0.3),
        //                   fontWeight: FontWeight.normal,
        //                   fontSize: 16),
        //             ),
        //           )),
        //     ),
        //     Expanded(
        //       //BuildContactUsListItem
        //       child: PagedListView<int, ContactUsItem>(
        //         padding: const EdgeInsets.only(
        //             top: 8, bottom: 30, right: 5, left: 5),
        //         pagingController:
        //             contactUsData.contactUsInternalPagingController,
        //         shrinkWrap: true,
        //         physics: const BouncingScrollPhysics(
        //             parent: AlwaysScrollableScrollPhysics()),
        //         builderDelegate: PagedChildBuilderDelegate<ContactUsItem>(
        //             noItemsFoundIndicatorBuilder: (context) =>
        //                 const Center(child: Text("لا يوجد بيانات")),
        //             itemBuilder: (context, item, index) {
        //               return BuildContactUsListItem(
        //                 item: item,
        //                 index: index,
        //               );
        //             },
        //             noMoreItemsIndicatorBuilder: (context) {
        //               return Container();
        //             },
        //             firstPageProgressIndicatorBuilder: (context) => Container(
        //                 margin: const EdgeInsets.only(top: 150),
        //                 child: LoadingDialog.showLoadingView()),
        //             newPageProgressIndicatorBuilder: (context) =>
        //                 const CupertinoActivityIndicator()),
        //       ),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
