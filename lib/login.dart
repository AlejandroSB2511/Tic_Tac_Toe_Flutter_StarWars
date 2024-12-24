
import 'package:flutter/material.dart';


class Login extends StatefulWidget {
  const Login({super.key});


  @override
  State<Login> createState() => _LoginState();
}


class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  Color color = Color(0xFFFFE81F);
  final TextEditingController _textController = TextEditingController();
  final TextEditingController _textController2 = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(height: 50,),
                Image.asset("assets/images/logo.png"),
                Form(
                  key: _formKey,
                    child:
                Column(
                  children: [
                    Container(
                      width: 350,
                      child: TextFormField(
                          controller: _textController,
                          decoration: InputDecoration(
                              labelText: "Usuario",hintText: "Usuario"),
                          validator: (value) {
                            if(value == null || value.isEmpty) {
                              return "Este campo no puede estar vacio";
                            }
                            if(value[0] == value[0].toUpperCase()) {
                              return "Introduce un correo válido";
                            }
                            if (!value.endsWith("@gmail.com")) {
                              return "Introduce un correo válido";
                            }
                            return null;
                          }
                      ),
                    ),

                    Container(
                      width: 350,
                      child: TextFormField(
                          controller: _textController2,
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          decoration: InputDecoration(
                              labelText: "Contraseña",hintText: "Contraseña",),
                          validator: (value) {
                            if(value == null || value.isEmpty) {
                              return "Este campo no puede estar vacio";
                            }
                            if(value.length < 3) {
                              return "El password debe tener mas de tres digitos";
                            }
                            if(value.length > 8) {
                              return "Máximo 8 digitos";
                            }
                            return null;
                          }
                      ),
                    ),
                    Container(
                      height: 20,
                    ),
                    Container(
                        color: color,
                        child: TextButton(onPressed: () {
                          if(_formKey.currentState!.validate()) {
                            Navigator.pushNamed(context, "/seleccion_personaje");
                          }
                        }, child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset("assets/images/death_star.png",width: 40,height: 50,),
                            Container(width: 10,),
                            Text("Feel the force!!!"),
                          ],
                        ))
                    )
                  ],
                ))
              ],
            )
          )
      ),
    );
  }
}
