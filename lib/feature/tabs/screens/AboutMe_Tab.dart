import 'package:flutter/material.dart';
import 'package:protfolio/core/utils/App_Size.dart';
import 'package:protfolio/feature/widget/about/about_tab_widgets.dart';

class AboutTab extends StatelessWidget {
  const AboutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: LayoutBuilder(
          builder: (context, constraints) {
            final bool isWide = constraints.maxWidth >= 1100;
            final bool isTablet = constraints.maxWidth >= 700;
            final double horizontalPadding =
                isWide ? AppSizes.w32 : (isTablet ? AppSizes.w24 : AppSizes.w16);
            final double verticalSpacing =
                isTablet ? AppSizes.h20 : AppSizes.h16;
            final double contentMaxWidth = isWide ? 1200 : 900;

            return SingleChildScrollView(
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
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
