part of 'MedicalServiceImports.dart';
class MedicalServiceData{

  void moveToMedicalComplaints(BuildContext context){
   AutoRouter.of(context).push(const MedicalComplaints());

  }
}