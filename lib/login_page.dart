import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
        leading: const Icon(
          Icons.home,
          color: Colors.white,
          size: 24.0,
          semanticLabel: 'Text to announce in accessibility modes',
        ),
      ),
      body: Container(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )),
            Container(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              width: 300,
              child: Center(
                child: Image.network(
                    'https://i.postimg.cc/NMLxBCJs/Logo-removebg-preview.png'),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(children: [
                Container(
                  padding: EdgeInsets.only(bottom: 20),
                  child: TextFormField(
                    controller: _usernameController,
                    decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Enter your user name',
                        hintText: 'User Name'),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 20),
                  child: TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Enter your password',
                        hintText: 'Password'),
                  ),
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
