import 'package:flutter/material.dart';
import 'package:hci_booking_pt/theme/colors.dart';

import '../trainer.dart';

class SquareImage extends StatelessWidget {
  final int avatarNumber;

  double size;
  double radi;
  double boWi;
  SquareImage(
      {Key key,
      this.size = 100,
      this.radi = 20,
      this.boWi = 2,
      this.avatarNumber})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: Trainer.avatarNumber != null && Trainer.avatarNumber != 0
                  ? AssetImage('asset/images/trainerAvatar/' +
                      Trainer.avatarNumber.toString() +
                      '.jpg')
                  : AssetImage('asset/images/background/mans.jpg'),
              fit: BoxFit.fill,
            ),
            border: Border.all(width: boWi, color: MainColors.kLight),
            borderRadius: BorderRadius.circular(radi)),
      ),
    );
  }
}
