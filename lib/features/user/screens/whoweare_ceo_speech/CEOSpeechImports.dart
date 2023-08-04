import 'package:auto_route/auto_route.dart';
import 'package:eastern/core/utils/Colors/GeneralColor.dart';
import 'package:eastern/core/utils/routers/RouterImports.gr.dart';
import 'package:eastern/core/widgets/BuildMainHeader.dart';
import 'package:eastern/core/widgets/LoadingDialog.dart';
import 'package:eastern/features/auth/model/Response/LoginResponse.dart';
import 'package:eastern/features/user/model/SalarySystemModel.dart';
import 'package:eastern/features/user/screens/Information/widgets/InformationWidgetsImports.dart';
import 'package:eastern/features/user/screens/notifications_details/DetailsImports.dart';
import 'package:eastern/features/user/screens/notifications_details/widgets/DetailsWidgetsImports.dart';
import 'package:eastern/features/user/screens/notifications_news/widgets/NewsWidgetsImports.dart';
import 'package:eastern/features/user/screens/salary_statement/widgets/SalaryStatementWidgetsImports.dart';
import 'package:eastern/features/user/screens/salary_system/widgets/SalarySystemWidgetsImports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toast/toast.dart';

import '../../../../core/blocs/generic_bloc/generic_cubit.dart';
import '../../../auth/model/Body/LoginBody.dart';
import '../../../auth/resource/AuthRepositoryImports.dart';
import '../../model/response/HistoryResponse.dart';
import '../../resource/UserRepositoryImports.dart';


part 'CEOSpeech.dart';
part 'CEOSpeechData.dart';