import 'package:flutter/material.dart';
import 'package:goggle/google_sign.dart';

class PK extends StatelessWidget {
  const PK({Key? key}) : super(key: key);

  void signOutGoogle() {
    googleSignIn.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 150,
            ),
            Text(
              'Welcome',
              style: TextStyle(color: Colors.white, fontSize: 26),
            ),
            SizedBox(
              height: 300,
            ),
            MaterialButton(
              onPressed: () {
                signOutGoogle();
                print('signOut');
                Navigator.pop(context);
              },
              child: Text('signOut'),
              color: Colors.greenAccent,
            )
          ],
        ),
      ),
    );
  }
}
