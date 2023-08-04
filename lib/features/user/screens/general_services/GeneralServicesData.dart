part of 'GeneralServicesImports.dart';

class GeneralServicesData {
  void moveToContactUS(BuildContext context) {
    AutoRouter.of(context).push(const ContactUs());
  }

  void moveToQuestions(BuildContext context) {
    AutoRouter.of(context).push(const FAQ());
  }

  void moveToComplaints(BuildContext context) {
    AutoRouter.of(context).push(const PublicComplaints());
  }
}
