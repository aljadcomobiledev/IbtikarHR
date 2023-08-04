import 'package:eastern/features/user/model/AboutUsModel.dart';
import 'package:eastern/features/user/model/SalarySystemModel.dart';
import 'package:eastern/features/user/screens/general_services_contact_us/ContactUsImports.dart';
import 'package:eastern/features/user/screens/salary_statement/SalaryStatementImports.dart';
import 'package:eastern/features/user/screens/salary_system/SalarySystemImports.dart';
import 'package:eastern/features/user/screens/whoweare_aboutus/AboutUsImports.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../../../core/utils/Colors/GeneralColor.dart';
import '../../../../../core/widgets/LoadingDialog.dart';
import '../../../model/response/ContactUsResponse.dart';

part 'BuildContactUsListItem.dart';
part 'BuildInfoListItem.dart';
part 'BuildInternalContacts.dart';
part 'BuildPublicContacts.dart';