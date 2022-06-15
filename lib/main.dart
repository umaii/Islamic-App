// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islamk/cubit/cubit.dart';
import 'package:islamk/cubit/states.dart';
import 'package:islamk/shared/bloc_observer.dart';
import 'package:islamk/shared/network/dio_helper.dart';
import 'package:bloc/bloc.dart';
import 'package:splashscreen/splashscreen.dart';
import 'screens/Home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  Dioo.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (BuildContext context) =>
                AppCubit()..checkConnectivityState())
      ],
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Islamk',
          theme: ThemeData(
            primarySwatch: Colors.blueAccent[10],
            primaryColor: Colors.blueAccent[10],
          ),
          home: SplashScreen(
            seconds: 3,
            navigateAfterSeconds: Home(),
            title: const Text('مرحبا بك في تطبيق إسلامك',
                style: TextStyle(
                    fontFamily: "MyFont",
                    fontSize: 25,
                    fontWeight: FontWeight.bold)),
            image: Image.asset('assets/images/logo.jpg'),
            loadingText: const Text("Developed By: Umair khalid",
                style: TextStyle(
                    fontFamily: "MyFont",
                    fontSize: 16,
                    fontWeight: FontWeight.bold)),
            backgroundColor: Colors.white,
            styleTextUnderTheLoader: const TextStyle(),
            photoSize: 100.0,
            loaderColor: Colors.blue,
          ),
        ),
      ),
    );
  }
}
