
import 'package:IbtikarHR/core/utils/Colors/GeneralColor.dart';
import 'package:IbtikarHR/features/user/model/response/VacationTypesResponse.dart';
import 'package:IbtikarHR/features/user/screens/add_loan/AddLoanImports.dart';
import 'package:IbtikarHR/features/user/screens/add_vacation/AddVacationImports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rounded_date_picker/flutter_rounded_date_picker.dart';
import 'package:intl/intl.dart';
import 'package:jiffy/jiffy.dart';
import 'package:toast/toast.dart';
import 'package:in_date_utils/in_date_utils.dart';


import '../../../../../core/blocs/generic_bloc/generic_cubit.dart';

part 'BuildVacationButton.dart';
part 'BuildVacationFields.dart';