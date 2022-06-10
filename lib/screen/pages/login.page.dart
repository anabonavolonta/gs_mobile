import 'package:flutter/material.dart';
import 'package:mobile_global_solution/screen/pages/register.page.dart';
import 'package:mobile_global_solution/screen/widgets/shared/button-dark.widget.dart';
import 'package:mobile_global_solution/screen/widgets/shared/button-light.widget.dart';
import 'package:mobile_global_solution/screen/widgets/shared/input-light.widget.dart';

import 'main.page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 223, 163, 94),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 223, 163, 94),
        elevation: 0.4,
        title: Text(
          "MIAUmirtex",
          style: TextStyle(fontSize: 30, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Center(
            child: Image.network(
                'https://cdn3d.iconscout.com/3d/premium/thumb/dog-4769116-3972389.png'),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
              bottom: 10,
            ),
            child: BPInputLight(
              label: "E-mail",
              keyboard: TextInputType.emailAddress,
              password: false,
              capitalization: TextCapitalization.none,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
              bottom: 30,
            ),
            child: BPInputLight(
              label: "Senha",
              keyboard: TextInputType.text,
              password: true,
              capitalization: TextCapitalization.none,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
              bottom: 10,
            ),
            child: BPButtonDark(
              label: "Entrar",
              callback: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MainPage(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
