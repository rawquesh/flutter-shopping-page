import 'package:flutter/material.dart';
import 'package:oznailsbeauty/widgets/appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: myAppBar(),
    );
  }
}
