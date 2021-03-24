part of 'uis.dart';

class Profil extends StatefulWidget {
  @override
  _Profile createState() => _Profile();
}

class _Profile extends State<Profil> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xfff438b73),
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
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            color: Color(0xfff438b73),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Container(
                    height: height * 0.4,
                    child: LayoutBuilder(builder: (context, constraints) {
                      double innerHeight = constraints.maxHeight;
                      double innerWidth = constraints.maxWidth;
                      return Stack(
                        fit: StackFit.expand,
                        children: [
                          Center(
                            child: Container(
                              height: innerHeight * 1.20,
                              width: innerWidth * 0.40,
                              child: Image.asset(
                                'assets/img/muslim.png',
                                width: innerWidth * 0.45,
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 0.1),
                    child: Text("Kepala Sekolah",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Poppins",
                            fontSize: 35,
                            fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Positioned(
                      left: 10,
                      right: 10,
                      bottom: 0,
                      child: Center(
                        child: Container(
                          height: height * 0.5,
                          width: width * 0.95,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white38,
                          ),
                        ),
                      )),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

// Scaffold(
//       body: Container(
//         width: double.infinity,
//         decoration: BoxDecoration(
//             gradient: LinearGradient(begin: Alignment.topCenter, colors: [
//           Colors.teal[200],
//           Colors.teal
//           // Colors.blueAccent
//         ])),
//       ),
//     );
