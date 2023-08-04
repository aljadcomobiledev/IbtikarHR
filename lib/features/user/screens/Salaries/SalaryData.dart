part of 'SalaryImports.dart';
class SalaryData{

  void moveToSalaryStatement(BuildContext context){
   AutoRouter.of(context).push(const SalaryStatement());
  }
  void moveToSalarySystem(BuildContext context){
   AutoRouter.of(context).push(const SalarySystem());
  }
}