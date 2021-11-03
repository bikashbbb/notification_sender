import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:iro/domain/signupdomain.dart';
import 'package:iro/palette/buttons.dart';
import 'package:iro/palette/projectpatetrn.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';

class PhoneVerify extends StatelessWidget {
  //
  var smscode;
  PhoneVerify({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: background,
      body: Stack(children: [
        const Positioned(
            top: 80,
            left: 20,
            child: Text(
              'Phone Verification Code Sent..',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
            )),
        // input code here
        const Positioned(
            top: 220,
            left: 50,
            child: Text(
              'input code Here',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            )),

        Positioned(
            top: 260,
            left: 50,
            child: OTPTextField(
              onCompleted: (txt) {
                // TODO: VERIFY
                smscode = txt;
              },
              onChanged: (txt) {},
              style: const TextStyle(color: Colors.white),
              otpFieldStyle: OtpFieldStyle(backgroundColor: Colors.white60),
              width: 300,
              length: 6,
              fieldWidth: 40,
            )),
        Positioned(
            bottom: 300,
            left: 200,
            child: InkWell(
                onTap: () {
                  // TODO: verify
                  var verify = PhoneAuthProvider.credential(
                      verificationId: verificationid, smsCode: smscode);
                  firebaseauth.signInWithCredential(verify);
                },
                child: loginbutton('Verify')))
      ]),
    );
  }
}
