import 'package:flutter/material.dart';
import 'package:test/Viewmodel/gameController.dart';
import 'package:test/Viewmodel/userProvider.dart';
import 'view/mainscreen/mainScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
       ChangeNotifierProvider(create: (_) => GameController()),
        ChangeNotifierProvider(create: (_) => UserProvider()),
        ],
      child: MaterialApp(
          title: 'Bomb O`clock',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const MainScreen()),
    );
  }
}
