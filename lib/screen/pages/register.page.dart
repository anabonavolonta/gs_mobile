import 'package:flutter/material.dart';
import 'package:mobile_global_solution/core/models/agricultores.dart';
import 'package:mobile_global_solution/core/services/api.service.dart';
import 'package:mobile_global_solution/screen/widgets/shared/button-dark.widget.dart';
import 'package:mobile_global_solution/screen/widgets/shared/input-light.widget.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  var apiService = ApiService();

  TextEditingController _nomeController = new TextEditingController();

  TextEditingController _idadeController = new TextEditingController();

  TextEditingController _cnpjController = new TextEditingController();

  TextEditingController _fazendaController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 223, 163, 94),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 223, 163, 94),
        elevation: 0.4,
        title: Text("Cadastrar"),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
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
              label: "Nome",
              keyboard: TextInputType.text,
              password: false,
              controller: this._nomeController,
              capitalization: TextCapitalization.none,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
              bottom: 10,
            ),
            child: BPInputLight(
              label: "Idade",
              keyboard: TextInputType.text,
              password: false,
              controller: this._idadeController,
              capitalization: TextCapitalization.none,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
              bottom: 10,
            ),
            child: BPInputLight(
              label: "CNPJ",
              keyboard: TextInputType.text,
              password: false,
              controller: this._cnpjController,
              capitalization: TextCapitalization.none,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
              bottom: 10,
            ),
            child: BPInputLight(
              label: "Fazenda",
              keyboard: TextInputType.text,
              password: false,
              controller: this._fazendaController,
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
              label: "Cadastrar",
              callback: register(),
            ),
          ),
        ],
      ),
    );
  }

  register() {
    var data = new Agricultores();

    if (this._nomeController.text != null || this._nomeController.text == "") {
      data.nome = this._nomeController.text;
    }

    if (this._idadeController.text != null ||
        this._idadeController.text == "") {
      data.idade = int?.tryParse(this._idadeController.text);
    }

    if (this._cnpjController.text != null || this._cnpjController.text == "") {
      data.cnpj = this._cnpjController.text;
    }

    if (this._fazendaController.text != null ||
        this._fazendaController.text == "") {
      data.fazenda = this._fazendaController.text;
    }

    this.apiService.postAgricultores(data);
  }
}
