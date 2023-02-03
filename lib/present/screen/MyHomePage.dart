import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/user_provider.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final Random random = Random();
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(
          context.watch<UserProvider>().userModel?.name ?? '',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var num = random.nextInt(10) + 1;
          await context.read<UserProvider>().fetchUser(num);
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
