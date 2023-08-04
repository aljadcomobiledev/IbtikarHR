part of 'ContactUsWidgetsImports.dart';

class BuildInternalContacts extends StatefulWidget {
  @override
  _BuildInternalContacts createState() => _BuildInternalContacts();
}

class _BuildInternalContacts extends State<BuildInternalContacts> {
  ContactUsData contactUsData = ContactUsData();

  @override
  void initState() {
    contactUsData.contactUsInternal(context, 1, "");
    contactUsData.contactUsInternalPagingController
        .addPageRequestListener((pageKey) {
      contactUsData.contactUsInternal(context, pageKey, "");
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
return
    Column(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 8, right: 8),
          child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
              child: Container(
                height: 56,
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                    color: GeneralColor.white,
                    borderRadius: BorderRadius.circular(25)),
                child: TextFormField(
                  onChanged: (value) {
                    contactUsData.contactUsInternal(context, 1, value);
                    contactUsData.contactUsInternalPagingController
                        .addPageRequestListener((pageKey) {
                      contactUsData.contactUsInternal(
                          context, pageKey, value);
                    });
                  },
                  controller: contactUsData.searchInternalTxt,
                  decoration: InputDecoration(
                    hintText: "بحث",
                    border: InputBorder.none,
                    hintStyle: TextStyle(color: GeneralColor.textColor3),
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
        Expanded(
          //BuildContactUsListItem
          child: PagedListView<int, ContactUsItem>(
            padding: const EdgeInsets.only(
                top: 8, bottom: 30, right: 5, left: 5),
            pagingController:
                contactUsData.contactUsInternalPagingController,
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()),
            builderDelegate: PagedChildBuilderDelegate<ContactUsItem>(
                noItemsFoundIndicatorBuilder: (context) =>
                    const Center(child: Text("لا يوجد بيانات")),
                itemBuilder: (context, item, index) {
                  return BuildContactUsListItem(
                    item: item,
                    index: index,
                  );
                },
                noMoreItemsIndicatorBuilder: (context) {
                  return Container();
                },
                firstPageProgressIndicatorBuilder: (context) => Container(
                    margin: const EdgeInsets.only(top: 150),
                    child: LoadingDialog.showLoadingView()),
                newPageProgressIndicatorBuilder: (context) =>
                    const CupertinoActivityIndicator()),
          ),
        ),
      ],
    );

  }
}
