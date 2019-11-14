import 'package:flutter/material.dart';
import "../services/dashboardService.dart";
import '../models//userModal.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  Future<User> user;
  @override
  @override
  void initState() {
    super.initState();
    user = fetchPost();
  }

  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: FutureBuilder<User>(
        future: user,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Text(snapshot.data.login);
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }

          // By default, show a loading spinner.
          return CircularProgressIndicator();
        },
      )),
    );
  }
}
