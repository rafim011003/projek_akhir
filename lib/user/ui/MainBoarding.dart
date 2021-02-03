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
      // floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      // floatingActionButton: FloatingActionButton(
      //   // materialTapTargetSize: ,
      //   backgroundColor: Colors.white38,
      //   hoverColor: Colors.grey,
      //   child: Icon(Icons.menu),
      //   onPressed: () => _scaffoldKey.currentState.openDrawer(),
      // ),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.menu, size: 30),
            onPressed: () => _scaffoldKey.currentState.openDrawer()),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(icon: Icon(Icons.search, size: 30), onPressed: () {})
        ],
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
                height: height,
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
                                    image: AssetImage("assets/img/papan.jpg"),
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
                                    image: AssetImage("assets/img/papan.jpg"),
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
                                    image: AssetImage("assets/img/papan.jpg"),
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
                                    image: AssetImage("assets/img/papan.jpg"),
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
                                    image: AssetImage("assets/img/papan.jpg"),
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
                                    image: AssetImage("assets/img/papan.jpg"),
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
                      height: 150,
                      width: 420,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: const Radius.circular(10.0),
                            topRight: const Radius.circular(10.0),
                          ),
                          image: DecorationImage(
                              image: AssetImage(
                                "assets/img/covid.jpg",
                              ),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      height: 50,
                      width: 420,
                      decoration: BoxDecoration(
                        color: Colors.grey[350],
                        borderRadius: BorderRadius.only(
                          bottomLeft: const Radius.circular(10.0),
                          bottomRight: const Radius.circular(10.0),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(2.5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Ujian Tengah Semester",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.grey[850],
                                )),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Ujian tengah semester berlangsung ...",
                              style: TextStyle(
                                color: Colors.grey[850],
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.bold,
                                fontSize: 11,
                              ),
                            )
                          ],
                        ),
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
                              image: AssetImage("assets/img/esl.png"),
                              fit: BoxFit.cover)),
                    ),
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
