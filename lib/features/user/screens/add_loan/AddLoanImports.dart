import 'package:IbtikarHR/core/blocs/generic_bloc/generic_cubit.dart';
import 'package:IbtikarHR/core/widgets/BuildMainHeader.dart';
import 'package:IbtikarHR/core/widgets/LoadingDialog.dart';
import 'package:IbtikarHR/features/user/model/body/AddLoanBody.dart';
import 'package:IbtikarHR/features/user/resource/UserRepositoryImports.dart';
import 'package:IbtikarHR/features/user/screens/add_loan/widgets/AddLoanWidgetsImports.dart';
import 'package:IbtikarHR/features/user/screens/loans/LoansImports.dart';
import 'package:IbtikarHR/features/user/screens/main_home/MainHomeImports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';


import '../../../../core/blocs/user_cubit/user_cubit.dart';
import '../../../../core/utils/Colors/GeneralColor.dart';
import '../../../auth/model/Response/LoginResponse.dart';
import '../../model/response/AddLoanResponse.dart';

part 'AddLoan.dart';
part 'AddLoanData.dart';