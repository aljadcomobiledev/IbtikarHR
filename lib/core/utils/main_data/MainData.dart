part of 'MainDataImports.dart';

class MainData {
  static List<BlocProvider> providers(BuildContext context) => [
        BlocProvider<AuthCubit>(create: (BuildContext context) => AuthCubit()),
        BlocProvider<UserCubit>(create: (BuildContext context) => UserCubit()),
        BlocProvider<LangCubit>(create: (BuildContext context) => LangCubit()),
        BlocProvider<QrCubit>(create: (BuildContext context) => QrCubit()),
      ];
}
