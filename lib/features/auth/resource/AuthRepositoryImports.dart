
import 'dart:convert';
import 'dart:ffi';
import 'dart:io';

import 'package:IbtikarHR/core/utils/ApisNames.dart';
import 'package:IbtikarHR/core/utils/Common.dart';
import 'package:IbtikarHR/features/auth/model/Body/LoginBody.dart';
import 'package:IbtikarHR/features/auth/model/Body/SignUpBody.dart';
import 'package:IbtikarHR/features/auth/model/Response/BranchResponse.dart';
import 'package:IbtikarHR/features/auth/model/Response/LoginResponse.dart';
import 'package:IbtikarHR/features/auth/model/Response/SignUpResponse.dart';
import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';

import 'package:http/http.dart'as http;


part 'AuthHttpMethods.dart';
part 'AuthRepository.dart';