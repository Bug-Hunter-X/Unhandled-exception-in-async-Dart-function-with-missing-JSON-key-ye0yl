```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the data
      final jsonData = jsonDecode(response.body);
      print(jsonData['someKey']); //this will throw error if someKey is not present
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    print('Error: $e'); //this will catch the error but not the type
  }
}
```