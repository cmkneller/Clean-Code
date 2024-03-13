/// [File] url_launcher.dart
///
/// This file holds a utility class for loading urls
///
/// [Author] Chris Kneller
/// [Date] March 5, 2024

import 'package:url_launcher/url_launcher.dart';

class UrlLauncher {
  /// Launches a url on phone browser
  ///
  /// Accepts [String] url
  /// returns [void]
  static Future<void> launchUrlMethod(String url) async {
    final Uri uri = Uri.parse(url);

    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $url');
    }
  }
}
