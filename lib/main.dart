import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:my_netflix/application/downloads/downloads_bloc.dart';
import 'package:my_netflix/core/colors.dart';
import 'package:my_netflix/domain/dependency_injection/injectable.dart';

import 'application/fast_laugh/fastlaugh_bloc.dart';
import 'application/hot_and_new/hotandnew_bloc.dart';
import 'application/search/search_bloc.dart';
import 'homepage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ConfigureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<DownloadsBloc>()),
        BlocProvider(create: (context) => getIt<SearchBloc>()),
        BlocProvider(create: (context) => getIt<FastlaughBloc>()),
        BlocProvider(create: (context) => getIt<HotandnewBloc>()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'My Netflix',
        theme: ThemeData(
          appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: backgroundColor,
          textTheme: const TextTheme(
            bodyText1: TextStyle(
              color: textColor,
            ),
            bodyText2: TextStyle(
              color: textColor,
            ),
          ),
        ),
        home: MyHomePage(),
      ),
    );
  }
}
