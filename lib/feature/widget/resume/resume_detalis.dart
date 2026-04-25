import 'package:flutter/material.dart';
import 'package:protfolio/core/constants/app_string.dart';
import 'package:protfolio/core/constants/appthem.dart';
import 'package:protfolio/core/shared_widgets/default_divider.dart';
import 'package:protfolio/core/shared_widgets/default_item_skills.dart';
import 'package:protfolio/core/shared_widgets/row_item_in_skills.dart';
import 'package:protfolio/core/utils/app_size.dart';

class Buildresumedetalis extends StatelessWidget {
  const Buildresumedetalis({super.key, required this.contentWidth});

  final double contentWidth;

  @override
  Widget build(BuildContext context) {
    final bool isNarrow = contentWidth < 520;
    final bool isWide = contentWidth > 900;
    final bool useStackedHeader = contentWidth < 650;
    final double horizontalPadding = isNarrow ? AppSizes.w12 : AppSizes.w16;
    final double verticalSpacing = isNarrow ? AppSizes.h12 : AppSizes.h15;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(horizontalPadding),
      decoration: BoxDecoration(
        color: PortfolioColors.cardDark,
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
          defaultdivider(
            AppSizes.h3,
            0,
            isWide ? AppSizes.w160 : AppSizes.w130,
          ),
          SizedBox(height: isNarrow ? AppSizes.h6 : AppSizes.h8),
          Text(
            AppStrings.techStackDescription,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: PortfolioColors.grayLighter,
              height: 1.5,
            ),
          ),
          SizedBox(height: AppSizes.h16),
          useStackedHeader
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.bookmark,
                          color: PortfolioColors.golden,
                          size: AppSizes.icon24,
                        ),
                        SizedBox(width: AppSizes.w12),
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
                      ],
                    ),
                    SizedBox(height: AppSizes.h12),
                  ],
                )
              : Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.bookmark,
                      color: PortfolioColors.golden,
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
                    Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      spacing: AppSizes.w4,
                      children: [
                        Text(
                          AppStrings.resumeCvLabel,
                          style: TextStyle(
                            color: PortfolioColors.golden,
                            fontSize: AppSizes.sp16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
          SizedBox(height: verticalSpacing),
          ...AppStrings.resumeTechSections.map((section) {
            final items =
                (section['items'] as List<dynamic>).cast<String>().toList();

            return Padding(
              padding: EdgeInsets.only(bottom: verticalSpacing),
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
                  padding: EdgeInsets.only(bottom: verticalSpacing),
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
