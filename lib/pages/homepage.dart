import "package:catcomm/widgets/drawer.dart";
import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CatComm'),
      ),
      body: Center(
        child: Container(
          child: Text('This is Manish Maurya'),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
