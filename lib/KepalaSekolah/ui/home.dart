part of 'uis.dart';

class Home extends StatefulWidget {
  final String currentPage;

  Home({this.currentPage});
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Theme(
            data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
            child: BottomNavigationBar(
              currentIndex: 0,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home), label: ('Home')),
                BottomNavigationBarItem(
                    icon: Icon(Icons.home), label: ('Home')),
                BottomNavigationBarItem(icon: Icon(Icons.home), label: ('Home'))
              ],
            )));
  }
}
