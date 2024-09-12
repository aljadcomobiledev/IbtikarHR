part of 'UserRepositoryImports.dart';

class UserRepository {
  late BuildContext _context;
  late UserHttpMethods _userHttpMethods;

  UserRepository(BuildContext context) {
    _context = context;
    _userHttpMethods = UserHttpMethods(_context);
  }

  Future<List<LoansModel>?> getLoans() =>
      _userHttpMethods.getLoans();

  Future<AddLoanResponse> addLoan(
      AddLoanBody addLoanBody ) =>
      _userHttpMethods.addLoan(addLoanBody);

  Future<AddLoanResponse> removeLoan(String loanId) =>
      _userHttpMethods.removeLoan(loanId);

//////////////////////////////////////

  Future<List<VacationRequests>?> getVacations() =>
      _userHttpMethods.getVacations();

  Future<List<Vac>?> getVacationTypes() =>
      _userHttpMethods.getVacationTypes();

  Future<AddLoanResponse> addVacation(
      AddVacationBody addVacationBody ) =>
      _userHttpMethods.addVacation(addVacationBody);

  Future<AddLoanResponse> removeVacation(String loanId) =>
      _userHttpMethods.removeVacation(loanId);

///////////////////////////////////////

  Future<AddLoanResponse> addAttendance(
      AddAttendanceBody addAttendanceBody ) =>
      _userHttpMethods.addAttendance(addAttendanceBody);
}