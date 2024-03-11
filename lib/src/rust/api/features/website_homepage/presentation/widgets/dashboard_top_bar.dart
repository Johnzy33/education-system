import 'package:education_system/core/utils/widget_extensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../../../config/themes/theme_config.dart';
import '../../../../../../../core/utils/constants.dart';
import '../../../common_components/input_fields.dart';
import 'notification_icon.dart';

class DashBoardTopBar extends StatefulWidget {
  const DashBoardTopBar({super.key, required this.title});

  final String title;

  @override
  State<DashBoardTopBar> createState() => _DashBoardTopBarState();
}

class _DashBoardTopBarState extends State<DashBoardTopBar> {
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.only(left: 20.0, top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(1),
                border: Border.all(
                  color: AppColors.border,
                  width: 1,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      widget.title,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: context.getWidth() / 3,
                      child: SearchForm(
                        hint: "Search",
                        controller: searchController,
                        onChanged: (value){},

                      ),
                    ),
                    const Spacer(),
                    NotificationIcon(
                      onTap: () {},
                    ),
                    const Gap(20),
                    const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(AppImages.homeImage),
                    ),
                    const Gap(20),

                  ],
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
