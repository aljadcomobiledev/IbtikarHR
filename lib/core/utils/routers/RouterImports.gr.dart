// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i31;
import 'package:eastern/features/auth/screens/landing/LandingImports.dart'
    as _i1;
import 'package:eastern/features/auth/screens/login/LoginImports.dart' as _i4;
import 'package:eastern/features/auth/screens/sign_up/SignUpImports.dart'
    as _i3;
import 'package:eastern/features/auth/screens/splash/SplashImports.dart' as _i2;
import 'package:eastern/features/user/model/response/ItemDetailsResponse.dart'
    as _i33;
import 'package:eastern/features/user/model/response/SalarySystemResponse.dart'
    as _i34;
import 'package:eastern/features/user/screens/add_complaint/AddComplaintImports.dart'
    as _i23;
import 'package:eastern/features/user/screens/add_complaint_reply/AddComplaintReplyImports.dart'
    as _i26;
import 'package:eastern/features/user/screens/general_services/GeneralServicesImports.dart'
    as _i20;
import 'package:eastern/features/user/screens/general_services_contact_us/ContactUsImports.dart'
    as _i19;
import 'package:eastern/features/user/screens/general_services_faq/FAQImports.dart'
    as _i22;
import 'package:eastern/features/user/screens/home/HomeImports.dart' as _i5;
import 'package:eastern/features/user/screens/Information/InformationImports.dart'
    as _i13;
import 'package:eastern/features/user/screens/medical_complaints/MedicalComplaintsImports.dart'
    as _i14;
import 'package:eastern/features/user/screens/medical_complaints_details/ComplaintsDetailsImports.dart'
    as _i10;
import 'package:eastern/features/user/screens/medical_service/MedicalServiceImports.dart'
    as _i15;
import 'package:eastern/features/user/screens/notifications/NotificationsImports.dart'
    as _i29;
import 'package:eastern/features/user/screens/notifications_details/DetailsImports.dart'
    as _i11;
import 'package:eastern/features/user/screens/notifications_news/NewsImports.dart'
    as _i28;
import 'package:eastern/features/user/screens/notifications_offers/OffersImports.dart'
    as _i16;
import 'package:eastern/features/user/screens/notifications_trips/TripsImports.dart'
    as _i21;
import 'package:eastern/features/user/screens/public_complaints/PublicComplaintsImports.dart'
    as _i12;
import 'package:eastern/features/user/screens/qr_code_scan/SacnQRImports.dart'
    as _i8;
import 'package:eastern/features/user/screens/Salaries/SalaryImports.dart'
    as _i17;
import 'package:eastern/features/user/screens/salary_statement/SalaryStatementImports.dart'
    as _i6;
import 'package:eastern/features/user/screens/salary_system/SalarySystemImports.dart'
    as _i9;
import 'package:eastern/features/user/screens/salary_system_details/SalarySystemDetailsImports.dart'
    as _i18;
import 'package:eastern/features/user/screens/whoweare/WhoWeAreImports.dart'
    as _i25;
import 'package:eastern/features/user/screens/whoweare_aboutus/AboutUsImports.dart'
    as _i30;
import 'package:eastern/features/user/screens/whoweare_ceo_speech/CEOSpeechImports.dart'
    as _i27;
import 'package:eastern/features/user/screens/whoweare_history/HistoryImports.dart'
    as _i24;
import 'package:eastern/features/user/screens/whoweare_members/MembersImports.dart'
    as _i7;
import 'package:flutter/material.dart' as _i32;

abstract class $AppRouter extends _i31.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i31.PageFactory> pagesMap = {
    Landing.name: (routeData) {
      return _i31.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.Landing(),
      );
    },
    Splash.name: (routeData) {
      final args = routeData.argsAs<SplashArgs>();
      return _i31.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.Splash(navigatorKey: args.navigatorKey),
      );
    },
    SignUp.name: (routeData) {
      return _i31.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.SignUp(),
      );
    },
    Login.name: (routeData) {
      return _i31.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.Login(),
      );
    },
    Home.name: (routeData) {
      return _i31.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.Home(),
      );
    },
    SalaryStatement.name: (routeData) {
      return _i31.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.SalaryStatement(),
      );
    },
    Members.name: (routeData) {
      return _i31.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.Members(),
      );
    },
    ScanQR.name: (routeData) {
      return _i31.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.ScanQR(),
      );
    },
    SalarySystem.name: (routeData) {
      return _i31.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.SalarySystem(),
      );
    },
    ComplaintsDetails.name: (routeData) {
      final args = routeData.argsAs<ComplaintsDetailsArgs>();
      return _i31.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.ComplaintsDetails(
          key: args.key,
          id: args.id,
          title: args.title,
          complaintType: args.complaintType,
        ),
      );
    },
    Details.name: (routeData) {
      final args = routeData.argsAs<DetailsArgs>();
      return _i31.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.Details(
          key: args.key,
          itemDetailsResponse: args.itemDetailsResponse,
          title: args.title,
        ),
      );
    },
    PublicComplaints.name: (routeData) {
      return _i31.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.PublicComplaints(),
      );
    },
    Information.name: (routeData) {
      return _i31.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i13.Information(),
      );
    },
    MedicalComplaints.name: (routeData) {
      return _i31.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.MedicalComplaints(),
      );
    },
    MedicalService.name: (routeData) {
      return _i31.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i15.MedicalService(),
      );
    },
    Offers.name: (routeData) {
      return _i31.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i16.Offers(),
      );
    },
    Salary.name: (routeData) {
      return _i31.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i17.Salary(),
      );
    },
    SalarySystemDetails.name: (routeData) {
      final args = routeData.argsAs<SalarySystemDetailsArgs>();
      return _i31.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i18.SalarySystemDetails(
          key: args.key,
          item: args.item,
        ),
      );
    },
    ContactUs.name: (routeData) {
      return _i31.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i19.ContactUs(),
      );
    },
    GeneralServices.name: (routeData) {
      return _i31.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i20.GeneralServices(),
      );
    },
    Trips.name: (routeData) {
      return _i31.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i21.Trips(),
      );
    },
    FAQ.name: (routeData) {
      return _i31.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i22.FAQ(),
      );
    },
    AddComplaint.name: (routeData) {
      final args = routeData.argsAs<AddComplaintArgs>();
      return _i31.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i23.AddComplaint(
          key: args.key,
          id: args.id,
          title: args.title,
        ),
      );
    },
    History.name: (routeData) {
      return _i31.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i24.History(),
      );
    },
    WhoWeAre.name: (routeData) {
      return _i31.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i25.WhoWeAre(),
      );
    },
    AddComplaintReply.name: (routeData) {
      final args = routeData.argsAs<AddComplaintReplyArgs>();
      return _i31.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i26.AddComplaintReply(
          key: args.key,
          id: args.id,
          title: args.title,
          complaintType: args.complaintType,
        ),
      );
    },
    CEOSpeech.name: (routeData) {
      return _i31.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i27.CEOSpeech(),
      );
    },
    News.name: (routeData) {
      return _i31.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i28.News(),
      );
    },
    Notifications.name: (routeData) {
      return _i31.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i29.Notifications(),
      );
    },
    AboutUs.name: (routeData) {
      return _i31.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i30.AboutUs(),
      );
    },
  };
}

/// generated route for
/// [_i1.Landing]
class Landing extends _i31.PageRouteInfo<void> {
  const Landing({List<_i31.PageRouteInfo>? children})
      : super(
          Landing.name,
          initialChildren: children,
        );

  static const String name = 'Landing';

  static const _i31.PageInfo<void> page = _i31.PageInfo<void>(name);
}

/// generated route for
/// [_i2.Splash]
class Splash extends _i31.PageRouteInfo<SplashArgs> {
  Splash({
    required _i32.GlobalKey<_i32.NavigatorState> navigatorKey,
    List<_i31.PageRouteInfo>? children,
  }) : super(
          Splash.name,
          args: SplashArgs(navigatorKey: navigatorKey),
          initialChildren: children,
        );

  static const String name = 'Splash';

  static const _i31.PageInfo<SplashArgs> page = _i31.PageInfo<SplashArgs>(name);
}

class SplashArgs {
  const SplashArgs({required this.navigatorKey});

  final _i32.GlobalKey<_i32.NavigatorState> navigatorKey;

  @override
  String toString() {
    return 'SplashArgs{navigatorKey: $navigatorKey}';
  }
}

/// generated route for
/// [_i3.SignUp]
class SignUp extends _i31.PageRouteInfo<void> {
  const SignUp({List<_i31.PageRouteInfo>? children})
      : super(
          SignUp.name,
          initialChildren: children,
        );

  static const String name = 'SignUp';

  static const _i31.PageInfo<void> page = _i31.PageInfo<void>(name);
}

/// generated route for
/// [_i4.Login]
class Login extends _i31.PageRouteInfo<void> {
  const Login({List<_i31.PageRouteInfo>? children})
      : super(
          Login.name,
          initialChildren: children,
        );

  static const String name = 'Login';

  static const _i31.PageInfo<void> page = _i31.PageInfo<void>(name);
}

/// generated route for
/// [_i5.Home]
class Home extends _i31.PageRouteInfo<void> {
  const Home({List<_i31.PageRouteInfo>? children})
      : super(
          Home.name,
          initialChildren: children,
        );

  static const String name = 'Home';

  static const _i31.PageInfo<void> page = _i31.PageInfo<void>(name);
}

/// generated route for
/// [_i6.SalaryStatement]
class SalaryStatement extends _i31.PageRouteInfo<void> {
  const SalaryStatement({List<_i31.PageRouteInfo>? children})
      : super(
          SalaryStatement.name,
          initialChildren: children,
        );

  static const String name = 'SalaryStatement';

  static const _i31.PageInfo<void> page = _i31.PageInfo<void>(name);
}

/// generated route for
/// [_i7.Members]
class Members extends _i31.PageRouteInfo<void> {
  const Members({List<_i31.PageRouteInfo>? children})
      : super(
          Members.name,
          initialChildren: children,
        );

  static const String name = 'Members';

  static const _i31.PageInfo<void> page = _i31.PageInfo<void>(name);
}

/// generated route for
/// [_i8.ScanQR]
class ScanQR extends _i31.PageRouteInfo<void> {
  const ScanQR({List<_i31.PageRouteInfo>? children})
      : super(
          ScanQR.name,
          initialChildren: children,
        );

  static const String name = 'ScanQR';

  static const _i31.PageInfo<void> page = _i31.PageInfo<void>(name);
}

/// generated route for
/// [_i9.SalarySystem]
class SalarySystem extends _i31.PageRouteInfo<void> {
  const SalarySystem({List<_i31.PageRouteInfo>? children})
      : super(
          SalarySystem.name,
          initialChildren: children,
        );

  static const String name = 'SalarySystem';

  static const _i31.PageInfo<void> page = _i31.PageInfo<void>(name);
}

/// generated route for
/// [_i10.ComplaintsDetails]
class ComplaintsDetails extends _i31.PageRouteInfo<ComplaintsDetailsArgs> {
  ComplaintsDetails({
    _i32.Key? key,
    required num? id,
    required String? title,
    required num? complaintType,
    List<_i31.PageRouteInfo>? children,
  }) : super(
          ComplaintsDetails.name,
          args: ComplaintsDetailsArgs(
            key: key,
            id: id,
            title: title,
            complaintType: complaintType,
          ),
          initialChildren: children,
        );

  static const String name = 'ComplaintsDetails';

  static const _i31.PageInfo<ComplaintsDetailsArgs> page =
      _i31.PageInfo<ComplaintsDetailsArgs>(name);
}

class ComplaintsDetailsArgs {
  const ComplaintsDetailsArgs({
    this.key,
    required this.id,
    required this.title,
    required this.complaintType,
  });

  final _i32.Key? key;

  final num? id;

  final String? title;

  final num? complaintType;

  @override
  String toString() {
    return 'ComplaintsDetailsArgs{key: $key, id: $id, title: $title, complaintType: $complaintType}';
  }
}

/// generated route for
/// [_i11.Details]
class Details extends _i31.PageRouteInfo<DetailsArgs> {
  Details({
    _i32.Key? key,
    required _i33.ItemDetailsResponse itemDetailsResponse,
    required String title,
    List<_i31.PageRouteInfo>? children,
  }) : super(
          Details.name,
          args: DetailsArgs(
            key: key,
            itemDetailsResponse: itemDetailsResponse,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'Details';

  static const _i31.PageInfo<DetailsArgs> page =
      _i31.PageInfo<DetailsArgs>(name);
}

class DetailsArgs {
  const DetailsArgs({
    this.key,
    required this.itemDetailsResponse,
    required this.title,
  });

  final _i32.Key? key;

  final _i33.ItemDetailsResponse itemDetailsResponse;

  final String title;

  @override
  String toString() {
    return 'DetailsArgs{key: $key, itemDetailsResponse: $itemDetailsResponse, title: $title}';
  }
}

/// generated route for
/// [_i12.PublicComplaints]
class PublicComplaints extends _i31.PageRouteInfo<void> {
  const PublicComplaints({List<_i31.PageRouteInfo>? children})
      : super(
          PublicComplaints.name,
          initialChildren: children,
        );

  static const String name = 'PublicComplaints';

  static const _i31.PageInfo<void> page = _i31.PageInfo<void>(name);
}

/// generated route for
/// [_i13.Information]
class Information extends _i31.PageRouteInfo<void> {
  const Information({List<_i31.PageRouteInfo>? children})
      : super(
          Information.name,
          initialChildren: children,
        );

  static const String name = 'Information';

  static const _i31.PageInfo<void> page = _i31.PageInfo<void>(name);
}

/// generated route for
/// [_i14.MedicalComplaints]
class MedicalComplaints extends _i31.PageRouteInfo<void> {
  const MedicalComplaints({List<_i31.PageRouteInfo>? children})
      : super(
          MedicalComplaints.name,
          initialChildren: children,
        );

  static const String name = 'MedicalComplaints';

  static const _i31.PageInfo<void> page = _i31.PageInfo<void>(name);
}

/// generated route for
/// [_i15.MedicalService]
class MedicalService extends _i31.PageRouteInfo<void> {
  const MedicalService({List<_i31.PageRouteInfo>? children})
      : super(
          MedicalService.name,
          initialChildren: children,
        );

  static const String name = 'MedicalService';

  static const _i31.PageInfo<void> page = _i31.PageInfo<void>(name);
}

/// generated route for
/// [_i16.Offers]
class Offers extends _i31.PageRouteInfo<void> {
  const Offers({List<_i31.PageRouteInfo>? children})
      : super(
          Offers.name,
          initialChildren: children,
        );

  static const String name = 'Offers';

  static const _i31.PageInfo<void> page = _i31.PageInfo<void>(name);
}

/// generated route for
/// [_i17.Salary]
class Salary extends _i31.PageRouteInfo<void> {
  const Salary({List<_i31.PageRouteInfo>? children})
      : super(
          Salary.name,
          initialChildren: children,
        );

  static const String name = 'Salary';

  static const _i31.PageInfo<void> page = _i31.PageInfo<void>(name);
}

/// generated route for
/// [_i18.SalarySystemDetails]
class SalarySystemDetails extends _i31.PageRouteInfo<SalarySystemDetailsArgs> {
  SalarySystemDetails({
    _i32.Key? key,
    required _i34.SalarySystemItem item,
    List<_i31.PageRouteInfo>? children,
  }) : super(
          SalarySystemDetails.name,
          args: SalarySystemDetailsArgs(
            key: key,
            item: item,
          ),
          initialChildren: children,
        );

  static const String name = 'SalarySystemDetails';

  static const _i31.PageInfo<SalarySystemDetailsArgs> page =
      _i31.PageInfo<SalarySystemDetailsArgs>(name);
}

class SalarySystemDetailsArgs {
  const SalarySystemDetailsArgs({
    this.key,
    required this.item,
  });

  final _i32.Key? key;

  final _i34.SalarySystemItem item;

  @override
  String toString() {
    return 'SalarySystemDetailsArgs{key: $key, item: $item}';
  }
}

/// generated route for
/// [_i19.ContactUs]
class ContactUs extends _i31.PageRouteInfo<void> {
  const ContactUs({List<_i31.PageRouteInfo>? children})
      : super(
          ContactUs.name,
          initialChildren: children,
        );

  static const String name = 'ContactUs';

  static const _i31.PageInfo<void> page = _i31.PageInfo<void>(name);
}

/// generated route for
/// [_i20.GeneralServices]
class GeneralServices extends _i31.PageRouteInfo<void> {
  const GeneralServices({List<_i31.PageRouteInfo>? children})
      : super(
          GeneralServices.name,
          initialChildren: children,
        );

  static const String name = 'GeneralServices';

  static const _i31.PageInfo<void> page = _i31.PageInfo<void>(name);
}

/// generated route for
/// [_i21.Trips]
class Trips extends _i31.PageRouteInfo<void> {
  const Trips({List<_i31.PageRouteInfo>? children})
      : super(
          Trips.name,
          initialChildren: children,
        );

  static const String name = 'Trips';

  static const _i31.PageInfo<void> page = _i31.PageInfo<void>(name);
}

/// generated route for
/// [_i22.FAQ]
class FAQ extends _i31.PageRouteInfo<void> {
  const FAQ({List<_i31.PageRouteInfo>? children})
      : super(
          FAQ.name,
          initialChildren: children,
        );

  static const String name = 'FAQ';

  static const _i31.PageInfo<void> page = _i31.PageInfo<void>(name);
}

/// generated route for
/// [_i23.AddComplaint]
class AddComplaint extends _i31.PageRouteInfo<AddComplaintArgs> {
  AddComplaint({
    _i32.Key? key,
    required num? id,
    required String? title,
    List<_i31.PageRouteInfo>? children,
  }) : super(
          AddComplaint.name,
          args: AddComplaintArgs(
            key: key,
            id: id,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'AddComplaint';

  static const _i31.PageInfo<AddComplaintArgs> page =
      _i31.PageInfo<AddComplaintArgs>(name);
}

class AddComplaintArgs {
  const AddComplaintArgs({
    this.key,
    required this.id,
    required this.title,
  });

  final _i32.Key? key;

  final num? id;

  final String? title;

  @override
  String toString() {
    return 'AddComplaintArgs{key: $key, id: $id, title: $title}';
  }
}

/// generated route for
/// [_i24.History]
class History extends _i31.PageRouteInfo<void> {
  const History({List<_i31.PageRouteInfo>? children})
      : super(
          History.name,
          initialChildren: children,
        );

  static const String name = 'History';

  static const _i31.PageInfo<void> page = _i31.PageInfo<void>(name);
}

/// generated route for
/// [_i25.WhoWeAre]
class WhoWeAre extends _i31.PageRouteInfo<void> {
  const WhoWeAre({List<_i31.PageRouteInfo>? children})
      : super(
          WhoWeAre.name,
          initialChildren: children,
        );

  static const String name = 'WhoWeAre';

  static const _i31.PageInfo<void> page = _i31.PageInfo<void>(name);
}

/// generated route for
/// [_i26.AddComplaintReply]
class AddComplaintReply extends _i31.PageRouteInfo<AddComplaintReplyArgs> {
  AddComplaintReply({
    _i32.Key? key,
    required num? id,
    required String? title,
    required num? complaintType,
    List<_i31.PageRouteInfo>? children,
  }) : super(
          AddComplaintReply.name,
          args: AddComplaintReplyArgs(
            key: key,
            id: id,
            title: title,
            complaintType: complaintType,
          ),
          initialChildren: children,
        );

  static const String name = 'AddComplaintReply';

  static const _i31.PageInfo<AddComplaintReplyArgs> page =
      _i31.PageInfo<AddComplaintReplyArgs>(name);
}

class AddComplaintReplyArgs {
  const AddComplaintReplyArgs({
    this.key,
    required this.id,
    required this.title,
    required this.complaintType,
  });

  final _i32.Key? key;

  final num? id;

  final String? title;

  final num? complaintType;

  @override
  String toString() {
    return 'AddComplaintReplyArgs{key: $key, id: $id, title: $title, complaintType: $complaintType}';
  }
}

/// generated route for
/// [_i27.CEOSpeech]
class CEOSpeech extends _i31.PageRouteInfo<void> {
  const CEOSpeech({List<_i31.PageRouteInfo>? children})
      : super(
          CEOSpeech.name,
          initialChildren: children,
        );

  static const String name = 'CEOSpeech';

  static const _i31.PageInfo<void> page = _i31.PageInfo<void>(name);
}

/// generated route for
/// [_i28.News]
class News extends _i31.PageRouteInfo<void> {
  const News({List<_i31.PageRouteInfo>? children})
      : super(
          News.name,
          initialChildren: children,
        );

  static const String name = 'News';

  static const _i31.PageInfo<void> page = _i31.PageInfo<void>(name);
}

/// generated route for
/// [_i29.Notifications]
class Notifications extends _i31.PageRouteInfo<void> {
  const Notifications({List<_i31.PageRouteInfo>? children})
      : super(
          Notifications.name,
          initialChildren: children,
        );

  static const String name = 'Notifications';

  static const _i31.PageInfo<void> page = _i31.PageInfo<void>(name);
}

/// generated route for
/// [_i30.AboutUs]
class AboutUs extends _i31.PageRouteInfo<void> {
  const AboutUs({List<_i31.PageRouteInfo>? children})
      : super(
          AboutUs.name,
          initialChildren: children,
        );

  static const String name = 'AboutUs';

  static const _i31.PageInfo<void> page = _i31.PageInfo<void>(name);
}
