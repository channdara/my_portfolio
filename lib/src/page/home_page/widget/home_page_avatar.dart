import 'package:flutter/material.dart';

import '../../../../main_data.dart';

class HomePageAvatar extends StatelessWidget {
  const HomePageAvatar({
    super.key,
    required this.margin,
    required this.imageSizeFactor,
  });

  final EdgeInsetsGeometry? margin;
  final int imageSizeFactor;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey,
      margin: margin,
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(borderRadius: borderRadius),
      child: SizedBox.square(
        dimension: MediaQuery.of(context).size.width / imageSizeFactor,
        child: Image.network(
          'https://scontent-hkg1-2.xx.fbcdn.net/v/t39.30808-6/450427540_7987292148031279_2890614010741515979_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=833d8c&_nc_eui2=AeGHCBoLOHpKyKuWNUcipQ-lCzsD-H-b52kLOwP4f5vnaSPLdsh-VIHKhZXR0dKo8Y284rht5dAuYTE_5YicZDJG&_nc_ohc=1-aV7XlOsg0Q7kNvgEjkQnH&_nc_ht=scontent-hkg1-2.xx&oh=00_AYAelDVbz2Uueh256RfKL1d1a1CY2dnopp2qZoQrGTxW9Q&oe=6692BFF3',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
