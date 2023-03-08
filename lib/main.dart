import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'View/HomePage.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyADJIF1v-EGgb88YxunEtfvtVEJa729KvE",
        appId: "1:146441355954:web:1f02d3064a5a119ce8ffab",
        messagingSenderId: "G-4E0NDH54KM",
        projectId: "portfolio-3ead5"
    )
  );
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Smarter",
      home: HomePage(),
    );
  }
}
