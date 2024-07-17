import 'dart:convert';
import 'package:http/http.dart' as http;

class OpenAI {
  final String apiKey =
      'your API key';
  final String baseurl = 'https://api.openai.com/v1/completions';

  Future<String> generateResponse(String inputone, inputtwo) async {
    final prompt = '$inputone $inputtwo';
    final url = Uri.parse(baseurl);
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $apiKey',
    };
    final body = jsonEncode({
      'model': 'gpt-3.5-turbo',
      'messages': [
        {'role': 'system', 'content': 'Create detailed description based on prompt.'},
        {'role': 'user', 'content': prompt},
      ],
      'max_tokens': 100,
    });
    try {
      final response = await http.post(url, headers: headers, body: body);
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return data['choices'][0]['message']['content'].trim();
      } else {
        print('Failed to generate response: ${response.body}');
        throw Exception('Failed to generate response: ${response.body}');
      }
    } catch (e) {
      print('Error: $e'); throw Exception('Error: $e');
    }
  }
}
