part of 'AuthRepositoryImports.dart';

class AuthRepository {
  late BuildContext _context;
  late AuthHttpMethods _authHttpMethods;

  AuthRepository(BuildContext context) {
    _context = context;
    _authHttpMethods = AuthHttpMethods(_context);
  }

  Future<LoginResponse> login(LoginBody loginBody) => _authHttpMethods.login(loginBody);

  Future<List<BranchResponse>?> branches() => _authHttpMethods.getBranches();
}
