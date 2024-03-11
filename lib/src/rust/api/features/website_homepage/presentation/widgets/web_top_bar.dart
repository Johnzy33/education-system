import 'package:education_system/config/routes/routes.dart';
import 'package:education_system/config/themes/theme_config.dart';
import 'package:education_system/core/utils/constants.dart';
import 'package:education_system/src/rust/api/features/website_homepage/presentation/widgets/get_in_touch_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../common_components/topbar_textview.dart';

class WebTopBarView extends StatefulWidget {
  const WebTopBarView({super.key, this.onLogoClicked});

  final Function()? onLogoClicked;

  @override
  State<WebTopBarView> createState() => _WebTopBarViewState();
}

class _WebTopBarViewState extends State<WebTopBarView> {
  bool isHover = false;
  GlobalKey btnKey = GlobalKey();

  void _showMenu() {
    final RenderBox btnBox = btnKey.currentContext!.findRenderObject() as RenderBox;
    final Offset btnPosition = btnBox.localToGlobal(Offset.zero);
    final Size btnSize = btnBox.size;

    showMenu(
      context: context,
      position: RelativeRect.fromLTRB(
        btnPosition.dx,
        btnPosition.dy + btnSize.height,
        btnPosition.dx + btnSize.width,
        btnPosition.dy,
      ),
      items: <String>['About Us', 'Governance'].map((String choice) {
        return PopupMenuItem<String>(
          value: choice,

          child: InkWell(
            onHover: (hover) {
              setState(() {
                isHover = hover;
              });
            },
             hoverColor: AppColors.red,

            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: isHover ? AppColors.green : Colors.transparent),
              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
              child: Text(choice),
            ),
          ),
        );
      }).toList(),
    ).then((value) {
      value == 'About Us'
          ? navigationService.navigateTo(AppRoutes.aboutUs)
          : navigationService.navigateTo(AppRoutes.governance);
    });
  }

  @override
  Widget build(BuildContext context) {
    // Screen width
    double screenWidth = MediaQuery.of(context).size.width;

    // Adjust sizes based on screen width
    double padding = screenWidth < 600 ? 20.0 : 60.0;
    double imageSize = screenWidth < 600 ? 50 : 65;
    double fontSize = screenWidth < 600 ? 14 : 16;

    return SizedBox(
      width: screenWidth,
      height: 80,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: padding, vertical: 7),
        child: screenWidth <= 600
        ? Row(
          // alignment: WrapAlignment.start,
          // crossAxisAlignment: WrapCrossAlignment.start,
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  debugPrint("onLogoClicked..");
                  widget.onLogoClicked!();
                },
                child: Row(
                  children: [
                    Image.asset(
                      AppImages.appLogo,
                      width: imageSize,
                      height: imageSize,
                    ),
                    const SizedBox(width: 8,),
                    Text(
                      'FEDERAL COLLEGE OF \nEDUCATION IDIDEP-IBIONO',
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.inter(
                        color: const Color(0xFF02683B),
                        fontSize: fontSize,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                // Handle menu opening
              },
            ),
          ],
        )
        : Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              AppImages.appLogo,
              width: imageSize,
              height: imageSize,
            ),
            const SizedBox(width: 8,),
            SizedBox(
              width: 244,
              child: Text(
                'FEDERAL COLLEGE OF \nEDUCATION IDIDEP-IBIONO',
                style: GoogleFonts.inter(
                  color: const Color(0xFF02683B),
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            const SizedBox(
              width: 35,
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
                      color: isHover ? AppColors.green : Colors.transparent),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: isHover ? 8.0 : 0.0,
                      vertical: isHover ? 4.0 : 0.0,
                    ),
                    child: Text(
                      'Study',
                      style: GoogleFonts.inter(
                        color:
                            isHover ? AppColors.white : const Color(0xFF828282),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                )),
            const SizedBox(
              width: 32,
            ),
            TopBarTextItem(
              title: 'Research',
              onTap: () {

              },
            ),
            const SizedBox(
              width: 32,
            ),
            TopBarTextItem(
              title: 'Courses',
              onTap: () {},
            ),
            const SizedBox(
              width: 32,
            ),
            InkWell(
              key: btnKey,
              onTap: _showMenu,
              child: TopBarTextItem(
                title: 'Our Organisation',
                onTap: () {
                  _showMenu();
                },
              ),
            ),
            const SizedBox(
              width: 32,
            ),
            TopBarTextItem(
              title: 'Alumni',
              onTap: () {},
            ),
            const SizedBox(
              width: 32,
            ),
            TopBarTextItem(
              title: "Portal",
              onTap: () {
                navigationService.navigateTo(AppRoutes.webLogin);
              },
            ),
            const Spacer(),
            const GetInTouchButton(),
          ],
        ),
      ),
    );
  }
}
