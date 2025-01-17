# Unhandled Exception in Async Dart Function

This repository demonstrates a common error in Dart asynchronous programming:  failure to handle exceptions that can occur when parsing JSON responses.  The `fetchData` function attempts to access a key ('someKey') that might not exist in the JSON response, resulting in an unhandled exception.

The solution improves error handling by explicitly checking for the existence of the key before accessing it and adding more specific error handling using `on` clauses.