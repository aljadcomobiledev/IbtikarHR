part of 'RouterImports.dart';


@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: Splash.page),
        AutoRoute(page: Landing.page),
        AutoRoute(page: Login.page),
        AutoRoute(page: SignUp.page),
        AutoRoute(page: Home.page),
        AutoRoute(page: Salary.page),
        AutoRoute(page: MedicalService.page),
        AutoRoute(page: Information.page),
        AutoRoute(page: WhoWeAre.page),
        AutoRoute(page: Notifications.page),
        AutoRoute(page: GeneralServices.page),
        AutoRoute(page: SalaryStatement.page),
        AutoRoute(page: SalarySystem.page),
        AutoRoute(page: SalarySystemDetails.page),
        AutoRoute(page: News.page),
        AutoRoute(page: Offers.page),
        AutoRoute(page: Trips.page),
        AutoRoute(page: Details.page),
        AutoRoute(page: CEOSpeech.page),
        AutoRoute(page: History.page),
        AutoRoute(page: Members.page),
        AutoRoute(page: AboutUs.page),
        AutoRoute(page: ContactUs.page),
        AutoRoute(page: FAQ.page),
        AutoRoute(page: MedicalComplaints.page),
        AutoRoute(page: ComplaintsDetails.page),
        AutoRoute(page: AddComplaint.page),
        AutoRoute(page: AddComplaintReply.page),
        AutoRoute(page: ScanQR.page),
        AutoRoute(page: PublicComplaints.page),
      ];
}

