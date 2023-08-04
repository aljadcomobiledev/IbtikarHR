import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:device_apps/device_apps.dart';
import 'package:eastern/core/utils/routers/RouterImports.gr.dart';
import 'package:eastern/features/auth/model/Response/LoginResponse.dart';
import 'package:eastern/features/user/screens/home/widgets/HomeWidgetsImports.dart';
import 'package:external_app_launcher/external_app_launcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toast/toast.dart';
import 'package:ndialog/ndialog.dart';

import '../../../../core/blocs/auth_cubit/auth_cubit.dart';
import '../../../../core/blocs/user_cubit/user_cubit.dart';
import '../../../../core/helpers/global_state.dart';
import '../../../../core/helpers/shared_data.dart';
import '../../../../core/utils/Colors/GeneralColor.dart';

part 'Home.dart';
part 'HomeData.dart';
