```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Process jsonData
      print('Data fetched successfully'); // Provide feedback on success
    } else {
      // Handle non-200 status codes gracefully
      throw Exception('Failed to load data: ${response.statusCode} - ${response.body}'); // More info
    }
  } catch (e) {
    // Handle exceptions using more informative logging and error reporting
    print('An error occurred: $e');
    //  Consider logging to an error tracking service or displaying an error message to the user
    //  Do not rethrow unless the error needs to be handled by another layer
  }
}
```