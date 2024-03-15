import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nfc_app/home_page.dart';
import 'package:nfc_app/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyDngd64oBc561KyvqE21j3IQo2Pdm0LKKw",
      appId: "1:1025098034456:android:c69f23142880799efe426d",
      messagingSenderId: "1025098034456",
      projectId: "nfc-app-2ad0e",
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LandingPage(title: 'User Login'),
      debugShowCheckedModeBanner: false,
      routes: {
        'home_page': (context) => HomePage(),
      },
    );
  }
}

class LandingPage extends StatefulWidget {
  const LandingPage({super.key, required this.title});


  final String title;

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home page'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));},
          child: Text('Click here to login.')),
      ),
    );
  }
}
