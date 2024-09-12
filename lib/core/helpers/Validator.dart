import 'package:flutter/material.dart';

import '../localization/Localizations.dart';

extension Validator on String {

  String? noValidate() {
    return null;
  }

  String? validateEmpty(BuildContext context,{String? message}) {
    if (trim().isEmpty) {
      return message ?? "يرجي إدخال جميع البيانات";

    }
    return null;
  }

  String? validatePassword(BuildContext context,{String? message}) {
    if (trim().isEmpty) {
      return message ?? "يرجي إدخال جميع البيانات";
    } else if (!RegExp(r'^(?=.*?[a-z])(?=.*?[0-9]).{6,}$')
        .hasMatch(this)) {
      return message ?? "يرجي إدخال كلمة مرور صحيحة";
    }
    return null;
  }

  String? validateEmail(BuildContext context,{String? message}) {
    if (trim().isEmpty) {
      return message ?? "Please fill this field";
    } else if (!RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(this)) {
      return message ?? tr(context,"mailValidation");
    }
    return null;
  }

  String? validateEmailORNull(BuildContext context,{String? message}) {
    if (trim().isNotEmpty) {
      if (!RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
          .hasMatch(this)) {
        return message ?? tr(context,"mailValidation");
      }
    }
    return null;
  }

  String? validatePhone(BuildContext context,{String? message}) {
    if (trim().isEmpty) {
      return message ?? "يرجي إدخال جميع البيانات";
    } else if (!startsWith("01", 0) ||
        this.length != 11) {
      return message ?? "يرجي ادخال رقم هاتف صحيح";
    }
    return null;
  }

  String? validateNationalId(BuildContext context,{String? message}) {
    if (trim().isEmpty) {
      return message ?? "يرجي إدخال جميع البيانات";
    } else if (this.length != 14) {
      return message ?? "يرجي ادخال رقم قومي صحيح";
    }
    return null;
  }

  String? validatePasswordConfirm(BuildContext context,{required String pass, String? message}) {
    if (trim().isEmpty) {
      return message ?? "Please fill this field";
    } else if (this != pass) {
      return message ?? tr(context,"confirmValidation");
    }
    return null;
  }
}

extension ValidatorDrop<DataType> on DataType {
  String? validateDropDown(BuildContext context,{String? message}) {
    if (this == null) {
      return message ?? "Please fill this field";
    }
    return null;
  }
}
