part of 'UserRepositoryImports.dart';

class UserHttpMethods {
  final BuildContext context;

  UserHttpMethods(this.context);


  Future<List<LoansModel>?> getLoans() async {
    try {
      var header = await Common.requestHeaderWithToken();
      var url = Uri.parse("${ApisName.appUrl}${ApisName.loans}");

      return http.get(url,headers: header).then((http.Response response) async {
        final int statusCode = response.statusCode;
        if (statusCode != 200) {
          throw Exception(statusCode.toString());
        }

        print("responseloan : " + response.body);
        LoansResponse loansResponse =
        LoansResponse.fromJson(json.decode(response.body));
        return loansResponse.obj?.loans;


      });
    } catch (ex) {
      throw Exception(ex.toString());
    }
  }

  Future<AddLoanResponse> addLoan(AddLoanBody addLoanBody) async {
    try {
      var header = await Common.requestHeaderWithToken();
      var url = Uri.parse(ApisName.appUrl+ApisName.addLoan);

      return http
          .post(
        url,
        headers: header,
        body: jsonEncode(addLoanBody.toJson()),
      )
          .then((http.Response response) async {
        print("responseadding : " + response.statusCode.toString());
        print("responseadding : " + response.body);
        AddLoanResponse addLoanResponse =
        AddLoanResponse.fromJson(json.decode(response.body));
        return addLoanResponse;
      });
    } catch (ex) {
      EasyLoading.dismiss();
      throw Exception(ex.toString());
    }
  }

  Future<AddLoanResponse> removeLoan(String loanId) async {
    try {
      var header = await Common.requestHeaderWithToken();
      var url = Uri.parse("${ApisName.appUrl}${ApisName.removeLoan}?id=$loanId");

      return http
          .delete(
        url,
        headers: header,
      )
          .then((http.Response response) async {
        print("removeloan : " + response.statusCode.toString());
        print("removeloan : " + response.body);
        AddLoanResponse addLoanResponse =
        AddLoanResponse.fromJson(json.decode(response.body));
        return addLoanResponse;
      });
    } catch (ex) {
      EasyLoading.dismiss();
      throw Exception(ex.toString());
    }
  }



  Future<List<VacationRequests>?> getVacations() async {
    try {
      var header = await Common.requestHeaderWithToken();
      var url = Uri.parse("${ApisName.appUrl}${ApisName.vacations}");

      return http.get(url,headers: header).then((http.Response response) async {
        final int statusCode = response.statusCode;
        if (statusCode != 200) {
          throw Exception(statusCode.toString());
        }

        print("responseloan : " + response.body);
        VacationsResponse vacationsResponse =
        VacationsResponse.fromJson(json.decode(response.body));
        return vacationsResponse.obj?.vacationRequests;


      });
    } catch (ex) {
      throw Exception(ex.toString());
    }
  }
  Future<List<Vac>?> getVacationTypes() async {
    try {
      var header = await Common.requestHeaderWithToken();
      var url = Uri.parse("${ApisName.appUrl}${ApisName.vacationTypes}");

      return http.get(url,headers: header).then((http.Response response) async {
        final int statusCode = response.statusCode;
        if (statusCode != 200) {
          throw Exception(statusCode.toString());
        }

        print("responsevac : " + response.body);
        VacationTypesResponse vacationTypesResponse =
        VacationTypesResponse.fromJson(json.decode(response.body));
        return vacationTypesResponse.obj?.vac;


      });
    } catch (ex) {
      throw Exception(ex.toString());
    }
  }
  Future<AddLoanResponse> addVacation(AddVacationBody addVacationBody) async {
    try {
      var header = await Common.requestHeaderWithToken();
      var url = Uri.parse(ApisName.appUrl+ApisName.addVacation);

      return http
          .post(
        url,
        headers: header,
        body: jsonEncode(addVacationBody.toJson()),
      )
          .then((http.Response response) async {
        print("responseadding : " + response.statusCode.toString());
        print("responseadding : " + response.body);
        AddLoanResponse addLoanResponse =
        AddLoanResponse.fromJson(json.decode(response.body));
        return addLoanResponse;
      });
    } catch (ex) {
      EasyLoading.dismiss();
      throw Exception(ex.toString());
    }
  }
  Future<AddLoanResponse> removeVacation(String vacationId) async {
    try {
      var header = await Common.requestHeaderWithToken();
      var url = Uri.parse("${ApisName.appUrl}${ApisName.removeVacation}?id=$vacationId");

      return http
          .delete(
        url,
        headers: header,
      )
          .then((http.Response response) async {
        print("removvac : " + response.statusCode.toString());
        print("removvac : " + response.body);
        AddLoanResponse addLoanResponse =
        AddLoanResponse.fromJson(json.decode(response.body));
        return addLoanResponse;
      });
    } catch (ex) {
      EasyLoading.dismiss();
      throw Exception(ex.toString());
    }
  }









  Future<AddLoanResponse> addAttendance(AddAttendanceBody addAttendanceBody) async {
    try {
      var header = await Common.requestHeaderWithToken();
      var url = Uri.parse(ApisName.appUrl+ApisName.addAttendance);

      return http
          .post(
        url,
        headers: header,
        body: jsonEncode(addAttendanceBody.toJson()),
      )
          .then((http.Response response) async {
        print("responseadding : " + response.statusCode.toString());
        print("responseadding : " + response.body);
        AddLoanResponse addLoanResponse =
        AddLoanResponse.fromJson(json.decode(response.body));
        return addLoanResponse;
      });
    } catch (ex) {
      EasyLoading.dismiss();
      throw Exception(ex.toString());
    }
  }

}


