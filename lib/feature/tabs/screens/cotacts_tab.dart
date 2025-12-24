import 'package:flutter/material.dart';
import 'package:protfolio/core/Appthem.dart';
import 'package:protfolio/feature/tabs/widget/ProfileCard.dart';
import 'package:protfolio/feature/tabs/widget/defaultElevated_Button.dart';
import 'package:protfolio/feature/tabs/widget/default_Divider.dart';
import 'package:url_launcher/url_launcher.dart';

class Contacttab extends StatelessWidget {
  const Contacttab({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: PortfolioColors.cardDark,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Profile Header Card
                ProfileCard(),

                const SizedBox(height: 16),

                Text(
                  'Contact',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                defaultdivider(3, 0, 250),
                const SizedBox(height: 12),

                // Buttons (full width)
                defaultelevatedbutton(
                  () => openLink("https://github.com/saaadgawesh"),
                  Icons.link,
                  "Open GitHub",
                ),
                const SizedBox(height: 8),
                defaultelevatedbutton(
                  () => openWhatsApp("201031214881"),
                  Icons.link,
                  "Open WhatsApp",
                ),
                const SizedBox(height: 8),
                defaultelevatedbutton(
                  () => openEmail("saadgawesh608@gmail.com"),
                  Icons.email,
                  "Send Email",
                ),
                const SizedBox(height: 8),
                defaultelevatedbutton(
                  () => openLink("https://facebook.com/saadgawesh"),
                  Icons.facebook,
                  "Open Facebook",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> openLink(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }

  Future<void> openWhatsApp(String phone, {String text = ""}) async {
    final Uri uri = Uri.parse("https://wa.me/$phone?text=$text");
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception("Could not launch WhatsApp");
    }
  }

  Future<void> openEmail(String email) async {
    final Uri uri = Uri(
      scheme: 'mailto',
      path: email,
      query: 'subject=Hello&body=How are you?',
    );
    if (!await launchUrl(uri)) {
      throw Exception("Could not send email");
    }
  }
}
