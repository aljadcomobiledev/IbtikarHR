import 'package:IbtikarHR/my_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/blocs/lang_cubit/lang_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();



  runApp(BlocProvider(
    create: (BuildContext context) => LangCubit(),
    child: const MyApp(),
  ));
}
