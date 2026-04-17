import 'package:flutter/material.dart';
import 'package:protfolio/core/utils/app_size.dart';
import 'package:protfolio/feature/widget/resume/resume_tab_widgets.dart';

class Resumetab extends StatelessWidget {
  const Resumetab({super.key});

  @override
  Widget build(BuildContext context) {
  

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: AppSizes.w16,
          vertical: AppSizes.h16,
        ),
        child: Align(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              const ResumeContentSection(),
              SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
