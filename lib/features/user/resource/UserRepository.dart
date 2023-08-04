part of 'UserRepositoryImports.dart';

class UserRepository {
  late BuildContext _context;
  late UserHttpMethods _userHttpMethods;

  UserRepository(BuildContext context) {
    _context = context;
    _userHttpMethods = UserHttpMethods(_context);
  }

  Future<List<SalarySystemItem>?> getSalarySystem(int page) =>
      _userHttpMethods.getSalarySystem(page);

  Future<List<SalaryDetailsData>?> getSalarySystemDetails(num? salaryId) =>
      _userHttpMethods.getSalarySystemDetails(salaryId);

  Future<List<PayrollItem>?> getPayroll(int page) =>
      _userHttpMethods.getPayroll(page);

  Future<List<NotificationsList>?> getNotifications(int page) =>
      _userHttpMethods.getNotifications(page);

  Future<List<MedicalComplaintItem>?> getMedicalComplaints(
          int page, String text) =>
      _userHttpMethods.getMedicalComplaints(page, text);

  Future<ComplaintDetails?> getMedicalComplaintsDetails(num? complaintId) =>
      _userHttpMethods.getMedicalComplaintsDetails(complaintId);

  Future<AddComplaintResponse> addMedicalComplaint(
          AddComplaintBody addComplaintBody , String type) =>
      _userHttpMethods.addMedicalComplaint(addComplaintBody,type);

  Future<AddComplaintResponse> addMedicalComplaintReply(
          AddComplaintReplyBody addComplaintReplyBody , String type) =>
      _userHttpMethods.addMedicalComplaintReply(addComplaintReplyBody,type);

  Future<List<MedicalComplaintItem>?> getPublicComplaints(
      int page, String text) =>
      _userHttpMethods.getPublicComplaints(page, text);

  Future<ComplaintDetails?> getPublicComplaintsDetails(num? complaintId) =>
      _userHttpMethods.getPublicComplaintsDetails(complaintId);

  Future<AddComplaintResponse> addPublicComplaint(
      AddComplaintBody addComplaintBody , String type) =>
      _userHttpMethods.addPublicComplaint(addComplaintBody,type);



  Future<AddComplaintResponse> addPublicComplaintReply(
      AddComplaintReplyBody addComplaintReplyBody , String type) =>
      _userHttpMethods.addPublicComplaintReply(addComplaintReplyBody,type);


  Future<List<ItemDetailsResponse>?> getNews(int page) =>
      _userHttpMethods.getNews(page);

  Future<List<ItemDetailsResponse>?> getOffers(int page) =>
      _userHttpMethods.getOffers(page);

  Future<List<ItemDetailsResponse>?> getTrips(int page) =>
      _userHttpMethods.getTrips(page);

  Future<List<FAQDetails>?> getFAQ(int page) => _userHttpMethods.getFAQ(page);
  Future<List<ContactUsItem>?> contactUsInternal(int page, String text) => _userHttpMethods.contactUsInternal(page,text);
  Future<List<ContactUsItem>?> contactUsPublic(int page,String text) => _userHttpMethods.contactUsPublic(page,text);

  Future<List<ItemDetailsResponse>?> getBoardMembers(int page) =>
      _userHttpMethods.getBoardMembers(page);

  Future<HistoryResponse?> getHistory() => _userHttpMethods.getHistory();
  Future<HistoryResponse?> getCEOSpeech() => _userHttpMethods.getCEOSpeech();
  Future<List<ContactUsItem>?> infoAboutUs(int page) => _userHttpMethods.infoAboutUs(page);

}
