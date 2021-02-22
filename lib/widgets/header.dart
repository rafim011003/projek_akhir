import 'package:project_coba/widgets/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.vertical(bottom: Radius.circular(50.0)),
              color: EzeeyColors.salmonMain,
            ),
            child: Stack(
              children: <Widget>[
                Positioned(
                  child: Image.asset("assets/images/blob_2.png",
                      width: 352, height: 343, color: EzeeyColors.salmonDark),
                  top: -100,
                  right: -130,
                ),
                Positioned(
                  child: Image.asset("assets/images/blob_1.png",
                      width: 302, height: 343, color: EzeeyColors.salmonLight),
                  top: 20,
                  left: -100,
                ),
                Positioned(
                  child: Image.asset("assets/images/boy_illustration.png",
                      width: 160, height: 360),
                  bottom: 0,
                  right: 0,
                ),
              ],
            ),
          ),
          flex: 1,
        ),
        Expanded(child: Container(), flex: 1)
      ],
    );
  }
}
