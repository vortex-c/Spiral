import 'package:at/screens/signup_signin/base/base_signup_signin.dart';
import 'package:flutter/cupertino.dart';

class SignUpScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return BaseSignupSignin(
        child:Container(
          width: double.infinity,
          child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 36, horizontal: 24),
            child: Column(

            ),
          ),
        )
    );
  }

}