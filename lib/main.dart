import 'package:bts_tech_test/views/login/login_pages.dart';
import 'package:bts_tech_test/views/login/register_pages.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';


void main() async {
  await dotenv.load();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return MaterialApp(
      title: 'CheckList App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      initialRoute: '/login',
      
      routes: {
        '/login':(context) =>  const LoginPages(),
        '/register': (context) => const RegisterPages(),
      },
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
    },)
    ;
  }
}
