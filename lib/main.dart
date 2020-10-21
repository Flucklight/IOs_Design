import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.arrow_left),
                title: Text("Izquierda"),
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.arrow_right),
              title: Text("Derecha"),
            )
          ],
        ),
        tabBuilder: (context, i) {
          return CupertinoTabView(
            builder: (context) {
              return CupertinoPageScaffold(
                  navigationBar: CupertinoNavigationBar(
                    middle: Text("Cupertino App by Vic :3"),
                  ),
                  child: Center(
                    child: Text(
                      "Hello World",
                      style: CupertinoTheme.of(context).textTheme.navLargeTitleTextStyle
                    ),
                  ),
              );
            }
          );
        }
    );
  }
}
