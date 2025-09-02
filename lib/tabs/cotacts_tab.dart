import 'package:flutter/material.dart';
import 'package:protfolio/apptheme/appthemCloude.dart';
import 'package:protfolio/tabs/widget/_buildProfileCard.dart';
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
                buildProfileCard(),

                Divider(
                  color: PortfolioColors.golden,
                  thickness: 1,
                  indent: 2,
                  endIndent: 1,
                ),

                const SizedBox(height: 16),

                Text(
                  'Contact',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Divider(
                  color: PortfolioColors.golden,
                  thickness: 5,
                  indent: 2,
                  endIndent: 250,
                ),
                const SizedBox(height: 12),

                // Buttons (full width)
                defaultelevatedbutton(
                  context,
                  () => openLink("https://github.com/saaadgawesh"),
                  Icons.link,
                  "Open GitHub",
                ),
                const SizedBox(height: 8),
                defaultelevatedbutton(
                  context,
                  () => openWhatsApp("201031214881"),
                  Icons.link,
                  "Open WhatsApp",
                ),
                const SizedBox(height: 8),
                defaultelevatedbutton(
                  context,
                  () => openEmail("saadgawesh608@gmail.com"),
                  Icons.email,
                  "Send Email",
                ),
                const SizedBox(height: 8),
                defaultelevatedbutton(
                  context,
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

  // فتح لينك عام (مثلا GitHub أو Facebook)
  Future<void> openLink(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }

  // فتح واتساب
  Future<void> openWhatsApp(String phone, {String text = ""}) async {
    final Uri uri = Uri.parse("https://wa.me/$phone?text=$text");
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception("Could not launch WhatsApp");
    }
  }

  // فتح الإيميل
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

  // زرار جاهز لإعادة الاستخدام (بعرض الشاشة)
  Widget defaultelevatedbutton(
    BuildContext context,
    void Function()? onPressed,

    IconData icon,
    String text,
  ) {
    return SizedBox(
      width: double.infinity, // ياخد عرض الشاشة كله
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: PortfolioColors.cardDark,
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(icon, color: PortfolioColors.golden, size: 24),
            SizedBox(width: 30),
            Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: PortfolioColors.golden,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
