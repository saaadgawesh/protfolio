import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:protfolio/core/utils/app_size.dart';
import 'package:protfolio/feature/widget/about/about_tab_widgets.dart';

class AboutTab extends StatelessWidget {
  const AboutTab({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = ScreenUtil().screenWidth;
    final bool isWide = screenWidth >= 1100;
    final bool isTablet = screenWidth >= 700;
    final double horizontalPadding =
        isWide ? 32.w : (isTablet ? 24.w : 16.w);
    final double verticalSpacing = isTablet ? AppSizes.h20 : AppSizes.h16;
    final double contentMaxWidth = isWide ? 1200 : 900;
    final double bottomSpacing =
        kBottomNavigationBarHeight +
        MediaQuery.viewPaddingOf(context).bottom +
        AppSizes.h24;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding,
            vertical: AppSizes.h16,
          ),
          child: Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: contentMaxWidth),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const ProfileCard(),
                  SizedBox(height: verticalSpacing),
                  AboutContentSection(
                    isWide: isWide,
                    verticalSpacing: verticalSpacing,
                  ),
                  SizedBox(height: bottomSpacing),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
