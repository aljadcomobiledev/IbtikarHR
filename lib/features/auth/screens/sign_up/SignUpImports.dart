import 'package:auto_route/auto_route.dart';
import 'package:eastern/core/utils/Colors/GeneralColor.dart';
// import 'package:eastern/core/utils/routers/RouterImports.gr.dart';
import 'package:eastern/core/widgets/LoadingDialog.dart';
import 'package:eastern/features/auth/model/Body/SignUpBody.dart';
import 'package:eastern/features/auth/model/Response/SignUpResponse.dart';
import 'package:eastern/features/auth/screens/login/widgets/LoginWidgetsImports.dart';
import 'package:eastern/features/auth/screens/sign_up/widgets/SignUpWidgetsImports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:toast/toast.dart';

import '../../../../core/blocs/generic_bloc/generic_cubit.dart';
import '../../../../core/utils/routers/RouterImports.gr.dart';
import '../../resource/AuthRepositoryImports.dart';

part 'SignUp.dart';
part 'SignUpData.dart';