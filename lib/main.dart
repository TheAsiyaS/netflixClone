import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/mainPage/widgets/mainPage_nav.dart';

import 'application/Downlods/downlodsbloc_bloc.dart';
import 'application/fastLaugh/fastLaugh/fast_laugh_bloc.dart';
import 'application/home/home_bloc.dart';
import 'application/hotAndNew/hot_and_new_bloc.dart';
import 'application/sreach/search/sreach_bloc_bloc.dart';
import 'domain/core/dependencyInjection/injection.dart';



/*
flutter packages pub run build_runner watch --use-polling-watcher --delete-conflicting-outputs
escp+:+wq

 */
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
           
          BlocProvider(create: (ctx) => getIt<DownlodsblocBloc>()),
          BlocProvider(create: (ctx) => getIt<SreachBlocBloc>()),
          BlocProvider(create: (ctx) => getIt<FastLaughBloc>()),
          BlocProvider(create: (ctx) => getIt<HotAndNewBloc>()),
          BlocProvider(create: (ctx) => getIt<HomeBloc>()),
        ],
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              scaffoldBackgroundColor: Colors.black,
              brightness: Brightness.dark,
            ),
            home: const mainpage()));
  }
}
