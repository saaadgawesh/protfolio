import 'package:flutter/material.dart';
import 'package:protfolio/core/utils/app_size.dart';
import 'package:protfolio/feature/widget/about/about_tab_widgets.dart';

class AboutTab extends StatelessWidget {
  const AboutTab({super.key});

  @override
  Widget build(BuildContext context) {


    return Scaffold(

      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: AppSizes.w16,
          vertical: AppSizes.h16,
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const ProfileCard(),
              SizedBox(height: AppSizes.h16),
              const AboutContentSection(),
              SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
