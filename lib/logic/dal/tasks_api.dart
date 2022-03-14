import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:grouped_tasks/grouped_tasks.dart';

const apiUrl =
    'https://gist.githubusercontent.com/najibghadri/3b648f2f35d3be5e856132a39a94d714/raw/bb0dd2fe1a3dca1da7847a07adf08985995e3822/lodgify_api_corrected.json';

class TasksApi {
  static Future<GroupedTasksList> getTasks() async {
    final res = await http.get(Uri.parse(apiUrl));
    return GroupedTasksList.fromJson(json.decode(res.body));
  }
}
