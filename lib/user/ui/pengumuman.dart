part of 'uis.dart';

class Pengumuman extends StatefulWidget {
  @override
  _Pengumuman createState() => _Pengumuman();
}

class _Pengumuman extends State<Pengumuman> {
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
            ),
            onPressed: () => _scaffoldKey.currentState.openDrawer()),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(icon: Icon(Icons.search, size: 30), onPressed: () {})
        ],
      ),
      drawer: Home(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 20),
              height: 280.0,
              width: 495,
              // decoration: BoxDecoration(
              //     image: DecorationImage(
              //         image: AssetImage("assets/img/gabisa.png"),
              //         fit: BoxFit.cover)),
            ),
            Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: const Radius.circular(50.0),
                ),
                color: Colors.white,
              ),
              child: Container(
                padding: EdgeInsets.only(left: 40, top: 10),
                child: Text("Pengumuman",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 20),
              height: 280.0,
              width: 495,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(10.0),
                    topRight: const Radius.circular(10.0),
                    bottomLeft: const Radius.circular(10.0),
                    bottomRight: const Radius.circular(10.0),
                  ),
                  image: DecorationImage(
                      image: AssetImage("assets/img/gojek.png"),
                      fit: BoxFit.cover)),
            ),
          ],
        ),
      ),
    );
  }
}
