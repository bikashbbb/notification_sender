import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iro/palette/projectpatetrn.dart';
import 'package:iro/palette/buttons.dart';
import 'package:iro/provider/auth/signupprovider.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
          width: MediaQuery.of(context).size.width,
          color: const Color(0xff123456),
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
                      // textfields
                      Alltextfields.register_textfield(_.username,
                          hinttext: 'Username here'),
                      Alltextfields.register_textfield(_.phone,
                          hinttext: 'Phone number', context: context),
                      Alltextfields.register_textfield(_.password.value,
                          hinttext: 'Password here'),
                      Alltextfields.register_textfield(_.confirmPasword.value,
                          hinttext: 'Confirm password'),
                      // confirm password
                      Padding(
                        padding: const EdgeInsets.only(right: 50, left: 30),
                        child: SizedBox(
                          width: 300,
                          child: Text(
                            _.messege.value,
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
                              _.signupclicked();
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
