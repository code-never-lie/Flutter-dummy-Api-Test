import 'package:app/Post.dart';
import 'package:http/http.dart' as http;

class RemortServices {
  Future<List<Post>?> getpost() async {
    var client = http.Client();
    var uri = Uri.parse("https://62973edf8d77ad6f75fe0b83.mockapi.io/students");
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return postFromJson(json);
    }
    return null;
  }
}
