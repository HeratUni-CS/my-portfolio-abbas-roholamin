import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PROFILE',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const Scaffold(
        body: Padding(
          padding: EdgeInsets.all(48),
          child: Home(),
        ),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          CircleAvatar(
            foregroundImage: AssetImage("images/profile.jpg"),
            radius: 56,
          ),
          Text(
            'Abbas Roholamin',
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontFamily: "pacific",
            ),
          ),
          Text(
            'Frontend Developer',
            style: TextStyle(
                fontSize: 20,
                letterSpacing: 2.5,
                color: Colors.white,
                fontFamily: "pacific"),
          ),
          Divider(
            color: Colors.white,
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
            child: ListTile(
              leading: Icon(
                Icons.phone,
                color: Colors.teal,
              ),
              title: Text(
                '0706760322',
                style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFF014740),
                    fontFamily: 'pacific'),
              ),
            ),
          ),
          Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
            child: ListTile(
              leading: Icon(
                Icons.email,
                color: Colors.teal,
              ),
              title: Text(
                'abbasroholamin76@gmail.com',
                style: TextStyle(
                    fontFamily: 'pacific',
                    color: Color(0xFF014740),
                    fontSize: 20),
              ),
            ),
          )
        ],
      ),
    );
  }
}
