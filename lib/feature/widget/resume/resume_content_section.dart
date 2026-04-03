import 'package:flutter/material.dart';
import 'package:protfolio/core/utils/App_Size.dart';
import 'package:protfolio/core/shared_widgets/Profile_card.dart';
import 'package:protfolio/feature/widget/resume/resume_detalis.dart';

class ResumeContentSection extends StatelessWidget {
  const ResumeContentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ProfileCard(),
        SizedBox(height: AppSizes.h16),
        const Buildresumedetalis(),
      ],
    );
  }
}
