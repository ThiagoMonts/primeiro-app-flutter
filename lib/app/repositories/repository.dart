import 'package:uno/uno.dart';

class Repository {
  final httpService = Uno();

  Future<List> getData() async {
    final result = await httpService.get('https://www.intoxianime.com/?rest_route=/wp/v2/posts&page=1&per_page=50');
    if(result.status == 200) {
      final resultData = result.data as List;
      return resultData;
    }
    return [];
  }
}