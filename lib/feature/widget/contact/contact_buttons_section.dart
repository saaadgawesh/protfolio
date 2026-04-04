import 'package:flutter/material.dart';
import 'package:protfolio/core/constants/app_string.dart';
import 'package:protfolio/core/utils/app_size.dart';
import 'package:protfolio/core/shared_widgets/default_elevated_button.dart';
import 'package:protfolio/core/shared_widgets/open_link_widgets.dart';

class ContactButtonsSection extends StatelessWidget {
  const ContactButtonsSection({
    super.key,
    required this.buttonMaxWidth,
  });

  final double buttonMaxWidth;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: AppSizes.w12,
      runSpacing: AppSizes.h12,
      children: [
        SizedBox(
          width: buttonMaxWidth,
          child: defaultelevatedbutton(
            () => openLink(AppStrings.githubUrl),
            Icons.link,
            AppStrings.contactGithub,
          ),
        ),
        SizedBox(
          width: buttonMaxWidth,
          child: defaultelevatedbutton(
            () => openLink(AppStrings.linkedInUrl),
            Icons.business_center,
            AppStrings.contactLinkedIn,
          ),
        ),
        SizedBox(
          width: buttonMaxWidth,
          child: defaultelevatedbutton(
            () => openLink(AppStrings.cvUrl),
            Icons.picture_as_pdf,
            AppStrings.contactCv,
          ),
        ),
        SizedBox(
          width: buttonMaxWidth,
          child: defaultelevatedbutton(
            () => openLink(AppStrings.certificationsUrl),
            Icons.workspace_premium,
            AppStrings.contactCertificates,
          ),
        ),
        SizedBox(
          width: buttonMaxWidth,
          child: defaultelevatedbutton(
            () => openLink(AppStrings.youtubeUrl),
            Icons.play_circle_fill,
            AppStrings.contactYouTube,
          ),
        ),
        SizedBox(
          width: buttonMaxWidth,
          child: defaultelevatedbutton(
            () => openWhatsApp(AppStrings.whatsappNumber),
            Icons.link,
            AppStrings.contactWhatsapp,
          ),
        ),
        SizedBox(
          width: buttonMaxWidth,
          child: defaultelevatedbutton(
            () => openEmail(AppStrings.emailAddress),
            Icons.email,
            AppStrings.contactEmail,
          ),
        ),
        SizedBox(
          width: buttonMaxWidth,
          child: defaultelevatedbutton(
            () => openLink(AppStrings.facebookUrl),
            Icons.facebook,
            AppStrings.contactFacebook,
          ),
        ),
      ],
    );
  }
}
