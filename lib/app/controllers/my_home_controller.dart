import 'package:untitled/app/mappers/artigo_mapper.dart';
import 'package:untitled/app/repositories/repository.dart';

import '../models/artigo_model.dart';

class MyHomeController {
  final repository = Repository();
  final mapper = ArtigoMapper();
  List<ArtigoModel> artigoList = [];

  Future<List<ArtigoModel>> initData() async {
    final list = await repository.getData();
    final artigoList = mapper.convert(list);
    return artigoList;
  }
}