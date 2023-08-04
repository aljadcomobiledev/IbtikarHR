import 'dart:io';

import 'package:dio/dio.dart';
import 'package:eastern/core/utils/colors/GeneralColor.dart';
import 'package:eastern/features/user/screens/medical_complaints_details/ComplaintsDetailsImports.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
import 'package:open_file/open_file.dart';
import 'package:path/path.dart' as p;

import '../../../../../core/utils/check_permission.dart';
import '../../../../../core/utils/directory_path.dart';
import '../../../model/response/ComplaintDetailsResponse.dart';


part 'BuildOriginalComplaint.dart';
part 'BuildComplaintsRepliesList.dart';
