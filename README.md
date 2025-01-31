# Unhandled Network Exception in Dart `http.get`

This example showcases a common issue in Dart applications when performing network operations using the `http` package. The code fetches data from a remote API, but it lacks robust error handling, particularly for network exceptions.

The `bug.dart` file demonstrates the flawed code, while `bugSolution.dart` provides a corrected version with improved exception handling.

The original code only handles HTTP errors (status codes other than 200).  It fails to catch exceptions that might occur during the network request itself (e.g., `SocketException` if there's no network connectivity).  This could lead to the application crashing or behaving unexpectedly.

The solution improves error handling by using a `try-catch` block to catch potential exceptions.  It also includes more informative error messages and re-throws the exception, allowing for handling at a higher level in the application.