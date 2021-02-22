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
      body: SafeArea(
          child: Container(
        color: Colors.teal[300],
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            topRow(),
            SizedBox(),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(6, (index) => dateWidget())),
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              child: Container(
                height: height * 2,
                width: width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                ),
                child: Column(children: [
                  Text("7:00",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        color: Colors.grey[600],
                      )),
                  Container(
                    height: 2.0,
                    width: 140.0,
                    color: Color(0xffd1d3d9),
                  ),
                  Container(
                    height: 2.0,
                    width: 40.0,
                    color: Color(0xffd1d3d9),
                  ),
                  Container(
                    height: 2.0,
                    width: 100.0,
                    color: Color(0xffd1d3d9),
                  ),
                ]),
              ),
            ),
          ],
        ),
      )),
    );
  }
}

class dateWidget extends StatefulWidget {
  @override
  _dateWidgetState createState() => _dateWidgetState();
}

class _dateWidgetState extends State<dateWidget> {
  bool _selectDate = true;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          _selectDate = !_selectDate;
        });
      },
      child: Container(
        padding: EdgeInsets.all(8.0),
        decoration: _selectDate
            ? null
            : BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(7)),
                color: Colors.white60,
              ),
        child: Column(
          children: [
            Text("Mon",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight:
                        _selectDate ? FontWeight.normal : FontWeight.bold,
                    color: _selectDate ? Colors.white : Colors.white)),
            Text("10",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight:
                        _selectDate ? FontWeight.normal : FontWeight.bold,
                    color: _selectDate ? Colors.white : Colors.white)),
            Container(
              width: 4.0,
              height: 4.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _selectDate ? Colors.white : Colors.white54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class topRow extends StatelessWidget {
  const topRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Row(
              children: <Widget>[
                Text("Daily",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        color: Colors.white,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  width: 8.0,
                ),
                Text("meetings",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        color: Colors.white38,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            Spacer(),
            Text("Mar",
                style: TextStyle(
                    fontFamily: "Poppins",
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold)),
          ],
        ),
        Row(
          children: [
            Text("24",
                style: TextStyle(
                    fontFamily: "Poppins",
                    color: Colors.white,
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              width: 8.0,
            ),
            Text("Sunday",
                style: TextStyle(
                    fontFamily: "Poppins",
                    color: Colors.white38,
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold)),

            // Text("Sunday",
            //     style: TextStyle(
            //         fontFamily: "Poppins",
            //         color: Colors.white38,
            //         fontSize: 15.0,
            //         fontWeight: FontWeight.bold)),
          ],
        ),
      ],
    );
  }
}
