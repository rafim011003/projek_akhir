part of 'uis.dart';

class MainBoardings extends StatefulWidget {
  @override
  _MainBoardingState createState() => _MainBoardingState();
}

class _MainBoardingState extends State<MainBoardings> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final TextEditingController _searchControl = new TextEditingController();
  FocusNode myFocusNode;

  @override
  void initState() {
    super.initState();
    myFocusNode = FocusNode();
  }

  @override
  void dispose() {
    _searchControl.dispose();
    myFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.teal[300],
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
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(EzeeyColors.mainPadding),
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                SizedBox(
                  height: EzeeyColors.mainPadding * 2,
                ),
                Text(
                  "Welcome back\nTeacher!",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 34,
                      fontWeight: FontWeight.w900,
                      color: Colors.white),
                ),
                SizedBox(
                  height: EzeeyColors.mainPadding * 2,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      )),
                  child: TextField(
                    focusNode: myFocusNode,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: EzeeyColors.textDark,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(20.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      hintText: "Search Another",
                      suffixIcon: IconButton(
                        icon: Icon(
                          Icons.search,
                          color: EzeeyColors.textDark,
                        ),
                        onPressed: () {
                          debugPrint("Search pressed");
                        },
                      ),
                      hintStyle: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                    maxLines: 1,
                  ),
                ),
                SizedBox(
                  height: EzeeyColors.mainPadding * 2,
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(30.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: EzeeyColors.lightPink,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Go teaching \nNew Leason!",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: EzeeyColors.textDark),
                          ),

                          SizedBox(height: 10.0),

                          // Categories Button
                          Container(
                            width: 150,
                            child: FlatButton(
                              padding: EdgeInsets.all(10.0),
                              color: EzeeyColors.salmonMain,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                    child: Center(
                                      child: Text(
                                        "Penilaian",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: "Poppins",
                                            fontSize: 17),
                                      ),
                                    ),
                                  ),
                                  Icon(Icons.arrow_forward,
                                      color: Colors.white, size: 16),
                                ],
                              ),
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(13.0),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PenilaianSiswa()),
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: -10,
                      child: Image.asset(
                        "assets/img/laptop1.png",
                        width: 300,
                        height: 220,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                // Text("Courses in progress",
                //     style: TextStyle(
                //       color: EzeeyColors.textDark,
                //       fontSize: 18,
                //       fontWeight: FontWeight.bold,
                //     )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
