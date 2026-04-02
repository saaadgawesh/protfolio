import 'package:flutter/material.dart';
import 'package:protfolio/core/assets/assetImages.dart';
import 'package:protfolio/core/constants/Appthem.dart';
import 'package:protfolio/core/constants/app_string.dart';
import 'package:protfolio/core/utils/App_Size.dart';
import 'package:protfolio/feature/tabs/widget/default_Divider.dart';
import 'package:protfolio/feature/tabs/widget/profile_card_item.dart';

class ProfileCard extends StatefulWidget {
  const ProfileCard({super.key});

  @override
  State<ProfileCard> createState() => __ProfileCardState();
}

class __ProfileCardState extends State<ProfileCard> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double cardMaxWidth =
            constraints.maxWidth.isFinite ? constraints.maxWidth : 900;

        final double imageHeight = AppSizes.h90;
        final double imageWidth = AppSizes.w77;

        return Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: cardMaxWidth),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeInOut,
              width: double.infinity,
              padding: EdgeInsets.all(AppSizes.r16),
              decoration: BoxDecoration(
                color: PortfolioColors.cardDark,
                borderRadius: BorderRadius.circular(AppSizes.r16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: AppSizes.h6,
                    offset: Offset(0, AppSizes.h3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          /// الصورة
                          ClipRRect(
                            borderRadius: BorderRadius.circular(AppSizes.r12),
                            child: Image.asset(
                              assetImage.image,
                              height: imageHeight,
                              width: imageWidth,
                              fit: BoxFit.cover,
                            ),
                          ),

                          SizedBox(width: AppSizes.w12),

                          /// الاسم + الوظيفة
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  AppStrings.profileName,
                                  style: Theme.of(
                                    context,
                                  ).textTheme.headlineSmall?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: AppSizes.sp20,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: AppSizes.h4),
                                Text(
                                  AppStrings.profileRole,
                                  style: Theme.of(
                                    context,
                                  ).textTheme.bodyMedium?.copyWith(
                                    color: Colors.grey[400],
                                    fontSize: AppSizes.sp14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Center(
                            child: IconButton(
                              icon: Icon(
                                isExpanded
                                    ? Icons.keyboard_arrow_up
                                    : Icons.keyboard_arrow_down,
                                color: PortfolioColors.golden,
                                size: AppSizes.icon24,
                              ),
                              onPressed: () {
                                setState(() {
                                  isExpanded = !isExpanded;
                                });
                              },
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: AppSizes.h10),

                      /// زر القائمة في النص تحت
                    ],
                  ),

                  /// 🔽 التفاصيل
                  AnimatedCrossFade(
                    crossFadeState:
                        isExpanded
                            ? CrossFadeState.showSecond
                            : CrossFadeState.showFirst,
                    duration: const Duration(milliseconds: 300),
                    firstChild: const SizedBox.shrink(),
                    secondChild: Column(
                      children: [
                        defaultdivider(0, 0, 0),
                        SizedBox(height: AppSizes.h10),
                        ProfileCardItem(
                          title: AppStrings.profileEmailTitle,
                          description: AppStrings.profileEmailValue,
                          icon: Icons.message,
                        ),
                        SizedBox(height: AppSizes.h10),
                        ProfileCardItem(
                          title: AppStrings.profilePhoneTitle,
                          description: AppStrings.profilePhoneValue,
                          icon: Icons.phone,
                        ),
                        SizedBox(height: AppSizes.h10),
                        ProfileCardItem(
                          title: AppStrings.profileBirthdayTitle,
                          description: AppStrings.profileBirthdayValue,
                          icon: Icons.party_mode,
                        ),
                        SizedBox(height: AppSizes.h10),
                        ProfileCardItem(
                          title: AppStrings.profileLocationTitle,
                          description: AppStrings.profileLocationValue,
                          icon: Icons.pin_drop,
                        ),
                        SizedBox(height: AppSizes.h10),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
