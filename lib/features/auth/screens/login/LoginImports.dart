import 'package:auto_route/auto_route.dart';
import 'package:eastern/core/utils/Colors/GeneralColor.dart';
// import 'package:eastern/core/utils/routers/RouterImports.gr.dart';
import 'package:eastern/core/widgets/LoadingDialog.dart';
import 'package:eastern/features/auth/model/Body/LoginBody.dart';
import 'package:eastern/features/auth/model/Response/LoginResponse.dart';
import 'package:eastern/features/auth/resource/AuthRepositoryImports.dart';
import 'package:eastern/features/auth/screens/login/widgets/LoginWidgetsImports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:toast/toast.dart';

import '../../../../core/blocs/auth_cubit/auth_cubit.dart';
import '../../../../core/blocs/generic_bloc/generic_cubit.dart';
import '../../../../core/blocs/user_cubit/user_cubit.dart';
import '../../../../core/helpers/global_state.dart';
import '../../../../core/helpers/shared_data.dart';
import '../../../../core/utils/ApisNames.dart';
import '../../../../core/utils/routers/RouterImports.gr.dart';


part 'Login.dart';
part 'LoginData.dart';