import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iro/domain/signupdomain.dart';
import 'package:iro/palette/projectpatetrn.dart';
import 'package:iro/palette/buttons.dart';
import 'package:iro/provider/auth/signupprovider.dart';
import 'package:flutter_otp/flutter_otp.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
          width: MediaQuery.of(context).size.width,
          color: background,
          child: GetBuilder<SIgnupClicked>(
              init: SIgnupClicked(),
              builder: (_) {
                return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 70, right: 36),
                        child: Text(
                          'Create Account',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: SizedBox(
                            width: 330,
                            child: GetBuilder<TextfieldController>(
                                init: TextfieldController(),
                                builder: (builder) {
                                  return Text(
                                    TextfieldController.usermsginitial,
                                    style: const TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  );
                                })),
                      ),
                      // textfieldts
                      Alltextfields.register_textfield(SIgnupClicked.username,
                          hinttext: 'Username here'),
                      Alltextfields.register_textfield(SIgnupClicked.phone,
                          hinttext: 'Phone number', context: context),
                      Alltextfields.register_textfield(
                          SIgnupClicked.password.value,
                          hinttext: 'Password here'),
                      Alltextfields.register_textfield(_.confirmPasword.value,
                          hinttext: 'Confirm password'),
                      // confirm password
                      Padding(
                        padding: const EdgeInsets.only(right: 50, left: 30),
                        child: SizedBox(
                          width: 300,
                          child: Text(
                            SIgnupClicked.messege.value,
                            style: const TextStyle(
                                color: Colors.red,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 185, top: 20),
                        child: InkWell(
                            onTap: () {
                              //_.signupclicked();
                              //Get.to(const PhoneVerify());
                            },
                            child: loginbutton(
                              'Signup',
                            )),
                      ),

                      // already have an account
                      Padding(
                        padding: const EdgeInsets.only(top: 200),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Already have a account?',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300),
                            ),
                            InkWell(
                              onTap: () {
                                // TODO: clicked on sign in
                              },
                              child: const Text('sign in',
                                  style: TextStyle(
                                      color: Colors.orange,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            )
                          ],
                        ),
                      ),
                    ]);
              })),
    );
  }
}
