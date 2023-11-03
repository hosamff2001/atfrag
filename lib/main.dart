import 'package:atfrag/core/utliz/routers.dart';
import 'package:flutter/material.dart';

import 'core/resources/theme_manager.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: MyRoute.router,
      title: 'Movies App',
      theme: getApplicationTheme(),
    );
  }
}
