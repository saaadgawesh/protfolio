import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:protfolio/core/utils/app_size.dart';
import 'package:protfolio/feature/widget/resume/resume_tab_widgets.dart';

class Resumetab extends StatelessWidget {
  const Resumetab({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = ScreenUtil().screenWidth;
    final bool isCompact = screenWidth < 420;
    final double horizontalPadding = isCompact ? AppSizes.w12 : AppSizes.w16;
    final double verticalPadding = isCompact ? AppSizes.h12 : AppSizes.h16;
    final double maxContentWidth = (screenWidth - (horizontalPadding * 2))
        .clamp(0.0, 1000.0);
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
            vertical: verticalPadding,
          ),
          child: Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: maxContentWidth),
              child: Column(
                children: [
                  ResumeContentSection(contentWidth: maxContentWidth),
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
