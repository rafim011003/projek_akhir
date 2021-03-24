// import 'dart:convert';

part of 'uis.dart';

// import 'package:project_coba/user/auth/login.dart';
// import 'package:project_coba/network_utils/api.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'splashscreen.dart';

class Home extends StatefulWidget {
  final String currentPage;

  Home({this.currentPage});
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // String name;
  @override
  // void initState() {
  //   _loadUserData();
  //   super.initState();
  // }

  // _loadUserData() async {
  //   SharedPreferences localStorage = await SharedPreferences.getInstance();
  //   var name = jsonDecode(localStorage.getString('name'));

  //   if (name != null) {
  //     setState(() {
  //       name = name['name'];
  //     });
  //   }
  // }

  // int _selectedTabIndex = 0;
  // void _onNavBarTapped(int index) {
  //   setState(() {
  //     _selectedTabIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
      child: Drawer(
          child: Container(
        color: Color(0xfff438b73),
        child: Column(children: [
          Container(
              width: double.infinity,
              color: Color(0xfff438b73),
              child: Container(
                padding: EdgeInsets.all(10),
                child: Material(
                  color: Colors.transparent,
                  child: Image.asset("assets/img/Group.png",
                      height: 150, width: 150),
                ),
              )),
          Container(
            child: Expanded(
              flex: 2,
              child: ListView(
                padding: EdgeInsets.only(top: 24, left: 16, right: 16),
                children: [
                  ListTile(
                    leading: Icon(Icons.home, size: 25, color: Colors.white),
                    title: Text(
                      'Home',
                      style:
                          TextStyle(fontFamily: "Poppins", color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MainBoarding()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.calendar_today_outlined,
                        size: 25, color: Colors.white),
                    title: Text(
                      'Jadwal',
                      style: TextStyle(
                        fontFamily: "Poppins",
                        color: Colors.white,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => JadwalPelajaran()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.account_circle,
                        size: 25, color: Colors.white),
                    title: Text(
                      'Profile',
                      style: TextStyle(
                        fontFamily: "Poppins",
                        color: Colors.white,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Profil()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.logout, size: 25, color: Colors.white),
                    title: Text(
                      'Logout',
                      style: TextStyle(
                        fontFamily: "Poppins",
                        color: Colors.white,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignIn()));
                    },
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10),
            width: double.maxFinite,
            height: 1,
            color: Colors.grey,
          ),
          Column(
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Image.asset(
                      "assets/img/muslim1.png",
                      width: 50,
                      height: 50,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Bintang Fabian',
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 15,
                      color: Colors.blueGrey[800],
                    ),
                  ),
                ],
              )
            ],
          ),
        ]),
      )),
    );
  }

  // void logout() async {
  //   var res = await Network().getData('/logout');
  //   var body = json.decode(res.body);
  //   if (body['success']) {
  //     SharedPreferences localStorage = await SharedPreferences.getInstance();
  //     localStorage.remove('user');
  //     localStorage.remove('token');
  //     Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
  //   }
  // }
}
