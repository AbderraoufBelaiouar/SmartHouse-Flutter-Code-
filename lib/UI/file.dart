// Future<void> _loginUser(String email, String password) async {
//   final Uri loginUrl = Uri.parse(
//       'http://your-backend-server.com/login'); // Replace with your actual URL
//   final response = await http.post(loginUrl,
//       headers: {'Content-Type': 'application/json'},
//       body: jsonEncode({'email': email, 'password': password}));

//   if (response.statusCode == 200) {
//     // Handle successful login (e.g., navigate to a home screen)
//     final data = jsonDecode(response.body);
//     // Process login data (e.g., JWT token) if applicable
//     print('Login successful!');
//   } else {
//     setState(() {
//       _errorMessage = 'Invalid email or password: ${response.body}';
//     });
//   }
// }
