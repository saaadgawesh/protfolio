import 'package:flutter/material.dart';
import 'package:protfolio/core/constants/app_string.dart';
import 'package:protfolio/core/constants/appthem.dart';
import 'package:protfolio/core/shared_widgets/default_divider.dart';
import 'package:protfolio/core/shared_widgets/default_item_skills.dart';
import 'package:protfolio/core/shared_widgets/row_item_in_skills.dart';
import 'package:protfolio/core/utils/app_size.dart';

class Buildresumedetalis extends StatelessWidget {
  const Buildresumedetalis({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.cardDark,
        borderRadius: BorderRadius.circular(AppSizes.r15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: AppSizes.r8,
            offset: Offset(0, AppSizes.h4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.resumeTitle,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
          ),
          defaultdivider(AppSizes.h3, 0, AppSizes.w160),
          SizedBox(height: AppSizes.h8),
          Text(
            AppStrings.techStackDescription,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: AppColors.grayLighter,
                  height: 1.5,
                ),
          ),
          SizedBox(height: AppSizes.h16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.bookmark,
                color: AppColors.golden,
                size: AppSizes.icon24,
              ),
              SizedBox(width: AppSizes.w16),
              Expanded(
                child: Text(
                  AppStrings.resumeExperienceTitle,
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                ),
              ),
              Text(
                AppStrings.resumeCvLabel,
                style: TextStyle(
                  color: AppColors.golden,
                  fontSize: AppSizes.sp16,
                ),
              ),
            ],
          ),
          SizedBox(height: AppSizes.h15),
          ...AppStrings.resumeTechSections.map((section) {
            final items =
                (section['items'] as List<dynamic>).cast<String>().toList();

            return Padding(
              padding: EdgeInsets.only(bottom: AppSizes.h15),
              child: defaultitemskills(
                context,
                section['title'] as String,
                items.isNotEmpty ? items[0] : '',
                items.length > 1 ? items[1] : '',
                items.length > 2 ? items[2] : '',
                extraItems: items.length > 3 ? items.sublist(3) : const [],
              ),
            );
          }),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Additional Tools & Practices',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              SizedBox(height: AppSizes.h12),
              ...AppStrings.resumeAdditionalSkills.map(
                (skill) => Padding(
                  padding: EdgeInsets.only(bottom: AppSizes.h15),
                  child: onlyrowiteminskills(context, skill),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
