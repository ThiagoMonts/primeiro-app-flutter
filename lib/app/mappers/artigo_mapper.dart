import '../models/artigo_model.dart';

class ArtigoMapper {
  List<ArtigoModel> convert(List resultList) {
    final artigoList = resultList.map((e) => ArtigoModel(e['title']?['rendered'], e['excerpt']['rendered'])).toList();
    return artigoList;
  }
}
