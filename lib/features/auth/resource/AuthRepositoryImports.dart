
import 'dart:convert';
import 'dart:ffi';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:eastern/core/utils/ApisNames.dart';
import 'package:eastern/core/utils/Common.dart';
import 'package:eastern/features/auth/model/Body/LoginBody.dart';
import 'package:eastern/features/auth/model/Body/SignUpBody.dart';
import 'package:eastern/features/auth/model/Response/LoginResponse.dart';
import 'package:eastern/features/auth/model/Response/SignUpResponse.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;


part 'AuthHttpMethods.dart';
part 'AuthRepository.dart';