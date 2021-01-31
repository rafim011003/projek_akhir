part of 'uis.dart';

// import 'package:project_coba/widgets/theme.dart';
// import 'package:project_coba/widgets/drawer.dart';

class MainBoarding extends StatefulWidget {
  @override
  _MainBoardingState createState() => _MainBoardingState();
}

class _MainBoardingState extends State<MainBoarding> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  // final List<Intro> introList = [
  //   Intro(
  //     image: "assets/img/mens.jpg",
  //   ),
  //   Intro(
  //     image: "assets/img/girls.jpg",
  //   ),
  //   Intro(
  //     image: "assets/img/two.jpg",
  //   ),
  // ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    // TODO: implement build
    return Scaffold(
      key: _scaffoldKey,
      appBar: new AppBar(
          title: new Text("App"),
          leading: new IconButton(
              icon: new Icon(Icons.menu),
              onPressed: () => _scaffoldKey.currentState.openDrawer())),
      drawer: Home(),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 40,
            left: 20,
            child: IconButton(icon: Icon(Icons.menu), iconSize: 100),
          ),
          Container(
            color: Colors.teal[300],
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    height: 200,
                    width: 465,
                    color: Colors.transparent,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: const Radius.circular(20.0),
                            topRight: const Radius.circular(20.0),
                            bottomLeft: const Radius.circular(20.0),
                            bottomRight: const Radius.circular(20.0),
                          ),
                          image: DecorationImage(
                              image: AssetImage("assets/img/bckgrn1.png"),
                              fit: BoxFit.cover)),
                    ),
                    // child: Center(
                    //   child: Text("Content"),
                    // )
                    // child: Swiper.children(
                    //   index: 0,
                    //   autoplay: true,
                    //   autoplayDelay: 2,
                    //   pagination: SwiperPagination(
                    //     margin: EdgeInsets.only(bottom: 20.0),
                    //     builder: DotSwiperPaginationBuilder(
                    //       color: EzeeyColors.primary,
                    //       activeColor: EzeeyColors.info,
                    //       size: 10.0,
                    //       activeSize: 10.0,
                    //     ),
                    //   ),
                    //   control:
                    //       SwiperControl(iconNext: null, iconPrevious: null),
                    //   //  children: _buildPage(context),
                    // ),

                    //                 List<Widget> _buildPage(BuildContext context) {
                    // List<Widget> widgets = [];
                    // for (int i = 0; i < introList.length; i++) {
                    //   Intro intro = introList[i];
                    //   widgets.add(
                    //     Container(
                    //       padding: EdgeInsets.only(
                    //         top: MediaQuery.of(context).size.height / 6,
                    //       ),
                    //       child: ListView(
                    //         children: <Widget>[
                    //           Image.asset(
                    //             intro.image,
                    //             height: MediaQuery.of(context).size.height / 3.10,
                    //           ),
                    //           Padding(
                    //             padding: EdgeInsets.only(
                    //               top: MediaQuery.of(context).size.height / 12.0,
                    //             ),
                    //           ),

                    //           Padding(
                    //             padding: EdgeInsets.only(
                    //               top: MediaQuery.of(context).size.height / 20.0,
                    //             ),
                    //           ),
                    //           Container(
                    //             padding: EdgeInsets.symmetric(
                    //               horizontal: MediaQuery.of(context).size.height / 20.0,
                    //             ),

                    //           ),
                    //         ],
                    //       ),
                    //     ),
                    //   );
                    // },
                  ),
                  SizedBox(height: 30),
                  Container(
                    height: height * 2,
                    width: width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(50.0),
                      ),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                padding: EdgeInsets.only(left: 30, top: 15),
                                child: Text("Mata Pelajaran",
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                padding: EdgeInsets.only(left: 30),
                                child: Text("Pay attention and do your best",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 15,
                                    )),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Container(
                            height: 170,
                            child: ListView(
                              padding: EdgeInsets.symmetric(vertical: 25.0),
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                Container(
                                  width: 170,
                                  margin: EdgeInsets.only(
                                    left: 20,
                                  ),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            AssetImage("assets/img/papan.jpg"),
                                        fit: BoxFit.cover),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      Container(
                                        width: 140,
                                        height: 100,
                                        child: Center(
                                          child: Text(
                                            "Matematika",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "Poppins"),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 170,
                                  margin: EdgeInsets.only(
                                    left: 20,
                                  ),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            AssetImage("assets/img/papan.jpg"),
                                        fit: BoxFit.cover),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      Container(
                                        width: 140,
                                        height: 100,
                                        child: Center(
                                          child: Text(
                                            "B.Inggris",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "Poppins"),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 170,
                                  margin: EdgeInsets.only(
                                    left: 20,
                                  ),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            AssetImage("assets/img/papan.jpg"),
                                        fit: BoxFit.cover),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      Container(
                                        width: 140,
                                        height: 100,
                                        child: Center(
                                          child: Text(
                                            "Flutter",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "Poppins"),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 170,
                                  margin: EdgeInsets.only(
                                    left: 20,
                                  ),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            AssetImage("assets/img/papan.jpg"),
                                        fit: BoxFit.cover),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      Container(
                                        width: 140,
                                        height: 100,
                                        child: Center(
                                          child: Text(
                                            "React JS",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "Poppins"),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 170,
                                  margin: EdgeInsets.only(
                                    left: 20,
                                  ),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            AssetImage("assets/img/papan.jpg"),
                                        fit: BoxFit.cover),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      Container(
                                        width: 140,
                                        height: 100,
                                        child: Center(
                                          child: Text(
                                            "Server",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "Poppins"),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 170,
                                  margin: EdgeInsets.only(
                                    left: 20,
                                  ),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            AssetImage("assets/img/papan.jpg"),
                                        fit: BoxFit.cover),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      Container(
                                        width: 140,
                                        height: 100,
                                        child: Center(
                                          child: Text(
                                            "Jaringan",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "Poppins"),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                padding: EdgeInsets.only(left: 30),
                                child: Text("Pengumuman",
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                padding: EdgeInsets.only(left: 30),
                                child: Text("expected to see the announcement",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 15,
                                    )),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          height: 200,
                          width: 420,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: const Radius.circular(20.0),
                                topRight: const Radius.circular(20.0),
                                bottomLeft: const Radius.circular(20.0),
                                bottomRight: const Radius.circular(20.0),
                              ),
                              image: DecorationImage(
                                  image: AssetImage("assets/img/covid.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          height: 200,
                          width: 420,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: const Radius.circular(20.0),
                                topRight: const Radius.circular(20.0),
                                bottomLeft: const Radius.circular(20.0),
                                bottomRight: const Radius.circular(20.0),
                              ),
                              image: DecorationImage(
                                  image: AssetImage("assets/img/esl.png"),
                                  fit: BoxFit.cover)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
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
