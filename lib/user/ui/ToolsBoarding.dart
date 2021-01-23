part of 'uis.dart';

class ToolsBoarding extends StatefulWidget {
  @override
  _ToolsBoardingState createState() => _ToolsBoardingState();
}

class _ToolsBoardingState extends State<ToolsBoarding> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.blueGrey[900]),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: displayHeight(context) * 0.03),
          Padding(
            padding: EdgeInsets.all(displayWidth(context) * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Tools!',
                    style: TextStyle(
                      fontFamily: 'Alegreya',
                      color: Colors.white,
                      fontSize: displayWidth(context) * 0.09,
                    )),
                SizedBox(height: displayHeight(context) * 0.02),
              ],
            ),
          ),
          SizedBox(
            height: displayHeight(context) * 0.12,
          ),
          // Expanded(
          //   child: ListView(
          //     children: <Widget>[
          //       Container(
          //         height: displayHeight(context) * 0.503,
          //         decoration: BoxDecoration(
          //           color: Colors.white,
          //           borderRadius: BorderRadius.only(
          //               topLeft: Radius.circular(displayWidth(context) * 0.10),
          //               topRight:
          //                   Radius.circular(displayWidth(context) * 0.10)),
          //         ),
          //         child: Column(
          //           children: <Widget>[
          //             Container(
          //               child: Column(
          //                 children: <Widget>[
          //                   SizedBox(
          //                     height: displayHeight(context) * 0.05,
          //                   ),
          //                   InkWell(
          //                     onTap: () {
          //                       // _getCurrentLocation();
          //                       print("dipencet");
          //                     },
          //                     child: Container(
          //                         // padding: EdgeInsets.all(
          //                         //     displayWidth(context) * 0.30),
          //                         decoration: BoxDecoration(
          //                           boxShadow: [
          //                             BoxShadow(
          //                               color: Colors.grey.withOpacity(0.5),
          //                               spreadRadius: 5,
          //                               blurRadius: 7,
          //                               offset: Offset(
          //                                   0, 3), // changes position of shadow
          //                             ),
          //                           ],
          //                           borderRadius: BorderRadius.all(
          //                               Radius.circular(
          //                                   displayWidth(context) * 0.29)),
          //                           gradient: LinearGradient(
          //                               begin: Alignment.topRight,
          //                               end: Alignment.bottomLeft,
          //                               colors: [
          //                                 Colors.teal[200],
          //                                 Colors.teal
          //                               ]),
          //                         ),
          //                         child: Padding(
          //                           padding: EdgeInsets.all(
          //                               displayWidth(context) * 0.25),
          //                           child: Text(
          //                             "Tap Here",
          //                             style: TextStyle(
          //                                 fontSize:
          //                                     displayWidth(context) * 0.05,
          //                                 color: Colors.white),
          //                           ),
          //                         )),
          //                   ),
          //                   // if (_currentPosition != null)
          //                   //   Padding(
          //                   //     padding: EdgeInsets.all(
          //                   //       displayWidth(context) * 0.09,
          //                   //     ),
          //                   //     child: Column(
          //                   //       children: <Widget>[
          //                   //         Text(
          //                   //           "Lokasi Anda : " + _currentAddress,
          //                   //           style: TextStyle(
          //                   //               fontSize:
          //                   //                   displayWidth(context) * 0.05,
          //                   //               color: Colors.teal),
          //                   //         ),
          //                   //         Text(
          //                   //           "Anda Telah Absen! Terima Kasih",
          //                   //           style: TextStyle(color: Colors.teal),
          //                   //         )
          //                   //       ],
          //                   //     ),
          //                   //   ),
          //                 ],
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        ]),
      ),
    );
  }
}
