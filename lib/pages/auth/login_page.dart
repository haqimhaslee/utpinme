import 'package:flutter/material.dart';
import 'package:utp_in_me/pages/auth/forgot_pass_redirect.dart';
import 'package:utp_in_me/src/navbar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 30),
            child: Image.asset(
              'assets/UTP-logo.png',
              width: 200,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(
                top: 5,
                left: 30,
                right: 30,
                bottom: 5,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.tertiaryContainer,
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                ),
                width: 410,
                //height: 150,
                child: Align(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        const Text(" "),
                        Text(
                          "⚠️ NOTE ⚠️",
                          style: TextStyle(
                            fontSize: 18,
                            color: Theme.of(context).colorScheme.tertiary,
                          ),
                        ),
                        Text(
                          "Proceed to login without email and password as auth_microsoft_aad not available yet",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.tertiary,
                          ),
                        ),
                        const Text(" "),
                      ],
                    )),
              )),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                labelText: 'UTP Microsoft Email',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                labelText: 'Password',
              ),
            ),
          ),
          Container(
              height: 80,
              padding: const EdgeInsets.all(15),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(80),
                ),
                child: const Text('Log In'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                },
              )),
          Container(
            height: 50,
            padding: const EdgeInsets.all(5),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ForgotPass()));
              },
              child: const Text(
                'Forgot Password?',
                //style: TextStyle(color: Colors.grey[600]),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
