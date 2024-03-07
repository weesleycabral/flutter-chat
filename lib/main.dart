import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat/services/auth/auth_gate.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // if (Platform.isIOS) {
  //   await Firebase.initializeApp(
  //       options: const FirebaseOptions(
  //           apiKey: "AIzaSyBNgxR8pqRMpK8ndEqZCVpDtE05EulvclQ",
  //           appId: "app-1-89099581573-ios-a2068199649cb3838691ec",
  //           messagingSenderId: "89099581573",
  //           projectId: "1:89099581573:ios:a2068199649cb3838691ec"));
  // } else {
  //   await Firebase.initializeApp();
  // }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthGate(),
    );
  }
}
