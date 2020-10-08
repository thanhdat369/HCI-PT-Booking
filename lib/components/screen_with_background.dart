import 'package:flutter/material.dart';

class ScreenWithBackground extends StatelessWidget {
  final String pathBackground;
  final Widget child;
  
  const ScreenWithBackground({
    Key key,
    @required this.pathBackground,
    @required this.child,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Opacity(
          opacity: 0.4,
          child: Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
            color: Colors.black,
            image: new DecorationImage(
              fit: BoxFit.cover,
              image: new AssetImage(
                'asset/images/background/1.jpg',
              ),
            ),
          ),
        )
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          height: size.height,
          width: size.width,
          child: this.child,
        )
      ],
    );
  }
}
