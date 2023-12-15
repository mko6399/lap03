import 'package:flutter/material.dart';

class FirstPag extends StatefulWidget {
  const FirstPag({super.key});

  @override
  State<FirstPag> createState() => __FirstPagStateState();
}

class __FirstPagStateState extends State<FirstPag> {
  final _loginFormKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Matawee"),
        backgroundColor: Color.fromARGB(255, 230, 224, 198),
      ),
      body: Form(
        key: _loginFormKey,
        child: Column(
          children: [
            Text(
              "Login",
              style: TextStyle(fontSize: 50),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter your username.";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: "Username",
                  prefixIcon: Icon(Icons.person),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.green)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),

                //ส่วนประกอบแท็กตอนนี้ที่สามารถใช้ได้
                // obscureText: true,  ตั้งสำหรับบังคับซ่อนรหัสผ่าน
                controller: _usernameController,
                // keyboardType: TextInputType.phone,  คือการบังคับให้เด้งมาแค่คีบอร์ดตัวเลขโทรศัพท์
                // onChanged: (value) {
                //   //คือการเก็บค่าสำหรับโชว์ในเบาร์เซอร์
                //   setState(() {
                //     _usernameController.text = value;
                //   });
                // },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter your password.";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: "Password",
                  prefixIcon: Icon(Icons.lock),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.green)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),

                //ส่วนประกอบแท็กตอนนี้ที่สามารถใช้ได้
                obscureText: true, //ตั้งสำหรับบังคับซ่อนรหัสผ่าน
                controller: _passwordController,
                // keyboardType: TextInputType.phone,  คือการบังคับให้เด้งมาแค่คีบอร์ดตัวเลขโทรศัพท์
                // onChanged: (value) {
                //   //คือการเก็บค่าสำหรับโชว์ในเบาร์เซอร์
                //   setState(() {
                //     _usernameController.text = value;
                //   });
                // },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (_loginFormKey.currentState!.validate()) {
                  print("successfull");
                }
              },
              child: const Text("Login"),
            ),
            Text(_passwordController.text)
          ],
        ),
      ),
    );
  }
}
