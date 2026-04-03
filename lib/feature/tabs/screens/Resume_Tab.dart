import 'package:flutter/material.dart';
import 'package:protfolio/core/utils/App_Size.dart';
import 'package:protfolio/feature/widget/resume/resume_tab_widgets.dart';

class Resumetab extends StatelessWidget {
  const Resumetab({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: LayoutBuilder(
          builder: (context, constraints) {
            final double maxContentWidth = constraints.maxWidth > 1100
                ? 1000
                : constraints.maxWidth;
            final EdgeInsets contentPadding = EdgeInsets.symmetric(
              horizontal:
                  constraints.maxWidth < 420 ? AppSizes.w12 : AppSizes.w16,
              vertical:
                  constraints.maxWidth < 420 ? AppSizes.h12 : AppSizes.h16,
            );

            return SingleChildScrollView(
              padding: contentPadding,
              child: Align(
                alignment: Alignment.topCenter,
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: maxContentWidth),
                  child: const ResumeContentSection(),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
