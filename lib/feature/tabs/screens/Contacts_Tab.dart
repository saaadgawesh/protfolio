import 'package:flutter/material.dart';
import 'package:protfolio/core/utils/app_size.dart';
import 'package:protfolio/feature/widget/contact/contact_tab_widgets.dart';

class Contacttab extends StatelessWidget {
  const Contacttab({super.key});

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
            final double contentMaxWidth = isWide ? 1200 : 900;
            final double sectionSpacing =
                isTablet ? AppSizes.h20 : AppSizes.h16;
            final double buttonMaxWidth = isWide ? 420 : double.infinity;

            return SingleChildScrollView(
              padding: EdgeInsets.symmetric(
                horizontal: horizontalPadding,
                vertical: AppSizes.h16,
              ),
              child: Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: contentMaxWidth),
                  child: ContactContentSection(
                    isWide: isWide,
                    isTablet: isTablet,
                    sectionSpacing: sectionSpacing,
                    buttonMaxWidth: buttonMaxWidth,
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
