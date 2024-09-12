
import 'dart:convert';
import 'package:IbtikarHR/core/utils/ApisNames.dart';
import 'package:IbtikarHR/core/utils/Common.dart';
import 'package:IbtikarHR/features/user/model/body/AddAttendanceBody.dart';
import 'package:IbtikarHR/features/user/model/body/AddLoanBody.dart';
import 'package:IbtikarHR/features/user/model/response/AddLoanResponse.dart';
import 'package:IbtikarHR/features/user/model/response/AddVacationBody.dart';
import 'package:IbtikarHR/features/user/model/response/LoansResponse.dart';
import 'package:IbtikarHR/features/user/screens/loans/LoansImports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'package:http/http.dart'as http;

import '../../../core/helpers/shared_data.dart';
import '../model/response/VacationTypesResponse.dart';
import '../model/response/VacationsResponse.dart';



part 'UserHttpMethods.dart';
part 'UserRepository.dart';