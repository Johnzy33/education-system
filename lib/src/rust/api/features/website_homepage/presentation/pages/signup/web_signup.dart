import 'package:education_system/core/utils/constants.dart';
import 'package:education_system/core/utils/widget_extensions.dart';
import 'package:education_system/src/rust/api/features/website_homepage/presentation/pages/signup/signup_view.dart';
import 'package:flutter/material.dart';

import '../../../../../../../../config/themes/theme_config.dart';

class WebSignUpPage extends StatefulWidget {
  const WebSignUpPage({super.key});

  @override
  State<WebSignUpPage> createState() => _WebSignUpPageState();
}

class _WebSignUpPageState extends State<WebSignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(color: AppColors.facultiesBgColor),
          height: context.getHeight(),
          width: context.getWidth(),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    AppImages.loginIcon,
                    height: context.getHeight() - 100,
                    width: context.getWidth() / 2 + 50,
                  ),
                  const SizedBox(
                    height: 45,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50.0),
                    child: Text(
                      '© 2023 FCEI. All rights reserved.',
                      style: TextStyle(
                        color: Color(0xFFF38222),
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        height: 0.09,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 45,
                  ),
                ],
              ),
              const SizedBox(
                width: 30,
              ),
              const SignUpView()
            ],
          ),
        ),
      )),
    );
  }
}
