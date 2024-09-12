// import 'package:eastern/core/utils/routers/RouterImports.gr.dart';
// import 'package:eastern/core/utils/routers/RouterImports.dart';
import 'package:IbtikarHR/features/auth/screens/splash/SplashImports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:toast/toast.dart';

import 'core/blocs/lang_cubit/lang_cubit.dart';
import 'core/localization/SetLocalization.dart';
import 'core/utils/main_data/MainDataImports.dart';
// import 'core/utils/routers/RouterImports.gr.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final navigatorKey = GlobalKey<NavigatorState>();
  // final _appRouter = MaterialApp.router();

  @override
  Widget build(BuildContext context) {
    ToastContext().init(context);//-> This part
    return MultiBlocProvider(
      providers: MainData.providers(context),
      child: BlocBuilder<LangCubit, LangState>(
        builder: (context, state) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              // theme: InitUtils.defaultThem,
              title: "IbtikarHR",
              supportedLocales: const [Locale('en', 'US'), Locale('ar', 'EG')],
              localizationsDelegates: const [
                LocalizationHelper.localizationsDelegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              locale: state.locale,
              home: const Splash(),
              // routerDelegate: _appRouter.delegate(
              //   initialRoutes: [Splash(navigatorKey: navigatorKey)],
              // ),
              // routeInformationParser: _appRouter.defaultRouteParser(),
              builder: (ctx, child) => FlutterEasyLoading(child: child));
        },
      ),
    );
  }
}
