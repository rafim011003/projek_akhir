part of 'uis.dart';

class TugasPage extends StatefulWidget {
  @override
  _TugasPage createState() => _TugasPage();
}

class _TugasPage extends State<TugasPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final TextEditingController _searchControl = new TextEditingController();
  FocusNode myFocusNode;

  @override
  void initState() {
    super.initState();
    myFocusNode = FocusNode();
  }

  @override
  void dispose() {
    _searchControl.dispose();
    myFocusNode.dispose();
    super.dispose();
  }

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
      body: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(left: 35, top: 50),
            child: Text("Matematika Bab - 1",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(left: 35),
            child: Text("Isi jawaban dengan benar dan teliti",
                style: TextStyle(
                    fontFamily: "Poppins", fontSize: 15, color: Colors.white)),
          ),
          Container(
            margin: EdgeInsets.only(top: 60, right: 10, left: 10),
            height: height - 250,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white38,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10, top: 10),
            width: width,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: TextField(
              focusNode: myFocusNode,
              style: TextStyle(
                fontSize: 15.0,
              ),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(20.0),
                hintText: "Ketik Sesuatu...",
                suffixIcon: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.insert_link_outlined,
                        color: EzeeyColors.textDark,
                      ),
                      onPressed: () {
                        debugPrint("LinkLink");
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.send_outlined,
                        color: EzeeyColors.textDark,
                      ),
                      onPressed: () {
                        debugPrint("LinkLink");
                      },
                    ),
                  ],
                ),
                hintStyle: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              maxLines: 1,
            ),
          ),
        ],
      ),
    );
  }
}
