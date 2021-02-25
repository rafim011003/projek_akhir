part of 'uis.dart';

class Tugas extends StatefulWidget {
  @override
  _Tugas createState() => _Tugas();
}

class _Tugas extends State<Tugas> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.teal[300],
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: height * 1.1,
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 35, top: 50),
                    child: Text("Tugas Harian",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 35),
                    child: Text("Do your job for better results",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 15,
                            color: Colors.white)),
                  ),
                  ListView(
                    padding: EdgeInsets.all(30),
                    scrollDirection: Axis.vertical,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: <Widget>[
                      EzeeyApp(
                        image: Image.asset("assets/img/mtk.png",
                            width: 40, height: 40),
                        color: EzeeyColors.lightPink,
                        title: "Adobe XD Prototyping",
                        hours: "10 hours, 19 lessons",
                        progress: "25%",
                        percentage: 0.25,
                      ),
                      EzeeyApp(
                        image: Image.asset("assets/img/fiqih.png",
                            width: 50, height: 50),
                        color: EzeeyColors.lightYellow,
                        title: "Sketch shortcuts and tricks",
                        hours: "10 hours, 19 lessons",
                        progress: "50%",
                        percentage: 0.5,
                      ),
                      EzeeyApp(
                        image: Image.asset("assets/img/icon_3.png",
                            width: 40, height: 40),
                        color: EzeeyColors.salmonLight,
                        title: "UI Motion Design in After Effects",
                        hours: "10 hours, 19 lessons",
                        progress: "75%",
                        percentage: 0.75,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
