import 'package:flutter/material.dart';
import 'package:protfolio/core/constants/app_string.dart';
import 'package:protfolio/core/utils/app_size.dart';
import 'package:protfolio/core/shared_widgets/default_divider.dart';

class ContactHeaderSection extends StatelessWidget {
  const ContactHeaderSection({super.key, });



  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.contactTitle,
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        defaultdivider(AppSizes.h3, 0, AppSizes.w250),
        SizedBox(height: AppSizes.h12),
        Text(
          AppStrings.contactDescription,
          style: Theme.of(
            context,
          ).textTheme.bodyMedium?.copyWith(color: Colors.grey[400]),
        ),
      ],
    );
  }
}
