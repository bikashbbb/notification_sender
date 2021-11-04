import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:iro/provider/auth/signupprovider.dart';
import 'package:iro/screens/authentication/phoneverify.dart';

var firebase = FirebaseFirestore.instance;
var firebaseauth = FirebaseAuth.instance;
var verificationid;

sendOtp(countryCode) async {
  //firebaseauth.
  await FirebaseAuth.instance.verifyPhoneNumber(
    phoneNumber: '+$countryCode' + SIgnupClicked.phone.text,
    verificationCompleted: (PhoneAuthCredential credential) {},
    verificationFailed: (FirebaseAuthException e) async {
      SIgnupClicked.messege.value = e.message!;
    },
    codeSent: (String verificationId, int? resendToken) async {
      verificationid = verificationId;
      Get.to(PhoneVerify());
    },
    codeAutoRetrievalTimeout: (String verificationId) {},
  );
}

void createAccount() async {
  // if user created return true else false
}

Future<bool> isusernameAvailable() async {
  var current_user = (await firebase
      .collection('users')
      .where('username', isEqualTo: SIgnupClicked.username.text)
      .get());
  if (current_user.docs.isEmpty) {
    return true;
  }
  return false;
}
