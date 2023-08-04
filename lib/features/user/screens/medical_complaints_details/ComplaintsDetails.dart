part of 'ComplaintsDetailsImports.dart';

@RoutePage()
class ComplaintsDetails extends StatefulWidget {
  final num? id;
  final String? title;
  final num? complaintType;

  const ComplaintsDetails(
      {super.key,
      required this.id,
      required this.title,
      required this.complaintType});

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<ComplaintsDetails> {
  ComplaintsDetailsData complaintDetailsData = ComplaintsDetailsData();

  @override
  void initState() {
    print("compalintIdd: ${widget.complaintType}");

    if (widget.complaintType == 0) {
      complaintDetailsData.fetchComplaintDetails(context, widget.id);
    } else {
      complaintDetailsData.fetchPublicComplaintDetails(context, widget.id);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (widget.complaintType == 0) {
          AutoRouter.of(context).push(const MedicalComplaints());
        } else {
          AutoRouter.of(context).push(const PublicComplaints());
        }
        return false;
      },
      child: Scaffold(
        backgroundColor: GeneralColor.babyBlueBackground,
        body: Column(
          children: [
            BuildMainHeader(
              title: widget.title ?? "",
              fun: widget.complaintType == 0
                  ? () => AutoRouter.of(context)
                      .push(const MedicalComplaints())
                  : () => AutoRouter.of(context)
                      .push(const PublicComplaints()),
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: const ClampingScrollPhysics(),
                child: BlocBuilder<GenericBloc<ComplaintDetails?>,
                    GenericState<ComplaintDetails?>>(
                  bloc: complaintDetailsData.complaintDetailsCubit,
                  builder: (context, state) {
                    if (state is GenericUpdateState) {
                      return Column(
                        children: [
                          BuildOriginalComplaint(
                            complaintDetailsData: complaintDetailsData,
                            complaintDetails: state.data,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: widget.complaintType == 0
                                ? state.data!.medicalComplaintResponses!.length
                                : state.data!.publicComplaintResponses!.length,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemBuilder: (context, index) {
                              return BuildComplaintsRepliesList(
                                complaintDetailsData: complaintDetailsData,
                                medicalComplaintResponses:
                                    widget.complaintType == 0
                                        ? state.data!
                                            .medicalComplaintResponses![index]
                                        : state.data!
                                            .publicComplaintResponses![index],
                              );
                            },
                          )
                        ],
                      );
                    } else {
                      return Container(
                        margin: const EdgeInsets.only(top: 80),
                        child: LoadingDialog.showLoadingView(),
                      );
                    }
                  },
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            complaintDetailsData.moveToComplaintsReply(
                context, widget.id, widget.title, widget.complaintType);
          },
          backgroundColor: GeneralColor.appColor,
          label: const Text("الرد علي الشكوي"),
          icon: const Icon(Icons.reply),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      ),
    );
  }
}
