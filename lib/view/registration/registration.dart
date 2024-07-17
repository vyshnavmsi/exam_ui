import 'package:flutter/material.dart';

class Registration extends StatelessWidget {
  const Registration({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailregistercontroller = TextEditingController();
    TextEditingController passregistercontroller = TextEditingController();
    TextEditingController conformpassregistercontroller =
        TextEditingController();
    final emailformkey = GlobalKey<FormState>();
    final passformkey = GlobalKey<FormState>();
    final confronpassformkey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "conform your password  ",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 25,
            ),
            Form(
              key: emailformkey,
              child: TextFormField(
                controller: emailregistercontroller,
                decoration: InputDecoration(
                  hintText: "email adress",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "enter a valid username";
                  } else if (value.contains("@")) {
                    return "enter valid email";
                  } else {
                    return null;
                  }
                },
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Form(
              key: passformkey,
              child: TextFormField(
                controller: passregistercontroller,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.remove_red_eye),
                  hintText: 'password',
                  hintStyle: TextStyle(),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                ),
                validator: (value) {
                  "";
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Form(
              key: confronpassformkey,
              child: TextFormField(
                controller: conformpassregistercontroller,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.remove_red_eye),
                  hintText: 'conform password',
                  hintStyle: TextStyle(),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                ),
                validator: (value) {
                  "";
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 40,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Center(
                  child: Text(
                    "sign up",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
