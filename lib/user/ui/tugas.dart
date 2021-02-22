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
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              size: 30,
              color: Colors.teal[300],
            ),
            onPressed: () => _scaffoldKey.currentState.openDrawer()),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
              icon: Icon(Icons.search, size: 30, color: Colors.teal[300]),
              onPressed: () {})
        ],
      ),
      drawer: Home(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 400,
              width: 500,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/img/working.png"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(
                    bottomLeft: const Radius.circular(70.0),
                  )),
            ),
            // Container(
            //   padding: EdgeInsets.only(left: 10, top: 10),
            //   child: Text("Tugas Harian",
            //       style: TextStyle(
            //           fontFamily: "Poppins",
            //           fontSize: 25,
            //           fontWeight: FontWeight.bold,
            //           color: Colors.white)),
            // ),
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
                CardCourses(
                  image: Image.asset("assets/img/icon_1.png",
                      width: 40, height: 40),
                  color: EzeeyColors.lightPink,
                  title: "Adobe XD Prototyping",
                  hours: "10 hours, 19 lessons",
                  progress: "25%",
                  percentage: 0.25,
                ),
                CardCourses(
                  image: Image.asset("assets/img/icon_3.png",
                      width: 40, height: 40),
                  color: EzeeyColors.lightYellow,
                  title: "Sketch shortcuts and tricks",
                  hours: "10 hours, 19 lessons",
                  progress: "50%",
                  percentage: 0.5,
                ),
                CardCourses(
                  image: Image.asset("assets/img/icon_3.png",
                      width: 40, height: 40),
                  color: EzeeyColors.salmonLight,
                  title: "UI Motion Design in After Effects",
                  hours: "10 hours, 19 lessons",
                  progress: "75%",
                  percentage: 0.75,
                ),
                CardCourses(
                  image: Image.asset("assets/img/icon_1.png",
                      width: 40, height: 40),
                  color: EzeeyColors.lightPink,
                  title: "Adobe XD Prototyping",
                  hours: "10 hours, 19 lessons",
                  progress: "25%",
                  percentage: 0.25,
                ),
                CardCourses(
                  image: Image.asset("assets/img/icon_1.png",
                      width: 40, height: 40),
                  color: EzeeyColors.lightPink,
                  title: "Adobe XD Prototyping",
                  hours: "10 hours, 19 lessons",
                  progress: "25%",
                  percentage: 0.25,
                ),
                CardCourses(
                  image: Image.asset("assets/img/icon_1.png",
                      width: 40, height: 40),
                  color: EzeeyColors.lightPink,
                  title: "Adobe XD Prototyping",
                  hours: "10 hours, 19 lessons",
                  progress: "75%",
                  percentage: 0.75,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
