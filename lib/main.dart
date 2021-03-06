import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/homepage.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var email = prefs.getString('email');
  print(email);
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: email == null ? LoginPage() : HomePage(),
    ),
  );
}

class LoginPage extends StatelessWidget {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => Scaffold(
        body: Form(
          key: formkey,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: 150),
                  child: Text(
                    'Sign in',
                    style: GoogleFonts.crimsonPro(
                      fontWeight: FontWeight.w500,
                      fontSize: 35,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 30,
                    right: 30,
                    bottom: 20,
                    top: 30,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Username',
                    ),
                    validator: (value) {
                      if (value == "") {
                        return "Username reqiured";
                      } else if (value != "f") {
                        return "Incorrect username!!";
                      }
                      //fasil
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 30,
                    right: 30,
                  ),
                  child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                      ),
                      validator: (value) {
                        if (value == "") {
                          return "Password reqiured";
                        } else if (value != "1") {
                          return "Incorrect Password!!";
                        }
                        //123456
                      }),
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 150,
                    right: 150,
                    top: 20,
                    bottom: 15,
                  ),
                  child: ElevatedButton(
                    child: Text(
                      "Log in",
                      style: GoogleFonts.saira(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                    onPressed: () async {
                      if (formkey.currentState!.validate()) {
                        SharedPreferences prefs =
                            await SharedPreferences.getInstance();
                        prefs.setString('email', 'username');
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext ctx) => HomePage(),
                          ),
                        );
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
