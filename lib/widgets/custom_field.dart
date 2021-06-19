import 'package:flutter/material.dart';
import 'package:jobby/theme.dart';

class CustomField extends StatelessWidget {
  final String iconUrl;
  final String hint;

  const CustomField({
    Key? key,
    this.iconUrl = '',
    this.hint = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      width: double.infinity,
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.all(18),
      decoration: BoxDecoration(
        border: Border.all(
          color: kStrokeButtonColor,
        ),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        children: [
          Container(
            height: 26,
            width: 26,
            margin: EdgeInsets.only(right: 18),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  iconUrl,
                ),
              ),
            ),
          ),
          Expanded(
            child: TextFormField(
              decoration: InputDecoration.collapsed(
                hintText: hint,
                hintStyle: greyTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: semiBold,
                ),
              ),
              style: greyTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
