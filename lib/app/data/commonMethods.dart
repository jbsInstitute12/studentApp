import 'package:url_launcher/url_launcher.dart';

class commonMethods {
  static Future<void> launchurl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }
}
