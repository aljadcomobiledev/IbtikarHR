import 'package:IbtikarHR/core/widgets/LoadingDialog.dart';
import 'package:IbtikarHR/features/auth/model/Body/LoginBody.dart';
import 'package:IbtikarHR/features/auth/model/Response/LoginResponse.dart';
import 'package:IbtikarHR/features/auth/resource/AuthRepositoryImports.dart';
import 'package:IbtikarHR/features/auth/screens/login/widgets/LoginWidgetsImports.dart';
import 'package:IbtikarHR/features/user/screens/main_home/MainHomeImports.dart';

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
import '../../../../core/utils/Colors/GeneralColor.dart';
import '../../model/Response/BranchResponse.dart';


part 'Login.dart';
part 'LoginData.dart';