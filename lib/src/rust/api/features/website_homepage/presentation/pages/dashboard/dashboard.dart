import 'package:education_system/core/utils/widget_extensions.dart';
import 'package:education_system/src/rust/api/features/website_homepage/presentation/pages/dashboard/manage_all_schools_item.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../../../../config/themes/theme_config.dart';
import '../../../data/datasources/model/dummy_models.dart';
import '../../widgets/side_bar_view.dart';
import '../governance/components/governance_text_items.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DashboardSideView(
          pageTitle: 'Dashboard',
          fullContent: Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Gap(40),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text.rich(
                        textAlign: TextAlign.center,
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Welcome,',
                              style: GoogleFonts.inter(
                                color: AppColors.greyText,
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: ' Clement 👋',
                              style: GoogleFonts.inter(
                                color: AppColors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Gap(20),
                    const ManageAllSchoolsItem(),
                    // const Gap(20),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: SizedBox(
                              height: context.getHeight() - 110,
                              child: GridView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4,
                                  childAspectRatio: 0.76,
                                  crossAxisSpacing: 20,
                                  mainAxisSpacing: 15,
                                ),
                                itemCount: schoolActivitiesList.length,
                                itemBuilder: (BuildContext context, int index) {
                                  final list = schoolActivitiesList[index];
                                  return GovTextItem(
                                    title: list.title,
                                    description: list.subTitle,
                                    onTap: () {},
                                  );
                                },)
                          ),
                        ),
                      ),
                    ),
                    const Gap(40),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
