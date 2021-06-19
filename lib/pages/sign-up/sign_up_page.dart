import 'package:flutter/material.dart';
import 'package:jobby/theme.dart';
import 'package:jobby/widgets/custom_image_button.dart';
import 'package:jobby/widgets/custom_text_button.dart';
import 'package:jobby/widgets/custom_field.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

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
              'Welcome!\nPlease sign up now',
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
            iconUrl: 'assets/icon_name.png',
            hint: 'Fullname',
          ),
          CustomField(
            iconUrl: 'assets/icon_email.png',
            hint: 'Email',
          ),
          CustomField(
            iconUrl: 'assets/icon_password.png',
            hint: 'Password',
          ),
          CustomTextButton(
            title: 'Register',
            margin: EdgeInsets.only(top: 30),
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
                  'Already have an account? ',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  'Sign in',
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
