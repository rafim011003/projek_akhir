part of 'uis.dart';

class JadwalPelajaran extends StatefulWidget {
  @override
  _JadwalPelajaran createState() => _JadwalPelajaran();
}

class _JadwalPelajaran extends State<JadwalPelajaran> {
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
            icon: Icon(Icons.menu, size: 30, color: Colors.teal[300]),
            onPressed: () => _scaffoldKey.currentState.openDrawer()),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
              icon: Icon(
                Icons.search,
                size: 30,
                color: Colors.teal[300],
              ),
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
                      image: AssetImage("assets/img/asdf.png"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(
                    bottomLeft: const Radius.circular(70.0),
                    bottomRight: const Radius.circular(70.0),
                  )),
            ),

            Container(
              padding: EdgeInsets.only(left: 40, top: 10),
              child: Text("Jadwal Pelajaran",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 25,
                      fontWeight: FontWeight.bold)),
            ),
            // Positioned(
            //     top: 100,
            //     child: Center(
            //       child: Container(
            //         height: height * 0.5,
            //         width: width * 0.95,
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(30),
            //           color: Colors.white38,
            //         ),
            //       ),
            //     )),
            // Container(
            //   height: height,
            //   width: width,
            //   decoration: BoxDecoration(
            //     color: Colors.white,
            //   ),
            // Container(
            //   alignment: Alignment.topLeft,
            //   padding: EdgeInsets.only(left: 40, top: 10),
            //   child: Text("Jadwal Pelajaran",
            //       style: TextStyle(
            //           fontFamily: "Poppins",
            //           fontSize: 25,
            //           fontWeight: FontWeight.bold)),
            // ),
            // ),
          ],
        ),
      ),
    );
  }
}
