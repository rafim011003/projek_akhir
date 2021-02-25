part of 'uis.dart';

// import 'package:project_coba/widgets/theme.dart';
// import 'package:project_coba/widgets/drawer.dart';

class MainBoarding extends StatefulWidget {
  @override
  _MainBoardingState createState() => _MainBoardingState();
}

class _MainBoardingState extends State<MainBoarding> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    SystemChrome.setEnabledSystemUIOverlays([]);
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    // TODO: implement build
    return Scaffold(
      key: _scaffoldKey,
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 100),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                margin:
                    new EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                height: 44,
                width: 44,
                child: FlatButton(
                  padding: EdgeInsets.all(0),
                  color: Colors.white.withOpacity(0.3),
                  child: Icon(Icons.menu, color: Colors.white),
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  onPressed: () => _scaffoldKey.currentState.openDrawer(),
                ),
              ),
              Container(
                margin: new EdgeInsets.symmetric(
                    horizontal: EzeeyColors.mainPadding,
                    vertical: EzeeyColors.mainPadding),
                height: 44,
                width: 44,
                child: FlatButton(
                  padding: EdgeInsets.all(0),
                  color: Colors.white.withOpacity(0.3),
                  child: Icon(Icons.search, color: Colors.white),
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  onPressed: () {
                    debugPrint("Menu Pressed");
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: Home(),
      body: Scaffold(
        backgroundColor: Colors.teal[300],
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(top: 55),
                height: 200,
                width: 465,
                child: Container(
                  height: 300,
                  child: Swiper(
                    autoplay: true,
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image(
                          image: AssetImage(
                            images2[index],
                          ),
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                    viewportFraction: 0.8,
                    scale: 0.9,
                    pagination: SwiperPagination(),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                height: height * 1.4,
                width: width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(70.0),
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
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    new MaterialPageRoute(
                                        builder: (context) => MataPelajaran()));
                              },
                              child: Text("Mata Pelajaran",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold)),
                            ),
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
                            children: List.generate(
                                7,
                                (index) => cardPelajaran(
                                      index: index,
                                    ))),
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
                    cardPengumuman(),
                  ],
                ),
              ),
            ],
          ),
        ),
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

class cardPelajaran extends StatelessWidget {
  final index;
  const cardPelajaran({
    Key key,
    this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Pelajaran()));
      },
      child: Container(
        width: 170,
        margin: EdgeInsets.only(
          left: 20,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/img/papan.jpg"), fit: BoxFit.cover),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(top: 10, left: 5),
              child: Align(
                alignment: Alignment.topLeft,
                child: Icon(
                  Icons.emoji_events_outlined,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10, left: 5),
              child: Align(
                alignment: Alignment.topLeft,
                child: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.spaceAround,
        //   children: <Widget>[
        //     Container(
        //       width: 140,
        //       height: 100,
        //       child: Center(
        //         child: Text(
        //           "Matematika",
        //           textAlign: TextAlign.left,
        //           style: TextStyle(
        //               color: Colors.white,
        //               fontWeight: FontWeight.bold,
        //               fontFamily: "Poppins"),
        //         ),
        //       ),
        //     ),

        //   ],
        // ),
      ),
    );
  }
}

class cardPengumuman extends StatelessWidget {
  const cardPengumuman({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      height: 200,
      width: 420,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: const Radius.circular(10.0),
          topRight: const Radius.circular(10.0),
          bottomLeft: const Radius.circular(10.0),
          bottomRight: const Radius.circular(10.0),
        ),
        image: DecorationImage(
            image: AssetImage(
              "assets/img/BgPengumuman.png",
            ),
            fit: BoxFit.cover),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.grey.withOpacity(0.5),
        //     spreadRadius: 2,
        //     blurRadius: 7,
        //     offset: Offset(0, 10),
        //   ),
        // ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 20),
            height: 21.0,
            child: Row(
              children: [
                Text(
                  '07:00 - 08:30',
                  style: TextStyle(
                      fontFamily: "Poppins", fontSize: 15, color: Colors.white),
                ),
                VerticalDivider(
                  color: Colors.black,
                ),
                Text('Morning',
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 15,
                        color: Colors.white)),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            child: Text('Bahasa Indonesia',
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 21.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                )),
          ),
        ],
      ),
      // child: Container(
      //   padding: EdgeInsets.only(bottom: 5, right: 10),
      //   child: Align(
      //     alignment: Alignment.bottomRight,
      //     child: RaisedButton(
      //       onPressed: () {
      //         Navigator.push(
      //           context,
      //           MaterialPageRoute(builder: (context) => Pengumuman()),
      //         );
      //       },
      //       child: Text("Read More"),
      //       color: Colors.blueGrey[50],
      //       textColor: Colors.black,
      //     ),
      //   ),
      // ),
    );
  }
}
