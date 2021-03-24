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
                  margin: new EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 10.0),
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
        body: Center(
          child: Container(
            margin: EdgeInsets.only(top: 60, bottom: 20),
            height: height,
            width: width - 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white38,
            ),
          ),
        ));
  }
}
