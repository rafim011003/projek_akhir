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
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu_rounded),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        title: Text(
          "App",
          style: TextStyle(fontFamily: "Poppins"),
        ),
      ),
      drawer: Home(),
      body: SingleChildScrollView(
        child: Column(
          children: [
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
                      image: AssetImage("assets/img/gojek1.png"),
                      fit: BoxFit.cover)),
            ),
            Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(40.0),
                  topRight: const Radius.circular(40.0),
                ),
                color: Colors.white,
              ),
              child: Container(
                padding: EdgeInsets.only(left: 40, top: 10),
                child: Text("Pengumuman",
                    style: TextStyle(
                      fontFamily: "Alegreya",
                      fontSize: 30,
                    )),
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
