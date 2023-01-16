import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uidesign01/login_page.dart';
import 'package:uidesign01/spalsh_screen.dart';

class HomePage extends StatefulWidget {
  final String userName;

  const HomePage({super.key, required this.userName});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  'Welcome ${widget.userName}',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Container(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: Text('Log out'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
