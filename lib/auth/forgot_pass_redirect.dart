import 'package:flutter/material.dart';
import 'package:utp_in_me/auth/login_page.dart';
import 'package:utp_in_me/auth/microsoft_account_portal.dart';
import 'package:utp_in_me/auth/utp_net_id.dart';

class ForgotPass extends StatefulWidget {
  const ForgotPass({super.key});

  @override
  State<ForgotPass> createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 30),
            child: Image.asset(
              'assets/UTP-logo.png',
              width: 200,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
          Container(
              height: 150,
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50),
                ),
                child: const Text('UTP Net ID'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const UtpNetIdLogin()));
                },
              )),
          Container(
              height: 150,
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50),
                ),
                child: const Text('Microsoft Portal'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MicroAccPortal()));
                },
              )),
          const Text(''),
          const Text(''),
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LoginPage()));
            },
            child: const Text(
              '                Cancel                ',
            ),
          ),
        ],
      ),
    ));
  }
}
