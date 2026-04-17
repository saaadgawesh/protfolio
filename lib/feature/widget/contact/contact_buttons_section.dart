import 'package:flutter/material.dart';
import 'package:protfolio/core/constants/app_string.dart';
import 'package:protfolio/core/utils/app_size.dart';
import 'package:protfolio/core/shared_widgets/default_elevated_button.dart';
import 'package:protfolio/core/shared_widgets/open_link_widgets.dart';

class ContactButtonsSection extends StatelessWidget {
  const ContactButtonsSection({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: AppSizes.w12,
      runSpacing: AppSizes.h12,
      children: [
        SizedBox(
         
          child: defaultelevatedbutton(
            () => openLink(AppStrings.githubUrl),
            Icons.code,
            AppStrings.contactGithub,
          ),
        ),
        SizedBox(
         
          child: defaultelevatedbutton(
            () => openLink(AppStrings.linkedInUrl),
            Icons.badge,
            AppStrings.contactLinkedIn,
          ),
        ),
        SizedBox(
         
          child: defaultelevatedbutton(
            () => openLink(AppStrings.cvUrl),
            Icons.picture_as_pdf,
            AppStrings.contactCv,
          ),
        ),
        SizedBox(
         
          child: defaultelevatedbutton(
            () => openLink(AppStrings.certificationsUrl),
            Icons.verified,
            AppStrings.contactCertificates,
          ),
        ),
        SizedBox(
         
          child: defaultelevatedbutton(
            () => openLink(AppStrings.youtubeUrl),
            Icons.smart_display,
            AppStrings.contactYouTube,
          ),
        ),
        SizedBox(
         
          child: defaultelevatedbutton(
            () => openWhatsApp(AppStrings.whatsappNumber),
            Icons.chat,
            AppStrings.contactWhatsapp,
          ),
        ),
        SizedBox(
         
          child: defaultelevatedbutton(
            () => openEmail(AppStrings.emailAddress),
            Icons.email,
            AppStrings.contactEmail,
          ),
        ),
        SizedBox(
         
          child: defaultelevatedbutton(
            () => openLink(AppStrings.facebookUrl),
            Icons.thumb_up,
            AppStrings.contactFacebook,
          ),
        ),
      ],
    );
  }
}
