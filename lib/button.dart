import 'package:auth_buttons/auth_buttons.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:goggle/google_sign.dart';
import 'package:goggle/second_screen.dart';
import 'package:goggle/signup.dart';

final firestore = FirebaseFirestore.instance;
final FirebaseAuth firebaseAuth = FirebaseAuth.instance;


class Gigo extends StatelessWidget {
  const Gigo({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Goggle Sign In',
          textAlign: TextAlign.center,
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 190.0),
          child: Column(
            children: [
              GoogleAuthButton(
                onPressed: () {
                  signp().then((value) {if(value.isNotEmpty){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>
                        PK(),
                    ),);
                  }});

                  // signup().then(
                  //       (value) {
                  //     if (value.isNotEmpty) {
                  //       Navigator.pushReplacement(
                  //         context,
                  //         MaterialPageRoute(
                  //           builder: (context) => PK(),
                  //         ),
                  //       );
                  //     }
                  //   },
                  // );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
