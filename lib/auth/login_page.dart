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
  final textFieldFocusNode = FocusNode();
  bool _obscured = false;

  final passwordInput = TextEditingController();

  void _toggleObscured() {
    setState(() {
      _obscured = !_obscured;
      if (textFieldFocusNode.hasPrimaryFocus) {
        return; // If focus is on text field, dont unfocus
      }
      textFieldFocusNode.canRequestFocus =
          false; // Prevents focus if tap on eye
    });
  }

  void signUserIn() async {
    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    //height: 15,
                    child: LoadingAnimationWidget.flickr(
                      leftDotColor: Theme.of(context).colorScheme.primary,
                      rightDotColor: Theme.of(context).colorScheme.tertiary,
                      size: 40,
                    ),
                  ),
                  const Text('Signing in'),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
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
        backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
        body: Center(
            child: ListView(
          shrinkWrap: true,
          children: [
            Center(
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
                        elevation: 0,
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
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 0, 20, 20),
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
                                        height: 60,
                                        child: TextField(
                                          controller: emailInput,
                                          decoration: InputDecoration(
                                            isDense: true,
                                            prefixIcon: const Icon(
                                                Icons.person_rounded),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15.0),
                                            ),
                                            hintText: '@utp.edu.my',
                                            labelText: 'Email',
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        bottom: 0,
                                      ),
                                      child: SizedBox(
                                        height: 60,
                                        child: TextField(
                                          controller: passwordInput,
                                          obscureText: _obscured,
                                          focusNode: textFieldFocusNode,
                                          decoration: InputDecoration(
                                            isDense: true,
                                            prefixIcon:
                                                const Icon(Icons.lock_rounded),
                                            suffixIcon: Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      0, 0, 4, 0),
                                              child: IconButton(
                                                onPressed: _toggleObscured,
                                                icon: Icon(
                                                  _obscured
                                                      ? Icons.visibility_rounded
                                                      : Icons
                                                          .visibility_off_rounded,
                                                ),
                                              ),
                                            ),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15.0),
                                            ),
                                            hintText: 'Enter password...',
                                            labelText: 'Password',
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 20),
                                      child: TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          'Forgot Password?',
                                          style: TextStyle(
                                              color: Colors.grey[600]),
                                        ),
                                      ),
                                    ),
                                    SizedBox.fromSize(
                                      size: const Size(250, 45),
                                      child: ClipRRect(
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(15)),
                                        child: Material(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .surfaceVariant,
                                          child: InkWell(
                                            //splashColor:Color.fromARGB(255, 191, 217, 255),
                                            onTap: () {
                                              signUserIn();
                                            },
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                Text(
                                                  "Sign In",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 12,
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .onSecondaryContainer,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding:
                                          EdgeInsets.only(top: 10, bottom: 10),
                                      child: Text('or'),
                                    ),
                                    SizedBox.fromSize(
                                      size: const Size(250, 45),
                                      child: ClipRRect(
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(15)),
                                        child: Material(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .surfaceVariant,
                                          child: InkWell(
                                            //splashColor:Color.fromARGB(255, 191, 217, 255),
                                            onTap: () {},
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Image.asset(
                                                      'assets/microsoft_login.png',
                                                      width: 25,
                                                      // height: 40,
                                                      fit: BoxFit.cover,
                                                    ),
                                                    Text(
                                                      "    Sign in with Microsoft",
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 12,
                                                        color: Theme.of(context)
                                                            .colorScheme
                                                            .onSecondaryContainer,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding:
                                          EdgeInsets.only(top: 10, bottom: 10),
                                      child: Divider(),
                                    ),
                                    const Padding(
                                      padding:
                                          EdgeInsets.only(top: 10, bottom: 0),
                                      child: Text(
                                        'Don not have an account?',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        'Continue as GUEST',
                                        style: TextStyle(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary,
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
            ),
            const Center(
              child: Text(
                'Copyright Universiti Teknologi PETRONAS©️',
                style: TextStyle(fontSize: 12),
              ),
            )
          ],
        )));
  }
}
