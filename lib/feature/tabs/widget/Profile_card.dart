import 'package:flutter/material.dart';
import 'package:protfolio/core/assets/assetImages.dart';
import 'package:protfolio/core/constants/Appthem.dart';
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
        final bool useCompactHeader = constraints.maxWidth < 360;
        final bool useVerticalHeader = constraints.maxWidth < 520;
        final double cardMaxWidth =
            constraints.maxWidth.isFinite ? constraints.maxWidth : 900;
        final double imageHeight =
            useCompactHeader ? AppSizes.h84 : AppSizes.h90;
        final double imageWidth =
            useCompactHeader ? AppSizes.w72 : AppSizes.w77;

        return Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: cardMaxWidth),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeInOut,
              width: double.infinity,
              padding: EdgeInsets.all(
                useVerticalHeader ? AppSizes.r14 : AppSizes.r16,
              ),
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
                  useVerticalHeader
                      ? Column(
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: IconButton(
                            padding: EdgeInsets.zero,
                            constraints: const BoxConstraints(),
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
                        SizedBox(height: AppSizes.h8),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(AppSizes.r12),
                          child: Image.asset(
                            assetImage.image,
                            height: imageHeight,
                            width: imageWidth,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: AppSizes.h12),
                        Text(
                          'Saad Gawesh',
                          textAlign: TextAlign.center,
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
                          'Flutter Developer',
                          textAlign: TextAlign.center,
                          style: Theme.of(
                            context,
                          ).textTheme.bodyMedium?.copyWith(
                            color: Colors.grey[400],
                            fontSize: AppSizes.sp14,
                          ),
                        ),
                      ],
                    )
                      : Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
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
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Saad Gawesh',
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
                                    'Flutter Developer',
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
                            IconButton(
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
                          ],
                        ),
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
                          title: "Email",
                          description: "saadgawesg608@gmail.com",
                          icon: Icons.message,
                        ),
                        SizedBox(height: AppSizes.h10),
                        ProfileCardItem(
                          title: "Phone",
                          description: "+20/1031214881",
                          icon: Icons.phone,
                        ),
                        SizedBox(height: AppSizes.h10),
                        ProfileCardItem(
                          title: "Birthday",
                          description: "12/3/1991",
                          icon: Icons.party_mode,
                        ),
                        SizedBox(height: AppSizes.h10),
                        ProfileCardItem(
                          title: "location",
                          description: "Egypt",
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
