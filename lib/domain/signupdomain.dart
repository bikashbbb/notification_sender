import 'package:firebase_auth/firebase_auth.dart';

void sendOtp(phonenum) async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: '+977 9823099656',
      verificationCompleted: (PhoneAuthCredential credential) {
        print('verified completely');
      },
      verificationFailed: (FirebaseAuthException e) {
        print(e);
      },
      codeSent: (String verificationId, int? resendToken) {},
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

void createAccount()async{
  //
}