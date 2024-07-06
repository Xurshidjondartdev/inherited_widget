import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  // AppRepositoryImpl appRepositoryImpl = AppRepositoryImpl();
  // LoginUser? loginUser;

  Future<void> loginUserFunction() async {
    // loginUser = await appRepositoryImpl.loginUser(email: emailController.text, password: passwordController.text);

    // if(loginUser != null){
    //   await AppStorage.store(key: StorageKey.accessToken, value: loginUser!.token ?? "");
    //   await AppStorage.store(key: StorageKey.refreshToken, value: loginUser!.refreshToken ?? "");
    //   log(loginUser!.token.toString());
    //   log(loginUser!.refreshToken.toString());
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: "Email"),
              controller: emailController,
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: "Password"),
              controller: passwordController,
            ),
            const SizedBox(
              height: 20,
            ),
            MaterialButton(
              color: Colors.blue,
              shape: const StadiumBorder(),
              onPressed: () async {
                await loginUserFunction();
              },
              child: const Text("Login"),
            )
          ],
        ),
      ),
    );
  }
}
