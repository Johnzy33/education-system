import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../../core/utils/constants.dart';

class NotificationIcon extends StatelessWidget {
  const NotificationIcon({super.key, required this.onTap});

  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Stack(
        alignment: Alignment.center,
        children: [
          SvgPicture.asset(AppImages.notificationIcon),
          Positioned(
            right: 0,
            top: 10,
            child: SvgPicture.asset(AppImages.redDot),
          ),
        ],
      ),
    );
  }
}