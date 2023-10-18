import 'dart:convert';
import 'package:http/http.dart' as http;

class UniService {
  Future<List> getUniversities() async {
    var url = "http://universities.hipolabs.com/search?";
    try {
      var response = await http.get(Uri.parse(url), headers: {
        'Content-Type': 'application/json'
      }).timeout(const Duration(seconds: 5));

      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        // convert the data to a list of names of universities from the json
        return []; // return that list!!!!
      } else {
        //Bad status code
        return [];
      }
    } catch (e) {
      print("No internet / connection to api!");
      return [];
    }
  }
}
