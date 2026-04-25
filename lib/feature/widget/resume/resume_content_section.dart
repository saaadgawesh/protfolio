import 'package:flutter/material.dart';
import 'package:protfolio/core/utils/app_size.dart';
import 'package:protfolio/core/shared_widgets/profile_card.dart';
import 'package:protfolio/feature/widget/resume/resume_detalis.dart';

class ResumeContentSection extends StatelessWidget {
  const ResumeContentSection({super.key, required this.contentWidth});

  final double contentWidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ProfileCard(),
        SizedBox(height: AppSizes.h16),
        Buildresumedetalis(contentWidth: contentWidth),
      ],
    );
  }
}
