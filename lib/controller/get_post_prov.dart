import 'dart:convert';
import 'package:http/http.dart';
import '../model/get_post_modelprov.dart';

class GetPostProv {
  final String getposturl = "https://api.kawalcorona.com/indonesia/provinsi";

  //Mengambil Data
  Future<List<Post>> manggilPostData() async {
    Response res = await get(getposturl);
    //mengubah json ke string
    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      //data di tampung ke dalam list di model post dan dirubah ke format json
      List<Post> postData =
          body.map((dynamic item) => Post.fromJson(item)).toList();
      return postData;
    } else {
      throw "Data Tidak Ada";
    }
  }
}
