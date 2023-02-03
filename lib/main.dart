import 'package:clean_architecture/present/provider/user_provider.dart';
import 'package:clean_architecture/present/screen/MyHomePage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'di/di.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setup();

  runApp(

      /// Providers are above [MyApp] instead of inside it, so that tests
      /// can use [MyApp] while mocking the providers
      MultiProvider(
    providers: [
      ChangeNotifierProvider<UserProvider>(create: (_) => UserProvider()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Random User Info'),
    );
  }
}
