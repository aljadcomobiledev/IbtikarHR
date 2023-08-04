import 'dart:io';

import 'package:eastern/core/utils/ApisNames.dart';
import 'package:eastern/core/utils/Colors/GeneralColor.dart';
import 'package:eastern/features/user/screens/medical_service/MedicalServiceImports.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:dio/dio.dart';
import 'package:toast/toast.dart';

import 'package:open_file/open_file.dart';
import '../../../../../core/utils/check_permission.dart';
import '../../../../../core/utils/directory_path.dart';
import 'package:path/path.dart' as p;
import '../../Salaries/widgets/SalaryWidgetsImports.dart';

part 'BuildMedicalServicePage.dart';
