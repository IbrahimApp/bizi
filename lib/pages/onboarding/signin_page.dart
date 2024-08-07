import 'package:flutter/material.dart';
import 'package:bizi/components/constants/app_color.dart';
import 'package:bizi/components/ui/app_bar.dart';
import 'package:bizi/components/ui/app_text.dart';
import 'package:bizi/components/ui/custom_back_button.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: '',
        actions: [],
        leading: CustomBackButton(
          tapEven: () {
            Navigator.pop(context);
          },
          whiteColor: false,
        ),
      ),
      body: Center(
        child: AppText(
          text: "Sign In",
          color: AppColor.black54,
          fontWeight: FontWeight.bold,
          size: 40,
        ),
      ),
    );
  }
}
