import 'package:commutee_flutter/controllers/auth_methods.dart';
import 'package:commutee_flutter/screens/auth/login.dart';
import 'package:commutee_flutter/screens/mainscreen.dart';
import 'package:commutee_flutter/utils/constants.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    //   statusBarColor: Colors.white,
    //   statusBarBrightness: Brightness.dark,
    // ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Commutee',
      theme: ThemeData(scaffoldBackgroundColor: cBackgroundColor),
      home: StreamBuilder(
        stream: Auth().authStateChange,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            if (snapshot.hasData) {
              return const Mainscreen();
            }
          }
          return const Loginscreen();
        },
      ),
    );
  }
}
