import 'package:flutter/material.dart';
import 'package:protfolio/core/constants/app_colors.dart';
import 'package:protfolio/core/shared_widgets/profile_card.dart';
import 'package:protfolio/core/utils/app_size.dart';
import 'package:protfolio/feature/widget/contact/contact_buttons_section.dart';
import 'package:protfolio/feature/widget/contact/contact_header_section.dart';

class ContactContentSection extends StatelessWidget {
  const ContactContentSection({
    super.key,

  });


  @override
  Widget build(BuildContext context) {
    final contactButtons = ContactButtonsSection(

    );

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(AppSizes.r20),
      decoration: BoxDecoration(
        color: AppColors.cardDark,
        borderRadius: BorderRadius.circular(AppSizes.r12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ProfileCard(showExpandable: false),
          SizedBox(height: AppSizes.h16),
          ContactHeaderSection(),
          SizedBox(height: AppSizes.h16),
          contactButtons,
        ],
      ),
    );
  }
}
