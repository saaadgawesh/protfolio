import 'package:flutter/material.dart';
import 'package:protfolio/core/constants/app_colors.dart';
import 'package:protfolio/core/constants/app_string.dart';
import 'package:protfolio/core/shared_widgets/default_divider.dart';
import 'package:protfolio/core/utils/app_size.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final skills = [
      {
        'icon': Icons.phone_android,
        'title': AppStrings.skills[0]['title']!,
        'subtitle': AppStrings.skills[0]['subtitle']!,
      },
      {
        'icon': Icons.api,
        'title': AppStrings.skills[1]['title']!,
        'subtitle': AppStrings.skills[1]['subtitle']!,
      },
      {
        'icon': Icons.design_services,
        'title': AppStrings.skills[2]['title']!,
        'subtitle': AppStrings.skills[2]['subtitle']!,
      },
      {
        'icon': Icons.cloud,
        'title': AppStrings.skills[3]['title']!,
        'subtitle': AppStrings.skills[3]['subtitle']!,
      },
    ];

    return Container(
      padding: EdgeInsets.all(AppSizes.r16),
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
            AppStrings.skillsTitle,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
          ),
          defaultdivider(AppSizes.h3, 0, AppSizes.w120),
          SizedBox(height: AppSizes.h16),
          ...skills
              .map(
                (skill) => Padding(
                  padding: EdgeInsets.only(bottom: AppSizes.h12),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(AppSizes.r8),
                        decoration: BoxDecoration(
                          color: AppColors.golden,
                          borderRadius: BorderRadius.circular(AppSizes.r8),
                        ),
                        child: Icon(
                          skill['icon'] as IconData,
                          color: Colors.white,
                          size: AppSizes.icon20,
                        ),
                      ),
                      SizedBox(width: AppSizes.w12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              skill['title'] as String,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: AppSizes.sp16,
                              ),
                            ),
                            Text(
                              skill['subtitle'] as String,
                              style: TextStyle(
                                color: Colors.grey[400],
                                fontSize: AppSizes.sp12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
