import 'package:flutter/material.dart';
import 'package:untitled/app/controllers/my_home_controller.dart';
import 'package:untitled/app/models/artigo_model.dart';

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

        child: FutureBuilder<List<ArtigoModel>>(
          future: controller.initData(),
          builder: (context, snapshot) {

            if(!snapshot.hasData) {
              return CircularProgressIndicator();
            }
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
              final model = snapshot.data![index];
              return ListTile(
              title: Text(model.titulo),
              );
            },);
          }
        ),
    ));
  }
}
