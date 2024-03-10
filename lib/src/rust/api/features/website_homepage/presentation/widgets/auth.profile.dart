import 'package:education_system/config/routes/routes.dart';
import 'package:education_system/config/themes/theme_config.dart';
import 'package:education_system/core/utils/constants.dart';
import 'package:education_system/core/utils/widget_extensions.dart';
import 'package:education_system/src/rust/api/features/website_homepage/presentation/widgets/get_in_touch_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthProfile extends StatefulWidget {
  AuthProfile({Key? key}) : super(key: key);
  bool isHover = false;


  @override
  State<AuthProfile> createState() => _AuthProfileState();
}

class _AuthProfileState extends State<AuthProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: context.getWidth(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             _profileTile(),
              _studentInformation(context),

            ],
          ),
        ),
      ),
    );
  }
}
Widget _profileTile(){
  bool isHover = false;
  return SizedBox(
    width: 200,
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                AppImages.appLogo,
                width: 65,
                height: 65,
              ),
            ),
            InkWell(
                onTap: () {},
                onHover: (hover) {
                  setState(() {
                    isHover = hover;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: isHover ? AppColors.blue : Colors.transparent),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: isHover ? 8.0 : 0.0,
                      vertical: isHover ? 4.0 : 0.0,
                    ),
                  ),
                ),
            ),
            const SizedBox(height: 20),
            TextView(
              title: 'Overview',
              onTap: () {
                navigationService.navigateTo(AppRoutes.authProfile);
              },
            ),
            const SizedBox(
              height: 15,
            ),
            TextView(
              title: 'Exam Calendar',
              onTap: () {},
            ),
            const SizedBox(
              height: 15,
            ),
            TextView(
              title: 'Reserve a seat',
              onTap: () {},
            ),
            const SizedBox(
              height: 15,
            ),
            TextView(
              title: 'Attendance Register',
              onTap: () {},
            ),
            const SizedBox(
              height: 15,
            ),
            TextView(
              title: "Exam Certificate",
              onTap: () {
                navigationService.navigateTo(AppRoutes.webLogin);
              },
            ),
            const SizedBox(
              height: 15,
            ),
            TextView(
              title: "Library Service",
              onTap: () {
                navigationService.navigateTo(AppRoutes.webLogin);
              },
            ),
            const SizedBox(
              height: 15,
            ),
            TextView(
              title: "Payment",
              onTap: () {
                navigationService.navigateTo(AppRoutes.webLogin);
              },
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextView(
                      title: "Settings",
                      onTap: () {
                        navigationService.navigateTo(AppRoutes.webLogin);
                      },
                    ),
                    const SizedBox(width: 70,),
                    Image.asset(
                      AppImages.iconUp,
                      width: 20,
                      height: 20,
                    ),
                  ],
                ),
              ],
            ),

          ],
        ),
      ),
    ),
  );
}

Widget _studentInformation(BuildContext context){
  return Container(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      
      children: [
        Container(
          width: MediaQuery.of(context).size.width*0.75,
          height: 80,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.black,
              width: 0.5,
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: Text(
              'Your Text',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}




void setState(Null Function() param0) {
}
class TextView extends StatefulWidget {
  const TextView({super.key, required this.title, required this.onTap});

  final String title;
  final Function() onTap;

  @override
  State<TextView> createState() => _TextViewState();
}

class _TextViewState extends State<TextView> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      onHover: (hover) {
        setState(() {
          isHover = hover;
        });
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: isHover ? AppColors.blue : Colors.transparent),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: isHover ? 8.0 : 4.0,
            vertical: isHover ? 5.0 : 4.0,
          ),
          child: Text(
            widget.title,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              color: isHover ? AppColors.lightPrimary : AppColors.greyText,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}