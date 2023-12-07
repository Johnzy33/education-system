import 'package:education_system/config/themes/theme_config.dart';
import 'package:education_system/core/utils/widget_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/utils/constants.dart';

class FooterPage extends StatelessWidget {
  const FooterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.getWidth(),
      height: context.getHeight() / 2,
      padding: const EdgeInsets.only(top: 30, left: 64, bottom: 30),
      decoration: const BoxDecoration(color: AppColors.footerBg),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Image.asset(
                    AppImages.appFooterLogo,
                    width: 65,
                    height: 65,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    'FEDERAL COLLEGE OF \nEDUCATION IDIDEP-IBIONO',
                    style: GoogleFonts.inter(
                      color: const Color(0xFF02683B),
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 37,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Row(
                  children: [
                    TextItems(
                      title: 'Find Us',
                      onClicked: () {},
                    ),
                    TextItems(
                      title: 'Contact Us',
                      onClicked: () {},
                    ),
                    TextItems(
                      title: 'News',
                      onClicked: () {},
                    ),
                    TextItems(
                      title: 'Events',
                      onClicked: () {},
                    ),
                    TextItems(
                      title: 'Blog',
                      onClicked: () {},
                    ),
                    TextItems(
                      title: 'Our Staffs',
                      onClicked: () {},
                    ),
                    TextItems(
                      title: 'Our Organisation',
                      onClicked: () {},
                      showDivider: false,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 37,
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 12),
                child: Row(
                  children: [
                    IconItems(
                        icon: AppImages.facebookIcon,
                        onClicked: () {}
                    ),
                    IconItems(
                        icon: AppImages.twitterIcon,
                        onClicked: () {}
                    ),
                    IconItems(
                        icon: AppImages.instagramIcon,
                        onClicked: () {}
                    ),
                    IconItems(
                        icon: AppImages.youtubeIcon,
                        onClicked: () {}
                    ),
                    IconItems(
                        icon: AppImages.linkedinIcon,
                        onClicked: () {}
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Text(
                  '© 2023 FCEI. All rights reserved.',
                  style: GoogleFonts.roboto(
                    color: const Color(0xFFF38222),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )
            ],
          ),
          Expanded(
              child: Image.asset(
                  AppImages.lgMapView,
                width: context.getWidth(),
                height: context.getHeight() / 3,
              ))
        ],
      ),
    );
  }
}

class TextItems extends StatelessWidget {
  const TextItems(
      {super.key,
      required this.title,
      required this.onClicked,
      this.showDivider = true});

  final String title;
  final Function onClicked;
  final bool? showDivider;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: GoogleFonts.roboto(
            color: AppColors.blue,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          width: 22,
        ),
        Visibility(
          visible: showDivider == true,
          child: Container(
            width: 2,
            height: 34,
            decoration: ShapeDecoration(
              color: AppColors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 15,
        ),
      ],
    );
  }
}

class IconItems extends StatelessWidget {
  const IconItems(
      {super.key,
        required this.icon,
        required this.onClicked
      });

  final String icon;
  final Function onClicked;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(icon),
        const SizedBox(
          width: 15,
        ),
      ],
    );
  }
}
