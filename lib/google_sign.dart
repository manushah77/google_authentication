import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:auth_buttons/auth_buttons.dart';
import 'package:goggle/button.dart';
import 'package:goggle/second_screen.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:google_sign_in/testing.dart';


final FirebaseAuth auth = FirebaseAuth.instance;
final firestore = FirebaseFirestore.instance;
final GoogleSignIn googleSignIn = GoogleSignIn();


Future<String> signp() async {
  final googleSignIn = GoogleSignIn();
  final googleUser = await googleSignIn.signIn();
  if (googleUser != null) {
    final googleAuth = await googleUser.authentication;
    if (googleAuth.idToken != null) {
      final userCredential = await firebaseAuth.signInWithCredential(
        GoogleAuthProvider.credential(
            idToken: googleAuth.idToken,
            accessToken: googleAuth.accessToken),
      );

    }
  } else {
    throw FirebaseAuthException(
      message: "Sign in aborded by user",
      code: "ERROR_ABORDER_BY_USER",
    );
  }
   return 'ok';
}

//
// Future <String> SingIn() async{
//   final GoogleSignInAccount? googleSignInAccount = await  googleSignIn.signIn();
//
//   final GoogleSignInAuthentication googleSignInAuthentication  = await googleSignInAccount!.authentication;
//
//   final AuthCredential credential  = GoogleAuthProvider.credential(
//     accessToken:  googleSignInAuthentication.accessToken,
//     idToken:  googleSignInAuthentication.idToken,
//   );
//
//   final UserCredential userCredential = await auth.signInWithCredential(credential);
//   final User? user =  userCredential.user;
//
//   return 'SigninGoogle succeed: $user';
//
//
// }
//
//
