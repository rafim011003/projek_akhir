part of 'uis.dart';

// import 'package:project_coba/widgets/theme.dart';
// import 'package:project_coba/widgets/drawer.dart';

class MainBoarding extends StatefulWidget {
  @override
  _MainBoardingState createState() => _MainBoardingState();
}

class _MainBoardingState extends State<MainBoarding>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool _selectOption = true;

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
    double height = MediaQuery.of(context).size.height;

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
            ],
          ),
        ),
      ),
      drawer: Home(),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomRight,
              colors: [Colors.teal[900], Colors.white]),
        ),
        child: SingleChildScrollView(
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
                  height: height - 350,
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
                            controller: _controller,
                            indicatorColor: Color(0xfff1fcc79),
                            labelColor: Colors.black,
                            tabs: [
                              Tab(text: 'Announcement'),
                              Tab(text: 'Recap User'),
                            ],
                          ),
                        ),
                        preferredSize: Size.fromHeight(50)),
                    body: Container(
                      child: TabBarView(
                        controller: _controller,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 50),
                            height: 200,
                            width: 465,
                            child: Container(
                              height: 300,
                              child: Swiper(
                                itemCount: 3,
                                itemBuilder: (BuildContext context, int index) {
                                  return ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Stack(
                                      fit: StackFit.expand,
                                      children: [
                                        Image(
                                          image: AssetImage(
                                            images2[index],
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                        Positioned(
                                          child: Container(
                                            padding: EdgeInsets.all(15.0),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              color: Colors.white,
                                            ),
                                            child: Text('Read More'),
                                          ),
                                          top: 15,
                                          left: 15,
                                        ),
                                        Positioned(
                                          child: Container(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Penjelasan Aplikasi Disini Ngap!',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Container(
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        'Nama Guru !',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          bottom: 15,
                                          left: 15,
                                        ),
                                      ],
                                    ),
                                  );
                                },
                                viewportFraction: 0.8,
                                scale: 0.9,
                                pagination: SwiperPagination(
                                  builder: new DotSwiperPaginationBuilder(
                                    color: Colors.transparent,
                                    activeColor: Colors.transparent,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: Text('asd'),
                          )
                        ],
                      ),
                    ),
                  )),
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

class CardPelajaran extends StatelessWidget {
  final index;
  const CardPelajaran({
    Key key,
    this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Tugas()));
      },
      child: Container(
        width: 170,
        margin: EdgeInsets.only(
          left: 20,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/img/papan1.jpg"), fit: BoxFit.cover),
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
                  Icons.verified_outlined,
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

class CardPengumuman extends StatelessWidget {
  const CardPengumuman({
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
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 20, top: 10),
                child: Row(
                  children: <Widget>[
                    Container(
                        child: Icon(
                      Icons.account_circle_outlined,
                      color: Colors.white,
                    )),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text("Admin",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            color: Colors.white,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.only(right: 20, top: 10),
                child: Text("3 min ago",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        color: Colors.white,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold)),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 20, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      '07:00 - 08:30',
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 15,
                          color: Colors.white),
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
                Text('Persentasi Akhir',
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 21.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )),
                Text(
                    'Perencanaan Persentasi akhir untuk\npara kelas XII akan di laksana kan pada...',
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 15.0,
                      color: Colors.white,
                    )),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 5, right: 10),
            child: Align(
              alignment: Alignment.bottomRight,
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Pengumuman()),
                  );
                },
                child: Text("Read More"),
                color: Colors.blueGrey[50],
                textColor: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
