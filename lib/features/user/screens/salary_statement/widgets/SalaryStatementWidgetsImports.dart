import 'dart:io';

import 'package:dio/dio.dart';
import 'package:eastern/features/user/screens/salary_statement/SalaryStatementImports.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';

import '../../../../../core/utils/Colors/GeneralColor.dart';
import '../../../../../core/utils/check_permission.dart';
import '../../../../../core/utils/directory_path.dart';
import '../../../model/response/PayrollResponse.dart';
import 'package:path/path.dart' as p;

part 'BuildSalaryStatementListItem.dart';