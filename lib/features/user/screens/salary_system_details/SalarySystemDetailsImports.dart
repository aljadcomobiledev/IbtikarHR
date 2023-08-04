import 'package:auto_route/auto_route.dart';
import 'package:eastern/features/user/model/SalarySystemDetailsModel.dart';
import 'package:eastern/features/user/model/SalarySystemModel.dart';
import 'package:eastern/features/user/resource/UserRepositoryImports.dart';
import 'package:eastern/features/user/screens/Information/widgets/InformationWidgetsImports.dart';
import 'package:eastern/features/user/screens/salary_statement/widgets/SalaryStatementWidgetsImports.dart';
import 'package:eastern/features/user/screens/salary_system/widgets/SalarySystemWidgetsImports.dart';
import 'package:eastern/features/user/screens/salary_system_details/widgets/SalarySystemDetailsWidgetsImports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/blocs/generic_bloc/generic_cubit.dart';
import '../../../../core/utils/Colors/GeneralColor.dart';
import '../../../../core/widgets/BuildMainHeader.dart';
import '../../../../core/widgets/LoadingDialog.dart';
import '../../../auth/resource/AuthRepositoryImports.dart';
import '../../model/response/SalarySystemDetailsResponse.dart';
import '../../model/response/SalarySystemResponse.dart';

part 'SalarySystemDetails.dart';
part 'SalarySystemDetailsData.dart';