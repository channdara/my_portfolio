class Contact {
  Contact(
    this.imageAsset,
    this.label,
    this.url,
  );

  final String imageAsset;
  final String label;
  final String url;

  static List<Contact> items = [
    Contact(
      'assets/image/img_facebook.png',
      'Facebook',
      'https://www.facebook.com/channdara.eam',
    ),
    Contact(
      'assets/image/img_telegram.png',
      'Telegram',
      'https://t.me/channdara',
    ),
    Contact(
      'assets/image/img_github.png',
      'GitHub',
      'https://github.com/channdara',
    ),
    Contact(
      'assets/image/img_instagram.png',
      'Instagram',
      'https://www.instagram.com/channdara.eam',
    ),
    Contact(
      'assets/image/img_linkedin.png',
      'LinkedIn',
      'https://www.linkedin.com/in/eam-channdara-51878b229',
    ),
  ];
}
