import 'package:client/screens/login_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'home_screen';

  const HomeScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Invertory Manager'),
        ),
        body: TabBarView(
          children: [
            // todo: Add all the screens containers in this list
            LoginScreen(),
          ],
        ),
        bottomNavigationBar: TabBar(
          tabs: const <Widget>[
            Tab(
              icon: Icon(
                Icons.add,
                color: Colors.blue,
              ),
              child: Text(
                'Add',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
