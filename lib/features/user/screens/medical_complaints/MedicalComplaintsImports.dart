import 'package:auto_route/auto_route.dart';
import 'package:eastern/core/utils/routers/RouterImports.gr.dart';
import 'package:eastern/features/user/model/SalarySystemModel.dart';
import 'package:eastern/features/user/screens/Information/widgets/InformationWidgetsImports.dart';
import 'package:eastern/features/user/screens/medical_complaints/widgets/MedicalComplaintsWidgetsImports.dart';
import 'package:eastern/features/user/screens/salary_statement/widgets/SalaryStatementWidgetsImports.dart';
import 'package:eastern/features/user/screens/salary_system/widgets/SalarySystemWidgetsImports.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../../core/helpers/shared_data.dart';
import '../../../../core/utils/Colors/GeneralColor.dart';
import '../../../../core/widgets/BuildMainHeader.dart';
import '../../../../core/widgets/LoadingDialog.dart';
import '../../model/response/MedicalComplaintsResponse.dart';
import '../../resource/UserRepositoryImports.dart';

part 'MedicalComplaints.dart';
part 'MedicalComplaintsData.dart';