part of 'AuthRepositoryImports.dart';

class AuthHttpMethods {
  final BuildContext context;

  AuthHttpMethods(this.context);

  Future<LoginResponse> login(LoginBody loginBody) async {
    print("responseappurl : " + ApisName.appUrl);

    try {
      var header = await Common.requestHeader();
      // var url = Uri.parse(ApisName.appUrl + ApisName.login);
      var url = Uri.parse("https://innovationksa.ddns.net:9198/Login");

      return http
          .post(
        url,
        headers: header,
        body: jsonEncode(loginBody.toJson()),
      )
          .then((http.Response response) async {
        final int statusCode = response.statusCode;
        // if (statusCode != 200) {
        //   print("response : " + statusCode.toString());
        //
        //   throw Exception(statusCode.toString());
        //
        // }
        print("response : " + response.statusCode.toString());
        print("response : " + response.body);
        LoginResponse loginResponse =
            LoginResponse.fromJson(json.decode(response.body));
        return loginResponse;
      });
    } catch (ex) {
      print("exception ${ex.toString()}");
      print("exception ${ApisName.appUrl}");

      throw Exception(ex.toString());
    }
  }

  Future<List<BranchResponse>?> getBranches() async {
    try {
      var header = await Common.requestHeaderWithToken();
      var url = Uri.parse("${ApisName.appUrl}${ApisName.branches}");

      return http.get(url).then((http.Response response) async {
        final int statusCode = response.statusCode;
        print("responsebranch : " + response.body);

        if (statusCode != 200) {
          throw Exception(statusCode.toString());
        }


        final List body = json.decode(response.body);
        return List<BranchResponse>.from(
            body.map((e) => BranchResponse.fromJson(e)));
      });
    } catch (ex) {
      throw Exception(ex.toString());
    }
  }
}
