import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'features/auth/presentation/login/views/login.dart';
import 'features/home/views/landingPage.dart';
import 'firebase_options.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
       options: DefaultFirebaseOptions.currentPlatform);
    //FirebaseAuth mAuth = FirebaseAuth.getInstance();

    runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        initialRoute:Login.routeName ,
        routes: {
          LandingPage.routeName:(context)=>LandingPage(),
          Login.routeName:(context)=>Login()
        }
    );
  }
}

