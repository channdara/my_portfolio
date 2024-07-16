import 'package:url_launcher/url_launcher.dart';

mixin LauncherUtil {
  static void open(String url) {
    launchUrl(
      Uri.parse(url),
      mode: LaunchMode.externalApplication,
    );
  }

  static void openNewTap(String url) {
    launchUrl(
      Uri.parse(url),
      webOnlyWindowName: '_blank',
    );
  }
}
