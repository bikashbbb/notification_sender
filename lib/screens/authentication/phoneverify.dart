import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iro/domain/signupdomain.dart';
import 'package:iro/palette/buttons.dart';
import 'package:iro/palette/projectpatetrn.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';

class PhoneVerify extends StatefulWidget {
  PhoneVerify({Key? key}) : super(key: key);

  @override
  State<PhoneVerify> createState() => _PhoneVerifyState();
}

class _PhoneVerifyState extends State<PhoneVerify> {
  var doshowshack = false;
  var smscode;

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
                  onTap: () async {
                    // TODO: verify

                    try {
                      var verify = PhoneAuthProvider.credential(
                          verificationId: verificationid, smsCode: smscode);
                      await firebaseauth.signInWithCredential(verify);
                      // Username
                      //Get.to(page)
                    } catch (e) {
                      // failed
                      setState(() {
                        doshowshack = true;
                      });
                    }
                  },
                  child: loginbutton('Verify')))
        ]),
        bottomNavigationBar: Container(
            alignment: const Alignment(0.2, 0),
            color: doshowshack ? Colors.black45 : Colors.transparent,
            height: 50,
            child: doshowshack
                ? const Text(
                    'Verification Code Invalid !!!!',
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  )
                : null));
  }
}
