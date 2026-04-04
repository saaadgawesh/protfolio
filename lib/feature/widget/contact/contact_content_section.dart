import 'package:flutter/material.dart';
import 'package:protfolio/core/constants/appthem.dart';
import 'package:protfolio/core/utils/app_size.dart';
import 'package:protfolio/core/shared_widgets/profile_card.dart';
import 'package:protfolio/feature/widget/contact/contact_buttons_section.dart';
import 'package:protfolio/feature/widget/contact/contact_header_section.dart';

class ContactContentSection extends StatelessWidget {
  const ContactContentSection({
    super.key,
    required this.isWide,
    required this.isTablet,
    required this.sectionSpacing,
    required this.buttonMaxWidth,
  });

  final bool isWide;
  final bool isTablet;
  final double sectionSpacing;
  final double buttonMaxWidth;

  @override
  Widget build(BuildContext context) {
    final contactButtons = ContactButtonsSection(
      buttonMaxWidth: buttonMaxWidth,
    );

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(isTablet ? AppSizes.r20 : AppSizes.r16),
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
                  child: ContactHeaderSection(sectionSpacing: sectionSpacing),
                ),
                SizedBox(width: sectionSpacing),
                Expanded(child: contactButtons),
              ],
            )
          else ...[
            ContactHeaderSection(sectionSpacing: sectionSpacing),
            SizedBox(height: sectionSpacing),
            contactButtons,
          ],
        ],
      ),
    );
  }
}
