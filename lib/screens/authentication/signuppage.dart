import 'package:flutter/material.dart';
import 'package:iro/palette/projectpatetrn.dart';
import 'package:iro/provider/buttons.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: const Color(0xff123456),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
          Alltextfields.register_textfield(hinttext: 'Username here'),
          Alltextfields.register_textfield(hinttext: 'Phone number'),
          Alltextfields.register_textfield(hinttext: 'Password here'),
          Alltextfields.register_textfield(hinttext: 'Confirm password'),
          Padding(
            padding: const EdgeInsets.only(left: 160, top: 20),
            child: loginbutton('Signup'),
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
          )
        ]),
      ),
    );
  }
}
