import '../models/artigo_model.dart';

class MyHomeController {
  List<ArtigoModel> artigoList = [];

  MyHomeController() {
  final list = List.generate(10, (index) => ArtigoModel('Título $index', 'Autor $index'));
  artigoList = list;
  }

}