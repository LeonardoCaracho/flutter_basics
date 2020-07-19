import 'package:http/http.dart' as http;

class Github {
  final String userName;
  final String url = 'https://api.github.com/';
  static String client_id = '6ce704499ef5e61540f6';
  static String client_secret = '6a702f4ea947c6a4bdc17cf5792e8fff59cf55c8';

  final String query = "?client_id=${client_id}&client_secret=${client_secret}";

  Github(this.userName);

  Future<http.Response> fetchUser() {
    return http.get(url + 'users/' + userName + query);
  }

  Future<http.Response> fetchFollowing() {
    return http.get(url + 'users/' + userName + '/following' + query);
  }
}
