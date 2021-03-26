part of 'uis.dart';

// import 'package:project_coba/widgets/theme.dart';
// import 'package:project_coba/widgets/drawer.dart';

class Pengumuman extends StatefulWidget {
  @override
  _PengumumanState createState() => _PengumumanState();
}

class _PengumumanState extends State<Pengumuman>
    with SingleTickerProviderStateMixin {
  // final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  // bool _selectOption = true;

  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    SystemChrome.setEnabledSystemUIOverlays([]);
    double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomRight,
            colors: [Colors.teal[900], Colors.white]),
      ),
      child: Column(
        children: [
          Container(
            height: 400,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/img/bglogin.png'),
                    fit: BoxFit.fill)),
          ),
          Flexible(
            fit: FlexFit.tight,
            flex: 1,
            child: Container(
                // height: height,
                width: width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(40.0),
                    topRight: const Radius.circular(40.0),
                  ),
                  color: Colors.white,
                ),
                child: Scaffold(
                  backgroundColor: Colors.transparent,
                  appBar: PreferredSize(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: const Radius.circular(40.0),
                            topRight: const Radius.circular(40.0),
                          ),
                        ),
                        child: TabBar(
                          labelPadding: EdgeInsets.symmetric(vertical: 10),
                          controller: _controller,
                          indicatorColor: Color(0xfff1fcc79),
                          labelColor: Colors.black,
                          tabs: [
                            Tab(text: 'List'),
                            Tab(text: 'Create'),
                          ],
                        ),
                      ),
                      preferredSize: Size.fromHeight(90)),
                  body: Container(
                    child: TabBarView(
                      controller: _controller,
                      children: [
                        SingleChildScrollView(
                          child: ListView.builder(
                            key: new PageStorageKey('ListUser'),
                            padding: EdgeInsets.all(30),
                            scrollDirection: Axis.vertical,
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 7,
                            itemBuilder: (context, index) => EezyApps(),
                          ),
                        ),
                        SingleChildScrollView(
                          child: ListView.builder(
                            key: new PageStorageKey('ListUser'),
                            padding: EdgeInsets.all(30),
                            scrollDirection: Axis.vertical,
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 7,
                            itemBuilder: (context, index) => EezyApps(),
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
          ),
        ],
      ),
    );
  }

  // _getCurrentLocation() {
  //   geolocator
  //       .getCurrentPosition(desiredAccuracy: LocationAccuracy.best)
  //       .then((Position position) {
  //     setState(() {
  //       _currentPosition = position;
  //     });

  //     _getAddressFromLatLng();
  //   }).catchError((e) {
  //     print(e);
  //   });
  // }

  // _getAddressFromLatLng() async {
  //   try {
  //     List<Placemark> p = await geolocator.placemarkFromCoordinates(
  //         _currentPosition.latitude, _currentPosition.longitude);

  //     Placemark place = p[0];

  //     setState(() {
  //       _currentAddress = "${place.subAdministrativeArea}";
  //     });
  //   } catch (e) {
  //     print(e);
  //   }
  // }
}

class EezyApps extends StatefulWidget {
  final index;
  const EezyApps({
    Key key,
    this.index,
  }) : super(key: key);

  @override
  _EezyAppsState createState() => _EezyAppsState();
}

class _EezyAppsState extends State<EezyApps> {
  @override
  Widget build(BuildContext context) {
    return EzeeyApp(
      image: Image.asset(
        "assets/img/muslim.png",
        width: 50,
        height: 50,
      ),
      color: Colors.white38,
      title: "Kepala Sekolah",
    );
  }
}

// class CardPelajaran extends StatelessWidget {
//   final index;
//   const CardPelajaran({
//     Key key,
//     this.index,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         Navigator.push(
//             context, MaterialPageRoute(builder: (context) => Tugas()));
//       },
//       child: Container(
//         width: 170,
//         margin: EdgeInsets.only(
//           left: 20,
//         ),
//         decoration: BoxDecoration(
//           image: DecorationImage(
//               image: AssetImage("assets/img/papan1.jpg"), fit: BoxFit.cover),
//           borderRadius: BorderRadius.all(Radius.circular(10)),
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Container(
//               padding: EdgeInsets.only(top: 10, left: 5),
//               child: Align(
//                 alignment: Alignment.topLeft,
//                 child: Icon(
//                   Icons.verified_outlined,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//             Container(
//               padding: EdgeInsets.only(top: 10, left: 5),
//               child: Align(
//                 alignment: Alignment.topLeft,
//                 child: Icon(
//                   Icons.more_vert,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//           ],
//         ),

//         // child: Column(
//         //   mainAxisAlignment: MainAxisAlignment.spaceAround,
//         //   children: <Widget>[
//         //     Container(
//         //       width: 140,
//         //       height: 100,
//         //       child: Center(
//         //         child: Text(
//         //           "Matematika",
//         //           textAlign: TextAlign.left,
//         //           style: TextStyle(
//         //               color: Colors.white,
//         //               fontWeight: FontWeight.bold,
//         //               fontFamily: "Poppins"),
//         //         ),
//         //       ),
//         //     ),

//         //   ],
//         // ),
//       ),
//     );
//   }
// }

// class CardPengumuman extends StatelessWidget {
//   const CardPengumuman({
//     Key key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(top: 20),
//       height: 200,
//       width: 420,
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.only(
//           topLeft: const Radius.circular(10.0),
//           topRight: const Radius.circular(10.0),
//           bottomLeft: const Radius.circular(10.0),
//           bottomRight: const Radius.circular(10.0),
//         ),
//         image: DecorationImage(
//             image: AssetImage(
//               "assets/img/BgPengumuman.png",
//             ),
//             fit: BoxFit.cover),
//         // boxShadow: [
//         //   BoxShadow(
//         //     color: Colors.grey.withOpacity(0.5),
//         //     spreadRadius: 2,
//         //     blurRadius: 7,
//         //     offset: Offset(0, 10),
//         //   ),
//         // ],
//       ),
//       child: Column(
//         children: [
//           Row(
//             children: [
//               Container(
//                 padding: EdgeInsets.only(left: 20, top: 10),
//                 child: Row(
//                   children: <Widget>[
//                     Container(
//                         child: Icon(
//                       Icons.account_circle_outlined,
//                       color: Colors.white,
//                     )),
//                     SizedBox(
//                       width: 5.0,
//                     ),
//                     Text("Admin",
//                         style: TextStyle(
//                             fontFamily: "Poppins",
//                             color: Colors.white,
//                             fontSize: 15.0,
//                             fontWeight: FontWeight.bold)),
//                   ],
//                 ),
//               ),
//               Spacer(),
//               Container(
//                 padding: EdgeInsets.only(right: 20, top: 10),
//                 child: Text("3 min ago",
//                     style: TextStyle(
//                         fontFamily: "Poppins",
//                         color: Colors.white,
//                         fontSize: 15.0,
//                         fontWeight: FontWeight.bold)),
//               ),
//             ],
//           ),
//           Container(
//             padding: EdgeInsets.only(left: 20, top: 10),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   children: [
//                     Text(
//                       '07:00 - 08:30',
//                       style: TextStyle(
//                           fontFamily: "Poppins",
//                           fontSize: 15,
//                           color: Colors.white),
//                     ),
//                     VerticalDivider(
//                       color: Colors.black,
//                     ),
//                     Text('Morning',
//                         style: TextStyle(
//                             fontFamily: "Poppins",
//                             fontSize: 15,
//                             color: Colors.white)),
//                   ],
//                 ),
//                 Text('Persentasi Akhir',
//                     style: TextStyle(
//                       fontFamily: "Poppins",
//                       fontSize: 21.0,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     )),
//                 Text(
//                     'Perencanaan Persentasi akhir untuk\npara kelas XII akan di laksana kan pada...',
//                     style: TextStyle(
//                       fontFamily: "Poppins",
//                       fontSize: 15.0,
//                       color: Colors.white,
//                     )),
//               ],
//             ),
//           ),
//           Container(
//             padding: EdgeInsets.only(bottom: 5, right: 10),
//             child: Align(
//               alignment: Alignment.bottomRight,
//               child: RaisedButton(
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => Pengumuman()),
//                   );
//                 },
//                 child: Text("Read More"),
//                 color: Colors.blueGrey[50],
//                 textColor: Colors.black,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
