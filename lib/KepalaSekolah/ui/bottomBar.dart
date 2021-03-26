part of 'uis.dart';

class BottomBar extends StatefulWidget {
  BottomBar({Key key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentIndex = 0;

  List _currentPage = [
    MainBoarding(),
    JadwalPelajaran(),
    Profil(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _currentPage[currentIndex],
          Positioned(
            bottom: 20,
            left: 30,
            right: 30,
            child: Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              elevation: 7,
              child: BottomNavyBar(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                itemCornerRadius: 100,
                showElevation: true,
                selectedIndex: currentIndex,
                animationDuration: Duration(milliseconds: 750),
                curve: Curves.easeInOutCirc,
                onItemSelected: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                items: [
                  BottomNavyBarItem(
                    icon: Icon(Icons.home),
                    title: Text('Home'),
                    activeColor: Colors.blueAccent,
                    inactiveColor: Colors.blueGrey[800],
                  ),
                  BottomNavyBarItem(
                    icon: Icon(Icons.notifications),
                    title: Text('Berita'),
                    activeColor: Colors.blueAccent,
                    inactiveColor: Colors.blueGrey[800],
                  ),
                  BottomNavyBarItem(
                    icon: Icon(Icons.person),
                    title: Text('Account'),
                    activeColor: Colors.blueAccent,
                    inactiveColor: Colors.blueGrey[800],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
