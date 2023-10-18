import 'package:flutter/material.dart';
import 'package:uni_app/pages/home_page.dart';
import 'package:uni_app/providers/home_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'UniApp',
        home: HomeProvider(child: HomePage())
        // home: LoginProvider(child: LoginPage()),
        );
  }
}
