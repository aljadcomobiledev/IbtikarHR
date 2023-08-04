part of 'AuthRepositoryImports.dart';

class AuthHttpMethods {
  final BuildContext context;

  AuthHttpMethods(this.context);

  Future<LoginResponse> login(LoginBody loginBody) async {
    print("responseappurl : " + ApisName.appUrl);

    try {
      var header = await Common.requestHeader();
      var url = Uri.parse(ApisName.appUrl + ApisName.login);

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


  Future<SignUpResponse> signup(SignUpBody signUpBody) async {
    var header = await Common.requestHeader();
    var url = Uri.parse(ApisName.appUrl + ApisName.signUp);

    return http
        .post(
      url,
      headers: header,
      body: jsonEncode(signUpBody.toJson()),
    )
        .then((http.Response response) async {
      print("response : " + response.statusCode.toString());
      print("response : " + response.body);
      SignUpResponse signUpResponse =
          SignUpResponse.fromJson(json.decode(response.body));
      return signUpResponse;
    });
  }
}
