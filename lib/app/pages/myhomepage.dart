import 'package:flutter/material.dart';
import 'package:untitled/app/controllers/my_home_controller.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final MyHomeController controller = MyHomeController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: ListView.builder(
          itemCount: controller.artigoList.length,
          itemBuilder: (context, index) {
          final model = controller.artigoList[index];
          return ListTile(
          title: Text(model.titulo),
          );
        },),
    ));
  }
}
