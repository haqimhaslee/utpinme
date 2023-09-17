import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailInput = TextEditingController();

  final passwordInput = TextEditingController();

  void signUserIn() async {
    showDialog(
        context: context,
        builder: (context) {
          return Center(
            child: LoadingAnimationWidget.staggeredDotsWave(
              color: Theme.of(context).colorScheme.primaryContainer,
              size: 100,
            ),
          );
        });

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailInput.text, password: passwordInput.text);
      // ignore: use_build_context_synchronously
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emailErrorState();
      } else if (e.code == 'wrong-password') {
        passwordErrorState();
      }
    }
  }

  void emailErrorState() {
    Navigator.pop(context);
    showDialog(
        context: context,
        builder: (context) {
          return const AlertDialog(
            title: Text('User not found'),
          );
        });
  }

  void passwordErrorState() {
    Navigator.pop(context);
    showDialog(
        context: context,
        builder: (context) {
          return const AlertDialog(
            title: Text('Ops incorrect password'),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
              padding: const EdgeInsets.only(
                top: 10,
                left: 20,
                right: 20,
                bottom: 10,
              ),
              child: Card(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
                child: SizedBox(
                  child: Center(
                    child: Padding(
                        padding: const EdgeInsets.only(
                          top: 35,
                          left: 20,
                          right: 20,
                          bottom: 10,
                        ),
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.fromLTRB(20, 0, 20, 30),
                              child: Image.asset(
                                'assets/UTP-logo.png',
                                width: 150,
                                height: 60,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                                bottom: 10,
                              ),
                              child: SizedBox(
                                height: 50,
                                child: TextField(
                                  controller: emailInput,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    labelText: 'Email',
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                bottom: 10,
                              ),
                              child: SizedBox(
                                height: 50,
                                child: TextField(
                                  controller: passwordInput,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    labelText: 'Password',
                                  ),
                                ),
                              ),
                            ),
                            Container(
                                height: 80,
                                padding:
                                    const EdgeInsets.fromLTRB(40, 10, 40, 10),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    minimumSize: const Size.fromHeight(80),
                                  ),
                                  child: const Text('Log In'),
                                  onPressed: () {
                                    signUserIn();
                                  },
                                )),
                            Container(
                              height: 50,
                              padding: const EdgeInsets.all(5),
                              child: TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Forgot Password?',
                                  //style: TextStyle(color: Colors.grey[600]),
                                ),
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
              ))
        ],
      ),
    ));
  }
}
