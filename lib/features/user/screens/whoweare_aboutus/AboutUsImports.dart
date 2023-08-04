import 'package:auto_route/auto_route.dart';
import 'package:eastern/core/utils/routers/RouterImports.gr.dart';
import 'package:eastern/features/user/model/AboutUsModel.dart';
import 'package:eastern/features/user/model/SalarySystemModel.dart';
import 'package:eastern/features/user/screens/Information/widgets/InformationWidgetsImports.dart';
import 'package:eastern/features/user/screens/salary_statement/widgets/SalaryStatementWidgetsImports.dart';
import 'package:eastern/features/user/screens/salary_system/widgets/SalarySystemWidgetsImports.dart';
import 'package:eastern/features/user/screens/whoweare_aboutus/widgets/AboutUsWidgetsImports.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../../core/helpers/shared_data.dart';
import '../../../../core/utils/Colors/GeneralColor.dart';
import '../../../../core/widgets/BuildMainHeader.dart';
import '../../../../core/widgets/LoadingDialog.dart';
import '../../model/response/ContactUsResponse.dart';
import '../../resource/UserRepositoryImports.dart';
import '../general_services_contact_us/widgets/ContactUsWidgetsImports.dart';

part 'AboutUs.dart';
part 'AboutUsData.dart';