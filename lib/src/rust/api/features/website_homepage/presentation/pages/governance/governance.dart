import 'package:education_system/core/utils/widget_extensions.dart';
import 'package:education_system/src/rust/api/features/website_homepage/presentation/pages/governance/components/meet_our_governance.dart';
import 'package:flutter/material.dart';

import '../../../../../../../../config/routes/routes.dart';
import '../../../../../../../../config/themes/theme_config.dart';
import '../../../../../../../../core/utils/constants.dart';
import '../../widgets/footer.dart';
import '../../widgets/web_top_bar.dart';
import 'components/governance_text_items.dart';

class GovernancePage extends StatefulWidget {
  const GovernancePage({super.key});

  @override
  State<GovernancePage> createState() => _GovernancePageState();
}

class _GovernancePageState extends State<GovernancePage> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: WebTopBarView(
          onLogoClicked: () {
            debugPrint("onLogoClicked");
            navigationService.navigateTo(AppRoutes.home);
          },
        ),
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: AppColors.govBackG,
            child: Column(
              children: [
                const SizedBox(height: 60,),
                const MeetOurGovernanceItem(),
                const SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70),
                child: Wrap(
                  alignment: WrapAlignment.center,
                  runSpacing: 30,
                  spacing: 30,
                  children: List<Widget>.generate(5, (index) {
                    return SizedBox(
                      width: context.getWidth() / 2 - 190,
                      child: GovTextItem(
                        title: 'Board of Directors',
                        description: 'We always begin by working to uncover and understand our client’s product, business and audience.',
                        onTap: () {},
                      ),
                    );
                  }),
                ),
              ),
                const SizedBox(height: 60,),
                const FooterPage(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


