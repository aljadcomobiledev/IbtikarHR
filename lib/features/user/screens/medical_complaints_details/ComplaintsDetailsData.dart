part of 'ComplaintsDetailsImports.dart';

class ComplaintsDetailsData {


  GenericBloc<ComplaintDetails?> complaintDetailsCubit = GenericBloc(null);

  void fetchComplaintDetails(BuildContext context, num? complaintId) async {
    ComplaintDetails? complaintDetails =
    await UserRepository(context).getMedicalComplaintsDetails(complaintId);
    complaintDetailsCubit.onUpdateData(complaintDetails);
  }


  void fetchPublicComplaintDetails(BuildContext context, num? complaintId) async {
    print("compalintIdd2: ${complaintId}");


    ComplaintDetails? complaintDetails =
    await UserRepository(context).getPublicComplaintsDetails(complaintId);
    complaintDetailsCubit.onUpdateData(complaintDetails);
  }



  void moveToComplaintsReply(BuildContext context, num? id,String? title, num? complaintType){
    AutoRouter.of(context).push(AddComplaintReply(id: id, title: title,complaintType:complaintType));


  }


}
