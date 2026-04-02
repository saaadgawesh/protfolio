import 'package:flutter/material.dart';
import 'package:protfolio/core/constants/Appthem.dart';
import 'package:protfolio/core/constants/app_string.dart';
import 'package:protfolio/core/utils/App_Size.dart';
import 'package:protfolio/feature/tabs/widget/Profile_card.dart';
import 'package:protfolio/feature/tabs/widget/default_Divider.dart';
import 'package:protfolio/feature/tabs/widget/default_elevated_Button.dart';
import 'package:protfolio/feature/tabs/widget/open_link_widgets.dart';

class Contacttab extends StatelessWidget {
  const Contacttab({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: LayoutBuilder(
          builder: (context, constraints) {
            final bool isWide = constraints.maxWidth >= 1100;
            final bool isTablet = constraints.maxWidth >= 700;
            final double horizontalPadding =
                isWide ? AppSizes.w32 : (isTablet ? AppSizes.w24 : AppSizes.w16);
            final double contentMaxWidth = isWide ? 1200 : 900;
            final double sectionSpacing =
                isTablet ? AppSizes.h20 : AppSizes.h16;
            final double buttonMaxWidth = isWide ? 420 : double.infinity;

            Widget contactButtons = Wrap(
              spacing: AppSizes.w12,
              runSpacing: AppSizes.h12,
              children: [
                SizedBox(
                  width: buttonMaxWidth,
                  child: defaultelevatedbutton(
                    () => openLink(AppStrings.githubUrl),
                    Icons.link,
                    AppStrings.contactGithub,
                  ),
                ),
                SizedBox(
                  width: buttonMaxWidth,
                  child: defaultelevatedbutton(
                    () => openWhatsApp(AppStrings.whatsappNumber),
                    Icons.link,
                    AppStrings.contactWhatsapp,
                  ),
                ),
                SizedBox(
                  width: buttonMaxWidth,
                  child: defaultelevatedbutton(
                    () => openEmail(AppStrings.emailAddress),
                    Icons.email,
                    AppStrings.contactEmail,
                  ),
                ),
                SizedBox(
                  width: buttonMaxWidth,
                  child: defaultelevatedbutton(
                    () => openLink(AppStrings.facebookUrl),
                    Icons.facebook,
                    AppStrings.contactFacebook,
                  ),
                ),
              ],
            );

            return SingleChildScrollView(
              padding: EdgeInsets.symmetric(
                horizontal: horizontalPadding,
                vertical: AppSizes.h16,
              ),
              child: Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: contentMaxWidth),
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(
                      isTablet ? AppSizes.r20 : AppSizes.r16,
                    ),
                    decoration: BoxDecoration(
                      color: PortfolioColors.cardDark,
                      borderRadius: BorderRadius.circular(AppSizes.r12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const ProfileCard(showExpandable: false),
                        SizedBox(height: sectionSpacing),
                        if (isWide)
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: _ContactHeader(
                                  sectionSpacing: sectionSpacing,
                                ),
                              ),
                              SizedBox(width: sectionSpacing),
                              Expanded(child: contactButtons),
                            ],
                          )
                        else ...[
                          _ContactHeader(sectionSpacing: sectionSpacing),
                          SizedBox(height: sectionSpacing),
                          contactButtons,
                        ],
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _ContactHeader extends StatelessWidget {
  const _ContactHeader({required this.sectionSpacing});

  final double sectionSpacing;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.contactTitle,
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        defaultdivider(AppSizes.h3, 0, AppSizes.w250),
        SizedBox(height: sectionSpacing * 0.75),
        Text(
          AppStrings.contactDescription,
          style: Theme.of(
            context,
          ).textTheme.bodyMedium?.copyWith(color: Colors.grey[400]),
        ),
      ],
    );
  }
}
