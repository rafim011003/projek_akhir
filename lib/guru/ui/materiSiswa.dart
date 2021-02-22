part of 'uis.dart';

class MateriSiswa extends StatefulWidget {
  @override
  _MateriSiswaState createState() => _MateriSiswaState();
}

class _MateriSiswaState extends State<MateriSiswa> {
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
              height: 400,
              width: 500,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/img/png2.png"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(
                    bottomLeft: const Radius.circular(70.0),
                  )),
            ),
          ],
        ),
      ),
      // extendBodyBehindAppBar: true,
      // appBar: PreferredSize(
      //   preferredSize: Size(double.infinity, 100),
      //   child: SafeArea(
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       children: <Widget>[
      //         Container(
      //           margin: new EdgeInsets.symmetric(
      //               horizontal: EzeeyColors.mainPadding,
      //               vertical: EzeeyColors.mainPadding),
      //           height: 44,
      //           width: 44,
      //           child: FlatButton(
      //             padding: EdgeInsets.all(0),
      //             color: Colors.white.withOpacity(0.3),
      //             child: Icon(Icons.keyboard_backspace, color: Colors.white),
      //             shape: new RoundedRectangleBorder(
      //               borderRadius: new BorderRadius.circular(10.0),
      //             ),
      //             onPressed: () {
      //               Navigator.pop(context);
      //             },
      //           ),
      //         ),
      //         Container(
      //           margin: new EdgeInsets.symmetric(
      //               horizontal: EzeeyColors.mainPadding,
      //               vertical: EzeeyColors.mainPadding),
      //           height: 44,
      //           width: 44,
      //           child: FlatButton(
      //             padding: EdgeInsets.all(0),
      //             color: Colors.white.withOpacity(0.3),
      //             child: Icon(Icons.menu, color: Colors.white),
      //             shape: new RoundedRectangleBorder(
      //               borderRadius: new BorderRadius.circular(10.0),
      //             ),
      //             onPressed: () {
      //               debugPrint("Menu Pressed");
      //             },
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      // body: Stack(
      //   children: <Widget>[
      //     HeaderInner(),
      //     ListView(
      //       children: <Widget>[
      //         SizedBox(height: EzeeyColors.mainPadding * 3),
      //         Center(
      //           child: Text(
      //             "UI/UX\nCourses",
      //             textAlign: TextAlign.center,
      //             style: TextStyle(
      //               fontSize: 34,
      //               fontWeight: FontWeight.w900,
      //               color: Colors.white,
      //             ),
      //           ),
      //         ),
      //         SizedBox(height: EzeeyColors.mainPadding * 2),
      //         Container(
      //           padding: EdgeInsets.fromLTRB(
      //               EzeeyColors.mainPadding,
      //               EzeeyColors.mainPadding * 2,
      //               EzeeyColors.mainPadding,
      //               EzeeyColors.mainPadding),
      //           decoration: BoxDecoration(
      //             borderRadius:
      //                 BorderRadius.vertical(top: Radius.circular(50.0)),
      //             color: Colors.white,
      //           ),
      //         ),
      //       ],
      //     ),
      //   ],
      // ),

      ////////////////////////////
      // backgroundColor: Colors.teal[300],
      // key: _scaffoldKey,
      // extendBodyBehindAppBar: true,
      // appBar: AppBar(
      //   leading: IconButton(
      //       icon: Icon(
      //         Icons.menu,
      //         size: 30,
      //         color: Colors.teal[300],
      //       ),
      //       onPressed: () => _scaffoldKey.currentState.openDrawer()),
      //   centerTitle: true,
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   actions: [
      //     IconButton(
      //         icon: Icon(Icons.search, size: 30, color: Colors.teal[300]),
      //         onPressed: () {})
      //   ],
      // ),
      // drawer: Home(),
      // body: SingleChildScrollView(
      //   child: Column(
      //     children: [
      //       Container(
      //         height: 400,
      //         width: 500,
      //         decoration: BoxDecoration(
      //             image: DecorationImage(
      //                 image: AssetImage("assets/img/working.png"),
      //                 fit: BoxFit.cover),
      //             borderRadius: BorderRadius.only(
      //               bottomLeft: const Radius.circular(70.0),
      //             )),
      //       ),

      //       Container(
      //         alignment: Alignment.topLeft,
      //         padding: EdgeInsets.only(left: 35, top: 50),
      //         child: Text("Penilaian Siswa",
      //             style: TextStyle(
      //                 fontFamily: "Poppins",
      //                 fontSize: 25,
      //                 fontWeight: FontWeight.bold,
      //                 color: Colors.white)),
      //       ),
      //       Container(
      //         alignment: Alignment.topLeft,
      //         padding: EdgeInsets.only(left: 35),
      //         child: Text("Provide a value that matches reality",
      //             style: TextStyle(
      //                 fontFamily: "Poppins",
      //                 fontSize: 15,
      //                 color: Colors.white)),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
