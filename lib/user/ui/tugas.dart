part of 'uis.dart';

class Tugas extends StatefulWidget {
  @override
  _Tugas createState() => _Tugas();
}

class _Tugas extends State<Tugas> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

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
                  child: Icon(Icons.navigate_before, color: Colors.white),
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
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
              margin: EdgeInsets.only(top: 70),
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
                      "assets/img/papan1.jpg",
                    ),
                    fit: BoxFit.cover),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 50, top: 20),
                    child: Row(
                      children: <Widget>[
                        Text("Agama",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 40, top: 80),
                    child: Row(
                      children: <Widget>[
                        Container(
                            child: Icon(
                          Icons.location_on_outlined,
                          color: Colors.white,
                        )),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text("XII REKAYASA PERANGKAT LUNAK",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                color: Colors.white,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 40, top: 10),
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
                        Text("Ust.Fajri",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                color: Colors.white,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              height: height * 1.1,
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 35, top: 20),
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
                      children: List.generate(7, (index) => ezeeyApp())),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ezeeyApp extends StatefulWidget {
  final index;
  const ezeeyApp({
    Key key,
    this.index,
  }) : super(key: key);

  @override
  _EzeeyAppState createState() => _EzeeyAppState();
}

class _EzeeyAppState extends State<ezeeyApp> {
  var list = [
    "Matematika",
    "Bahasa Indonesia",
    "Bahasa Inggris",
    "Fiqih",
    "Aqidah",
    "Pemograman Web",
    "Pemograman Android"
  ];
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => TugasPage()));
      },
      child: EzeeyApp(
        image: Image.asset(
          "assets/img/notip2.png",
          width: 40,
          height: 40,
          color: Colors.white,
        ),
        color: Colors.white38,
        title: "Integral",
        hours: "Senin 22 Februari",
        progress: "25%",
        percentage: 0.25,
      ),
    );
  }
}
