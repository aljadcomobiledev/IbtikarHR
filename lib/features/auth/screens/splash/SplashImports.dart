import 'dart:convert';

import 'package:IbtikarHR/core/widgets/animation_container/AnimationContainer.dart';
import 'package:IbtikarHR/features/auth/model/Response/LoginResponse.dart';
import 'package:IbtikarHR/features/auth/screens/login/LoginImports.dart';
import 'package:IbtikarHR/features/user/screens/main_home/MainHomeImports.dart';

import 'package:flutter/cupertino.dart';
// import 'package:eastern/features/auth/screens/landing/LandingImports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/blocs/auth_cubit/auth_cubit.dart';
import '../../../../core/blocs/user_cubit/user_cubit.dart';
import '../../../../core/helpers/global_state.dart';
import '../../../../core/utils/Colors/GeneralColor.dart';
// import '../../../../core/utils/routers/RouterImports.gr.dart';


part 'Splash.dart';
part 'SplashData.dart';