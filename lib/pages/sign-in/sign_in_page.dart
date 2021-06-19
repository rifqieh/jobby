import 'package:flutter/material.dart';
import 'package:jobby/theme.dart';
import 'package:jobby/widgets/custom_image_button.dart';
import 'package:jobby/widgets/custom_text_button.dart';
import 'package:jobby/widgets/custom_field.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: [
          Container(
            margin: EdgeInsets.only(top: 106),
            child: Text(
              'Welcome!\nPlease sign in now',
              style: blackTextStyle.copyWith(
                fontSize: 24,
                fontWeight: bold,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          CustomField(
            iconUrl: 'assets/icon_email.png',
            hint: 'Email',
          ),
          CustomField(
            iconUrl: 'assets/icon_password.png',
            hint: 'Password',
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: EdgeInsets.only(top: 20),
              child: Text(
                'Forgot Password?',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
            ),
          ),
          CustomTextButton(
            title: 'Register',
            margin: EdgeInsets.only(top: 74),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 30),
              child: Text(
                'or continue with',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
            ),
          ),
          CustomImageButton(
            imageUrl: 'assets/icon_google.png',
            title: 'Google Account',
            margin: EdgeInsets.only(top: 30),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 124,
              bottom: 74,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an account? ',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  'Sign up',
                  style: blueTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
