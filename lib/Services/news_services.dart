import 'package:dio/dio.dart';
import 'package:news/models/news_model.dart';

class NewServices {
  final Dio dio;
  NewServices(this.dio);
  Future<List<ArticalsModel>> getGeneralNews({required String category}) async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=1366da28772a4b76a820f5cad94ddaf1&category=$category');
      Map<String, dynamic> jsondata = response.data;
      // print(jsondata["articles"]);
      List<dynamic> articals = jsondata["articles"];
      List<ArticalsModel> articallist = [];
      for (var artical in articals) {
        ArticalsModel articalsModel = ArticalsModel(
            image: artical['urlToImage'],
            title: artical['title'],
            subtitle: artical['description']);
        articallist.add(articalsModel);
      }
      return articallist;
    } catch (ex) {
      return [];
    }
  }
}
