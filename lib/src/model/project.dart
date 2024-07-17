class Project {
  Project(
    this.name,
    this.description,
    this.tag, [
    this.imageUrl,
    this.playStoreUrl,
    this.appStoreUrl,
  ]);

  final String name;
  final String description;
  final String tag;
  final String? imageUrl;
  final String? playStoreUrl;
  final String? appStoreUrl;

  bool get showStoreListing =>
      (playStoreUrl ?? '').isNotEmpty || (appStoreUrl ?? '').isNotEmpty;

  static List<Project> items = [
    Project(
      'LIVE. by Wonderpass',
      'The solution app focused on digital ticket for events, attractions, manages multiple users in one account and rich dynamic layout content. Wearables tech and tags allows user to access events venue or pay with multiple payment integration just a tap.',
      'Android Kotlin',
      'https://play-lh.googleusercontent.com/mSXmD-Ln0ztXr4Bs5UouK3fU9Q9I7fDfHZf4nIg4GYwjq5S6ssm7BCDYJIzuCjRcIw=w240-h480-rw',
      'https://play.google.com/store/apps/details?id=asia.wonderpass.user',
    ),
    Project(
      'PKR Svay Rieng FC',
      'The solution app focused on getting live match updates, exclusive content, player stats, team news, ticket bookings, and more.',
      'Flutter Dart',
      'https://play-lh.googleusercontent.com/HAN7Xjm5wQqkbTAV9ru1PuY_KbeW69ArQ6ND5YDdf-ZSm64OSZH3o6rK2CGMD_CGMaYv=w240-h480-rw',
      'https://play.google.com/store/apps/details?id=asia.wonderpass.pkrsrfc',
      'https://apps.apple.com/us/app/pkr-svay-rieng-fc/id6505087491',
    ),
    Project(
      'Campus. by Wonderpass',
      'CAMPUS. is the Wonderpass solution focused on extensive community-based contents and functions.',
      'Android Kotlin',
      'https://play-lh.googleusercontent.com/dnz1wZzdWPvUxYUr4sUhnfvonEWg4kyz_TS5RSaKMwI2hs5OSey66JfqnUfKhQshTh8=w240-h480-rw',
      'https://play.google.com/store/apps/details?id=asia.wonderpass.campus.user',
    ),
    Project(
      'RUPP. by Campus',
      'RUPP. by Campus is a program specifically for university students in RUPP, with convenient & time-saving offers.',
      'Android Kotlin',
      'https://play-lh.googleusercontent.com/GaKh4r33-QEznXo3yDnMGxaI-cXKDK8XXNWs51os5oMx42dIAnjl6JoeE_2kgCj2vA=w240-h480-rw',
      'https://play.google.com/store/apps/details?id=asia.wonderpass.campus.rupp.user',
    ),
    Project(
      'Wonderpass Agent',
      "The scanner app for Wonderpass's operation team or merchant. This app use for ticket validation (with QR code or NFC tags), quick purchase (ticket on-site, top-up, payment, coupon).",
      'Android Kotlin',
    ),
    Project(
      'Night Out',
      'The app is focused on preview and reserving table in restaurants, bars, pubs and more. Apply a variety of payment options, exclusive promotions, discounts, and cashback offers by partnered banks, stay in the loop with easy booking notifications.',
      'Android Kotlin',
      'https://play-lh.googleusercontent.com/v_Z7-C5jPsDgaPFK3GbktEtlTCI7ziXBNRigG92OXnwdVEiAp3X7S0HqttRko5d0WMxE=w240-h480-rw',
      'https://play.google.com/store/apps/details?id=asia.wonderpass.ppnl',
    ),
    Project(
      'The Warehouse',
      'This app focuses on wine wholesalers and retailers, with exclusive distributor of over 50 brands and producers, monthly promotions, private events hosting.',
      'Android Kotlin',
      'https://play-lh.googleusercontent.com/iUKqiAJw-cN4TVf8dakgNZodZQpmdwepis42wJR_7tjeixM0kJlAE2ZFTiohfP1vNGU=w240-h480-rw',
      'https://play.google.com/store/apps/details?id=asia.wonderpass.warehouse.user',
    ),
    Project(
      'GARA for Garage',
      'This app is a roadside assistance app that helps you get assistance from a nearby garage at a fair price. The user can record their car info for the mechanic to be prepared.',
      'Flutter Dart',
      'https://is1-ssl.mzstatic.com/image/thumb/Purple126/v4/96/24/67/962467ed-d29a-b9b9-c34f-b82dacce1c63/AppIcon-0-0-1x_U007emarketing-0-0-0-7-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/230x0w.webp',
      'https://play.google.com/store/apps/details?id=asia.wonderpass.gara',
      'https://apps.apple.com/us/app/gara-for-garage/id6450982464',
    ),
    Project(
      'TTA for Driver',
      'This app manages the transportation reservation to tourists in Siem Reap between hotel owners and agents to ensure an efficient and reliable service.',
      'Flutter Dart',
      'https://is1-ssl.mzstatic.com/image/thumb/Purple116/v4/88/c6/7e/88c67e20-65ee-54f8-1570-7a537bd4ef69/AppIcon-0-0-1x_U007emarketing-0-0-0-7-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/230x0w.webp',
      'https://play.google.com/store/apps/details?id=com.haystacklabs.ttadriver',
      'https://apps.apple.com/us/app/tta-driver/id6443807860',
    ),
    Project(
      'Station Cambodia',
      'The app of smart locker technology allows users to deliver and pick up goods with real-time notifications and access codes to store items safely until retrieved.',
      'Flutter Dart (R&D Project)',
      'https://media.licdn.com/dms/image/D560BAQFayriDv7uycg/company-logo_200_200/0/1682567578248/station_cambodia_logo?e=2147483647&v=beta&t=ld8z3Fj4GYvFjBmfGctCscVf8Sh3C-0doGnHpdtydk4',
    ),
    Project(
      'Camboticket - Book Trips',
      'Camboticket is an online platform to book tickets for buses, ferries, taxis, and tour activities in Cambodia, Laos, and neighboring countries with more than 100 transportation companies and tour providers.',
      'Android Java & Jetpack Compose',
      'https://play-lh.googleusercontent.com/wYyhj8xaNAEDvtMlvs1YttExFXVRsLN85lE1MO0DPdaHNSnS4AlA2j1suAZSW8v630pK=w240-h480-rw',
      'https://play.google.com/store/apps/details?id=com.camboticket.magicbus',
    ),
    Project(
      'Camboticket Operator',
      'Mobile and POS application for service providers to make customer ticket reservations in person.',
      'Flutter Dart',
      'https://play-lh.googleusercontent.com/a4kN8x68BhBtYH2VcXAfdcgkoLlsVFc-C0NZuG-5shIlrzWYYRBm97lNn83tUpQ0Ds8e=w240-h480-rw',
      'https://play.google.com/store/apps/details?id=com.camboticket.operator',
      'https://apps.apple.com/us/app/camboticket-operator/id1616598746',
    ),
    Project(
      'Nojima Cambodia',
      'This app is for Nojima Corporation which is an electronics appliance retail company in Japan since 1982. Nojima provide event information, membership coupon, shop information, product information and more.',
      'Flutter Dart',
      'https://play-lh.googleusercontent.com/AJHPHqlvr6YymZT4ye3u30lWDDbC6iyNUCI_xJoq6b4Uu0DkxQR2_qMN3wLVVgcBFpI=w240-h480-rw',
      'https://play.google.com/store/apps/details?id=com.nojimacambodia.app',
      'https://apps.apple.com/us/app/nojima-cambodia/id1539570973',
    ),
  ];
}
