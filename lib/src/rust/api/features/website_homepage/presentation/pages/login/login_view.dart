import 'package:education_system/core/utils/widget_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../../../../config/routes/routes.dart';
import '../../../../../../../../config/themes/theme_config.dart';
import '../../../../../../../../core/utils/constants.dart';
import '../../../../common_components/custom_btn.dart';
import '../../../../common_components/input_fields.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final matricNumberController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0),
      child: Container(
        width: context.getWidth() / 3 + 100,
        height: context.getHeight() - 100,
        decoration: ShapeDecoration(
          color: AppColors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    AppImages.appLogo,
                    width: 100,
                    height: 80,
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                'Login',
                style: GoogleFonts.inter(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Matric Number',
                style: GoogleFonts.inter(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              EditTextForm(
                  hint: "Enter matric number",
                  onChanged: (value) {
                    setState(() {});
                  },
                  onFieldSubmitted: (value) {
                    setState(() {});
                  },
                  controller: matricNumberController),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Password',
                style: GoogleFonts.inter(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              EditTextForm(
                  hint: "Enter password",
                  onChanged: (value) {
                    setState(() {});
                  },
                  onFieldSubmitted: (value) {
                    setState(() {});
                  },
                  controller: passwordController),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Forgot password?',
                style: GoogleFonts.inter(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              AppButton(title: "Student Login", onPressed: () {}, enabled: true),
              const SizedBox(
                height: 22,
              ),
              InkWell(
                onTap: () {
                  navigationService.navigateTo(AppRoutes.webSignUp);
                },
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Don’t have an account?',
                        style: GoogleFonts.inter(
                          color: const Color(0xFFE0E0E0),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: ' Sign Up',
                        style: GoogleFonts.inter(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(AppImages.supportAgent),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Need Help? ',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.karla(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.24,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}