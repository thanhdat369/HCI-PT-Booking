import 'package:flutter/material.dart';
import 'package:hci_booking_pt/screens/trainer/components/client.dart';
import 'package:hci_booking_pt/theme/colors.dart';

import '../trainer.dart';

class SquareImage extends StatelessWidget {
  final int avatarNumber;

  double size;
  double radi;
  double boWi;
  bool isClient;
  SquareImage(
      {Key key,
      this.size = 100,
      this.radi = 20,
      this.boWi = 2,
      this.isClient = false,
      this.avatarNumber})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    int avatarNumber = isClient ? Client.avatarNumber : Trainer.avatarNumber;
    return Container(
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: (avatarNumber != null && avatarNumber != 0)
                  ? AssetImage('asset/images/trainerAvatar/' +
                      avatarNumber.toString() +
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
