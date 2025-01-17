```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      if (jsonData.containsKey('someKey')) {
        print(jsonData['someKey']);
      } else {
        print('Error: someKey not found in JSON');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } on FormatException catch (e) {
    print('Error: Invalid JSON format: $e');
  } on NoSuchMethodError catch (e) {
    print('Error: someKey not found: $e');
  } catch (e) {
    print('General Error: $e');
  }
}
```