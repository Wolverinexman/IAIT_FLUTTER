import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:iait1/Provider/auth_provider.dart';
import 'package:iait1/Screens/welcomescreen.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => AuthProvider())],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: WelcomeScreen(),
        title: "IAIT",
      ),
    );
  }
}
