import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mr_ahmed_salah_task_facebook/layout/home_layout_screen.dart';
import 'package:mr_ahmed_salah_task_facebook/shared/bloc/cubit.dart';
import 'package:mr_ahmed_salah_task_facebook/shared/bloc/cubit_state.dart';
import 'package:mr_ahmed_salah_task_facebook/shared/bloc_observer.dart';
import 'package:mr_ahmed_salah_task_facebook/shared/styles/themes.dart';


main()async{
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>FaceBookCubitApp() ,
      child: BlocConsumer<FaceBookCubitApp,FaceBookStateApp>(
        listener: (BuildContext context, state) {  },
        builder: (BuildContext context, Object? state) {
          return MaterialApp(
            darkTheme: darkTheme,
            theme: lightTheme,
            themeMode: FaceBookCubitApp.get(context).isDark?ThemeMode.dark:ThemeMode.light,
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              body: HomeFaceBookScreen(),
            ),
          );
        },

      ),
    );
  }
}
