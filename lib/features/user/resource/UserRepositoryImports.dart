
import 'dart:convert';

import 'package:eastern/core/utils/ApisNames.dart';
import 'package:eastern/core/utils/Common.dart';
import 'package:eastern/features/auth/model/Body/LoginBody.dart';
import 'package:eastern/features/auth/model/Response/LoginResponse.dart';
import 'package:eastern/features/user/model/body/AddComplaintBody.dart';
import 'package:eastern/features/user/model/response/AddComplaintResponse.dart';
import 'package:eastern/features/user/model/response/BoardMembersResponse.dart';
import 'package:eastern/features/user/model/response/ComplaintDetailsResponse.dart';
import 'package:eastern/features/user/model/response/FAQResponse.dart';
import 'package:eastern/features/user/model/response/HistoryResponse.dart';
import 'package:eastern/features/user/model/response/NewsResponse.dart';
import 'package:eastern/features/user/model/response/TripsResponse.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:http/http.dart'as http;

import '../../../core/helpers/shared_data.dart';
import '../model/body/AddComplaintReplyBody.dart';
import '../model/body/PostDataBody.dart';
import '../model/response/ContactUsResponse.dart';
import '../model/response/ItemDetailsResponse.dart';
import '../model/response/MedicalComplaintsResponse.dart';
import '../model/response/NotificationsResponse.dart';
import '../model/response/OffersResponse.dart';
import '../model/response/PayrollResponse.dart';
import '../model/response/SalarySystemDetailsResponse.dart';
import '../model/response/SalarySystemResponse.dart';


part 'UserHttpMethods.dart';
part 'UserRepository.dart';