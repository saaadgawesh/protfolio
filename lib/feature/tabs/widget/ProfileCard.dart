import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:protfolio/core/assets/assetImages.dart';
import 'package:protfolio/core/constants/Appthem.dart';
import 'package:protfolio/feature/tabs/widget/default_Divider.dart';

class ProfileCard extends StatefulWidget {
  const ProfileCard({super.key});

  @override
  State<ProfileCard> createState() => __ProfileCardState();
}

class __ProfileCardState extends State<ProfileCard> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeInOut,
          width: 400,

          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: PortfolioColors.cardDark,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 6,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      assetImage.image,
                      height: 90.h,
                      width: 77.w,
                      fit: BoxFit.cover,
                    ),
                  ),

                  Column(
                    children: [
                      Text(
                        'Saad Gawesh',
                        style: Theme.of(
                          context,
                        ).textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Flutter Developer',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),

                  IconButton(
                    icon: Icon(
                      isExpanded
                          ? Icons.keyboard_arrow_up
                          : Icons.keyboard_arrow_down,
                      color: PortfolioColors.golden,
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
                    defaultdivider(0.h, 0.w, 0.w),
                    SizedBox(height: 10.h),
                    Row(
                      children: [
                        Icon(Icons.message, color: PortfolioColors.golden),
                        SizedBox(width: 30.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Email',
                              style: TextStyle(color: Colors.grey),
                              textAlign: TextAlign.start,
                            ),
                            Text(
                              'saadgawesg608@gmail.com',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: PortfolioColors.golden,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      children: [
                        Icon(Icons.phone, color: PortfolioColors.golden),
                        SizedBox(width: 30.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Phone', style: TextStyle(color: Colors.grey)),
                            Text(
                              '+20/1031214881',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: PortfolioColors.golden,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.party_mode, color: PortfolioColors.golden),
                        SizedBox(width: 30.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Birthday',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              '12/3/1991',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: PortfolioColors.golden,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    SizedBox(height: 10.h),
                    Row(
                      children: [
                        Icon(Icons.pin_drop, color: PortfolioColors.golden),
                        SizedBox(width: 30.w),
                        Column(
                          children: [
                            Text(
                              'Location',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              'Egypt',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: PortfolioColors.golden,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
