part of 'UserRepositoryImports.dart';

class UserHttpMethods {
  final BuildContext context;

  UserHttpMethods(this.context);

  Future<List<SalarySystemItem>?> getSalarySystem(int page) async {
    try {
      var header = await Common.requestHeaderWithToken();
      var url = Uri.parse("${ApisName.appUrl}${ApisName.salarySystem}?PageIndex=$page&PageSize=${SharedData.pageSize}");

      return http
          .get(
        url,
        headers: header,
      )
          .then((http.Response response) async {
        final int statusCode = response.statusCode;
        if (statusCode != 200) {
          throw Exception(statusCode.toString());
        }

        SalarySystemResponse salarySystemResponse =
        SalarySystemResponse.fromJson(json.decode(response.body));
        return salarySystemResponse.response?.data?.list;
      });
    } catch (ex) {
      throw Exception(ex.toString());
    }
  }
  Future<List<SalaryDetailsData>?> getSalarySystemDetails(num? salaryId) async {
    try {
      var header = await Common.requestHeaderWithToken();
      var url = Uri.parse("${ApisName.appUrl}${ApisName.salarySystemDetails}?id=$salaryId");

      return http
          .get(
        url,
        headers: header,
      )
          .then((http.Response response) async {
        final int statusCode = response.statusCode;
        if (statusCode != 200) {
          throw Exception(statusCode.toString());
        }

        SalarySystemDetailsResponse salarySystemDetailsResponse =
        SalarySystemDetailsResponse.fromJson(json.decode(response.body));
        return salarySystemDetailsResponse.response?.data;
      });
    } catch (ex) {
      throw Exception(ex.toString());
    }
  }

  Future<List<PayrollItem>?> getPayroll(int page) async {
    try {
      var header = await Common.requestHeaderWithToken();
      var url = Uri.parse("${ApisName.appUrl}${ApisName.payroll}?PageIndex=$page&PageSize=${SharedData.pageSize}");

      return http
          .get(
        url,
        headers: header,
      )
          .then((http.Response response) async {
        final int statusCode = response.statusCode;
        if (statusCode != 200) {
          throw Exception(statusCode.toString());
        }

        PayrollResponse payrollResponse =
        PayrollResponse.fromJson(json.decode(response.body));
        return payrollResponse.response?.data?.list;
      });
    } catch (ex) {
      throw Exception(ex.toString());
    }
  }

  Future<List<NotificationsList>?> getNotifications(int page) async {
    try {
      var header = await Common.requestHeaderWithToken();
      var url = Uri.parse("${ApisName.appUrl}${ApisName.notifications}?PageIndex=$page&PageSize=${SharedData.pageSize}");

      return http
          .get(
        url,
        headers: header,
      )
          .then((http.Response response) async {
        final int statusCode = response.statusCode;
        if (statusCode != 200) {
          throw Exception(statusCode.toString());

        }

        NotificationsResponse notificationsResponse =
        NotificationsResponse.fromJson(json.decode(response.body));
        return notificationsResponse.response?.data?.list;
      });
    } catch (ex) {

      throw Exception(ex.toString());
    }
  }

  Future<List<MedicalComplaintItem>?> getMedicalComplaints(int page,String value) async {

    PostDataBody postDataBody =
    PostDataBody(PageIndex: page, PageSize: SharedData.pageSize, Search: value);
    try {
      var header = await Common.requestHeaderWithToken();

      Uri url = Uri.parse("${ApisName.appUrl}${ApisName.medicalComplaints}");



      return http
          .post(
        url,
        headers: header,
        body: jsonEncode(postDataBody.toJson()),
      )
          .then((http.Response response) async {
        print("responsem : " + response.statusCode.toString());
        print("responsem : " + response.body);
        final int statusCode = response.statusCode;
        if (statusCode != 200) {
          throw Exception(statusCode.toString());
        }

        MedicalComplaintsResponse medicalComplaintsResponse =
        MedicalComplaintsResponse.fromJson(json.decode(response.body));
        return medicalComplaintsResponse.response?.data?.list;
      });
    } catch (ex) {
      throw Exception(ex.toString());
    }
  }
  Future<ComplaintDetails?> getMedicalComplaintsDetails(num? complaintId) async {
    try {
      var header = await Common.requestHeaderWithToken();
      var url = Uri.parse("${ApisName.appUrl}${ApisName.medicalComplaintsDetails}/$complaintId");

      return http
          .get(
        url,
        headers: header,
      )
          .then((http.Response response) async {
        final int statusCode = response.statusCode;
        if (statusCode != 200) {
          throw Exception(statusCode.toString());
        }

        ComplaintDetailsResponse complaintDetailsResponse =
        ComplaintDetailsResponse.fromJson(json.decode(response.body));
        return complaintDetailsResponse.response!.data;
      });
    } catch (ex) {
      throw Exception(ex.toString());
    }
  }
  Future<AddComplaintResponse> addMedicalComplaint(AddComplaintBody addComplaintBody, String type) async {
    try {
      var header = await Common.requestHeaderWithToken();
      var url = Uri.parse(ApisName.appUrl+ApisName.addMedicalComplaints);

      return http
          .post(
        url,
        headers: header,
        body: jsonEncode(addComplaintBody.toJson()),
      )
          .then((http.Response response) async {
        print("responseadding : " + response.statusCode.toString());
        print("responseadding : " + response.body);
        AddComplaintResponse addComplaintResponse =
        AddComplaintResponse.fromJson(json.decode(response.body));
        return addComplaintResponse;
      });
    } catch (ex) {
      EasyLoading.dismiss();
      throw Exception(ex.toString());
    }
  }
  Future<AddComplaintResponse> addMedicalComplaintReply(AddComplaintReplyBody addComplaintReplyBody, String type) async {
    try {
      var header = await Common.requestHeaderWithToken();
      var url = Uri.parse(ApisName.appUrl+ApisName.addMedicalComplaintReply);

      return http
          .post(
        url,
        headers: header,
        body: jsonEncode(addComplaintReplyBody.toJson()),
      )
          .then((http.Response response) async {

        print("responseadding : " + response.statusCode.toString());
        print("responseadding : " + response.body);
        AddComplaintResponse addComplaintResponse =
        AddComplaintResponse.fromJson(json.decode(response.body));
        return addComplaintResponse;
      });
    } catch (ex) {
      EasyLoading.dismiss();
      throw Exception(ex.toString());
    }
  }


  Future<List<MedicalComplaintItem>?> getPublicComplaints(int page,String value) async {
    try {
      var header = await Common.requestHeaderWithToken();

      PostDataBody postDataBody =
      PostDataBody(PageIndex: page, PageSize: SharedData.pageSize, Search: value);

      Uri url = Uri.parse("${ApisName.appUrl}${ApisName.publicComplaints}");


      return http
          .post(
        url,
        headers: header,
        body: jsonEncode(postDataBody.toJson()),

      )
          .then((http.Response response) async {
        final int statusCode = response.statusCode;
        if (statusCode != 200) {
          throw Exception(statusCode.toString());
        }

        MedicalComplaintsResponse medicalComplaintsResponse =
        MedicalComplaintsResponse.fromJson(json.decode(response.body));
        return medicalComplaintsResponse.response?.data?.list;
      });
    } catch (ex) {
      throw Exception(ex.toString());
    }
  }
  Future<ComplaintDetails?> getPublicComplaintsDetails(num? complaintId) async {
    try {
      var header = await Common.requestHeaderWithToken();
      var url = Uri.parse("${ApisName.appUrl}${ApisName.publicComplaintsDetails}/$complaintId");

      return http
          .get(
        url,
        headers: header,
      )
          .then((http.Response response) async {
        final int statusCode = response.statusCode;
        print("pucliccomplaintdetails : " + response.statusCode.toString());
        print("pucliccomplaintdetails : " + response.body);
        if (statusCode != 200) {
          throw Exception(statusCode.toString());
        }

        ComplaintDetailsResponse complaintDetailsResponse =
        ComplaintDetailsResponse.fromJson(json.decode(response.body));
        return complaintDetailsResponse.response!.data;
      });
    } catch (ex) {
      throw Exception(ex.toString());
    }
  }
  Future<AddComplaintResponse> addPublicComplaint(AddComplaintBody addComplaintBody, String type) async {
    try {
      var header = await Common.requestHeaderWithToken();
      var url = Uri.parse(ApisName.appUrl+ApisName.addPublicComplaints);

      return http
          .post(
        url,
        headers: header,
        body: jsonEncode(addComplaintBody.toJson()),
      )
          .then((http.Response response) async {
        print("responseadding : " + response.statusCode.toString());
        print("responseadding : " + response.body);
        AddComplaintResponse addComplaintResponse =
        AddComplaintResponse.fromJson(json.decode(response.body));
        return addComplaintResponse;
      });
    } catch (ex) {
      EasyLoading.dismiss();
      throw Exception(ex.toString());
    }
  }
  Future<AddComplaintResponse> addPublicComplaintReply(AddComplaintReplyBody addComplaintReplyBody, String type) async {
    try {
      var header = await Common.requestHeaderWithToken();
      var url = Uri.parse(ApisName.appUrl+ApisName.addPublicComplaintReply);

      return http
          .post(
        url,
        headers: header,
        body: jsonEncode(addComplaintReplyBody.toJson()),
      )
          .then((http.Response response) async {

        print("responseadding : " + response.statusCode.toString());
        print("responseadding : " + response.body);
        AddComplaintResponse addComplaintResponse =
        AddComplaintResponse.fromJson(json.decode(response.body));
        return addComplaintResponse;
      });
    } catch (ex) {
      EasyLoading.dismiss();
      throw Exception(ex.toString());
    }
  }



  Future<List<ItemDetailsResponse>?> getNews(int page) async {
    try {
      var header = await Common.requestHeaderWithToken();
      var url = Uri.parse("${ApisName.appUrl}${ApisName.news}?PageIndex=$page&PageSize=${SharedData.pageSize}");

      return http
          .get(
        url,
        headers: header,
      )
          .then((http.Response response) async {
        final int statusCode = response.statusCode;
        if (statusCode != 200) {
          throw Exception(statusCode.toString());
        }
        NewsResponse newsResponse =
        NewsResponse.fromJson(json.decode(response.body));
          return newsResponse.response?.data?.list;
      });
    } catch (ex) {
      throw Exception(ex.toString());
    }
  }
  Future<List<ItemDetailsResponse>?> getOffers(int page) async {
    try {
      var header = await Common.requestHeaderWithToken();
      var url = Uri.parse("${ApisName.appUrl}${ApisName.offers}?PageIndex=$page&PageSize=${SharedData.pageSize}");

      return http
          .get(
        url,
        headers: header,
      )
          .then((http.Response response) async {
        final int statusCode = response.statusCode;
        if (statusCode != 200) {
          throw Exception(statusCode.toString());
        }

        OffersResponse newsResponse =
        OffersResponse.fromJson(json.decode(response.body));
        return newsResponse.response?.data?.list;
      });
    } catch (ex) {
      throw Exception(ex.toString());
    }
  }
  Future<List<ItemDetailsResponse>?> getTrips(int page) async {
    try {
      var header = await Common.requestHeaderWithToken();
      var url = Uri.parse("${ApisName.appUrl}${ApisName.trips}?PageIndex=$page&PageSize=${SharedData.pageSize}");

      return http
          .get(
        url,
        headers: header,
      )
          .then((http.Response response) async {
        final int statusCode = response.statusCode;
        if (statusCode != 200) {
          throw Exception(statusCode.toString());
        }

        TripsResponse newsResponse =
        TripsResponse.fromJson(json.decode(response.body));
        return newsResponse.response?.data?.list;
      });
    } catch (ex) {
      throw Exception(ex.toString());
    }
  }





  Future<List<FAQDetails>?> getFAQ(int page) async {
    try {
      var header = await Common.requestHeaderWithToken();
      var url = Uri.parse("${ApisName.appUrl}${ApisName.faq}?PageIndex=$page&PageSize=${SharedData.pageSize}");

      return http
          .get(
        url,
        headers: header,
      )
          .then((http.Response response) async {
        final int statusCode = response.statusCode;
        if (statusCode != 200) {
          throw Exception(statusCode.toString());
        }

        FaqResponse faqResponse =
        FaqResponse.fromJson(json.decode(response.body));
        return faqResponse.response!.list;
      });
    } catch (ex) {
      throw Exception(ex.toString());
    }
  }
  Future<List<ContactUsItem>?> contactUsInternal(int page,String text) async {
    try {
      var header = await Common.requestHeaderWithToken();
      PostDataBody postDataBody =
      PostDataBody(PageIndex: page, PageSize: SharedData.pageSize, Search: text);

      Uri url = Uri.parse("${ApisName.appUrl}${ApisName.contactUsInternal}");

      return http
          .post(
        url,
        headers: header,
        body: jsonEncode(postDataBody.toJson()),

      )
          .then((http.Response response) async {
        final int statusCode = response.statusCode;
        if (statusCode != 200) {
          throw Exception(statusCode.toString());
        }

        ContactUsResponse contactUsResponse =
        ContactUsResponse.fromJson(json.decode(response.body));
        return contactUsResponse.response!.list;
      });
    } catch (ex) {
      throw Exception(ex.toString());
    }
  }
  Future<List<ContactUsItem>?> contactUsPublic(int page,String text) async {
    try {
      var header = await Common.requestHeaderWithToken();
      PostDataBody postDataBody =
      PostDataBody(PageIndex: page, PageSize: SharedData.pageSize, Search: text);

      Uri url = Uri.parse("${ApisName.appUrl}${ApisName.contactUsPublic}");

      return http
          .post(
        url,
        headers: header,
        body: jsonEncode(postDataBody.toJson()),

      )
          .then((http.Response response) async {
        final int statusCode = response.statusCode;
        if (statusCode != 200) {
          throw Exception(statusCode.toString());
        }

        ContactUsResponse contactUsResponse =
        ContactUsResponse.fromJson(json.decode(response.body));
        return contactUsResponse.response!.list;
      });
    } catch (ex) {
      throw Exception(ex.toString());
    }
  }



  Future<List<ItemDetailsResponse>?> getBoardMembers(int page) async {
    try {
      var header = await Common.requestHeaderWithToken();
      var url = Uri.parse("${ApisName.appUrl}${ApisName.boardMembers}?PageIndex=$page&PageSize=${SharedData.pageSize}");

      return http
          .get(
        url,
        headers: header,
      )
          .then((http.Response response) async {
        final int statusCode = response.statusCode;
        if (statusCode != 200) {
          throw Exception(statusCode.toString());
        }

        BoardMembersResponse boardMembersResponse =
        BoardMembersResponse.fromJson(json.decode(response.body));
        return boardMembersResponse.response?.list;
      });
    } catch (ex) {
      throw Exception(ex.toString());
    }
  }

  Future<HistoryResponse?> getHistory() async {
    try {
      var header = await Common.requestHeaderWithToken();
      var url = Uri.parse("${ApisName.appUrl}${ApisName.history}");

      return http
          .get(
        url,
        headers: header,
      )
          .then((http.Response response) async {
        final int statusCode = response.statusCode;
        if (statusCode != 200) {
          throw Exception(statusCode.toString());
        }

        HistoryResponse historyResponse =
        HistoryResponse.fromJson(json.decode(response.body));
        return historyResponse;
      });
    } catch (ex) {
      throw Exception(ex.toString());
    }
  }
  Future<HistoryResponse?> getCEOSpeech() async {
    try {
      var header = await Common.requestHeaderWithToken();
      var url = Uri.parse("${ApisName.appUrl}${ApisName.ceoSpeech}");

      return http
          .get(
        url,
        headers: header,
      )
          .then((http.Response response) async {
        final int statusCode = response.statusCode;
        if (statusCode != 200) {
          throw Exception(statusCode.toString());
        }

        HistoryResponse historyResponse =
        HistoryResponse.fromJson(json.decode(response.body));
        return historyResponse;
      });
    } catch (ex) {
      throw Exception(ex.toString());
    }
  }
  Future<List<ContactUsItem>?>infoAboutUs(int page) async {
    try {
      var header = await Common.requestHeaderWithToken();
      var url = Uri.parse("${ApisName.appUrl}${ApisName.infoAboutUs}?PageIndex=$page&PageSize=${SharedData.pageBiggerSize}");

      return http
          .get(
        url,
        headers: header,
      )
          .then((http.Response response) async {
        final int statusCode = response.statusCode;
        if (statusCode != 200) {
          throw Exception(statusCode.toString());
        }

        ContactUsResponse contactUsResponse =
        ContactUsResponse.fromJson(json.decode(response.body));
        return contactUsResponse.response!.list;
      });
    } catch (ex) {
      throw Exception(ex.toString());
    }
  }




}
