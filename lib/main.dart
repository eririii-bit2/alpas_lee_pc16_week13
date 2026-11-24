import 'package:material_ui/material_ui.dart';

void main() {
  runApp(const Week13App());
}

class Week13App extends StatelessWidget {
  const Week13App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Week 13 Static Screen',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
      ),
      home: const LoginWireframeScreen(),
    );
  }
}

class LoginWireframeScreen extends StatelessWidget {
  const LoginWireframeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 62, 62, 62),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 32, 32, 32),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Login',
          style: TextStyle(
            color: Colors.white70,
            fontSize: 16,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Branding Section
              const SizedBox(height: 16),
              Container(
                width: 170,
                height: 170,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color.fromARGB(255, 32, 32, 32),
                  border: Border.all(color: Color.fromARGB(255, 222, 222, 222), width: 1.5),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Miu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 36),

              // Sign Up Prompt Row
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Don't have an account, ",
                    style: TextStyle(color: Colors.white70, fontSize: 13),
                  ),
                  Text(
                    'Sign Up?',
                    style: TextStyle(
                      color: Color(0xFF007AFF),
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),

              // Outlined Login Form Container
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24.0,
                  vertical: 24.0,
                ),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 32, 32, 32),
                  border: Border.all(color: Color.fromARGB(255, 222, 222, 222), width: 1.2),
                ),
                child: Column(
                  children: [
                    // Username Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          width: 85,
                          child: Text(
                            'Username:',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          width: 130,
                          height: 18,
                          color: const Color(0xFFD9D9D9),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),

                    // Password Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          width: 85,
                          child: Text(
                            'Password:',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          width: 130,
                          height: 18,
                          color: const Color(0xFFD9D9D9),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),

                    // Static Login Button Box
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 36,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color.fromARGB(255, 222, 222, 222), width: 1.2),
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(color: Color.fromARGB(255, 222, 222, 222), fontSize: 14),
                      ),
                    ),
                    const SizedBox(height: 14),

                    // Forget Password Text
                    const Text(
                      'Forget Password?',
                      style: TextStyle(
                        color: Color(0xFF007AFF),
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}