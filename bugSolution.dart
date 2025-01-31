```dart
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<dynamic> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load data: ${response.statusCode} ${response.reasonPhrase}');
    }
  } on SocketException {
    throw Exception('No internet connection');
  } on FormatException {
    throw Exception('Invalid JSON response');
  } catch (e) {
    throw Exception('An unexpected error occurred: $e');
  }
}
```