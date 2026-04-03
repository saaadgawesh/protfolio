import 'package:url_launcher/url_launcher.dart';

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
