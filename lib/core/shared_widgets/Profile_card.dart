import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:protfolio/core/constants/app_string.dart';
import 'package:protfolio/core/constants/appthem.dart';
import 'package:protfolio/core/shared_widgets/default_divider.dart';
import 'package:protfolio/core/shared_widgets/profile_card_item.dart';
import 'package:protfolio/core/utils/app_size.dart';

class ProfileCard extends StatefulWidget {
  const ProfileCard({super.key, this.showExpandable = true});

  final bool showExpandable;

  @override
  State<ProfileCard> createState() => __ProfileCardState();
}

class __ProfileCardState extends State<ProfileCard> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final bool isCompact = ScreenUtil().screenWidth < 700;
    final double imageWidth = isCompact ? AppSizes.w72 : AppSizes.w100;
    final double imageHeight = isCompact ? AppSizes.h84 : AppSizes.h100;

    return AnimatedContainer(
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
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(AppSizes.r12),
                child: Image.asset(
                  ProjectStrings.image,
                  height: imageHeight,
                  width: imageWidth,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: AppSizes.w12),
              Expanded(
                child: _ProfileIdentity(isCompact: isCompact),
              ),
              if (widget.showExpandable)
                _ExpandButton(
                  isExpanded: isExpanded,
                  onPressed: () {
                    setState(() {
                      isExpanded = !isExpanded;
                    });
                  },
                ),
            ],
          ),
          SizedBox(height: AppSizes.h10),
          AnimatedCrossFade(
            crossFadeState:
                widget.showExpandable && isExpanded
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
    );
  }
}

class _ProfileIdentity extends StatelessWidget {
  const _ProfileIdentity({required this.isCompact});

  final bool isCompact;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          AppStrings.profileName,
          maxLines: isCompact ? 2 : 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: isCompact ? AppSizes.sp18 : AppSizes.sp20,
            color: Colors.white,
          ),
        ),
        SizedBox(height: AppSizes.h4),
        Text(
          AppStrings.profileRole,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: Colors.grey[400],
            fontSize: isCompact ? AppSizes.sp13 : AppSizes.sp14,
          ),
        ),
      ],
    );
  }
}

class _ExpandButton extends StatelessWidget {
  const _ExpandButton({required this.isExpanded, required this.onPressed});

  final bool isExpanded;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
        color: PortfolioColors.golden,
        size: AppSizes.icon24,
      ),
      onPressed: onPressed,
    );
  }
}
