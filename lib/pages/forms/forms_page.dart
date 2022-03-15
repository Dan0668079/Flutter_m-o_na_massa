import 'package:flutter/material.dart';

class FormsPage extends StatefulWidget {
  const FormsPage({Key? key}) : super(key: key);

  @override
  State<FormsPage> createState() => _FormsPageState();
}

class _FormsPageState extends State<FormsPage> {
  // String texto = "";
  final formKey = GlobalKey<FormState>();
  final nameEC = TextEditingController();
  String categoria = 'Categoria1';

  @override
  void dispose() {
    nameEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forms Page'),
      ),
      body: SingleChildScrollView(
        child: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  // TextField(
                  //   onChanged: (String value) {
                  //     setState(() {
                  //       texto = value;
                  //     });
                  //   },
                  // ),
                  // const SizedBox(height: 10,),
                  // Text('Texto digitado $texto'),
                  TextFormField(
                    controller: nameEC,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    maxLines: null, //vai fazendo quebra de linhas
                    decoration: InputDecoration(
                        labelText: 'Nome Completo',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(color: Colors.green)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(color: Colors.black)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide:
                                const BorderSide(color: Colors.deepOrange)),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(color: Colors.pink)),
                        labelStyle: const TextStyle(
                            fontSize: 20, color: Colors.deepPurple),
                        isDense: true),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Campo X não preenchido';
                      }
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: nameEC,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(
                      labelText: 'Senha',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(color: Colors.green)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(color: Colors.black)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              const BorderSide(color: Colors.deepOrange)),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(color: Colors.pink)),
                      labelStyle: const TextStyle(
                          fontSize: 20, color: Colors.deepPurple),
                      isDense: true,
                    ),
                    obscureText: true,
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Campo X não preenchido';
                      }
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  DropdownButtonFormField<String>(
                      value: categoria,
                      elevation: 5,
                      icon: const Icon(Icons.arrow_back_ios_outlined),
                      decoration: InputDecoration(
                        labelText: 'Categoria',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(color: Colors.green)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(color: Colors.black)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide:
                                const BorderSide(color: Colors.deepOrange)),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(color: Colors.pink)),
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Categoria não preenchida';
                        }
                      },
                      onChanged: (String? newValue) {
                        if (newValue != null) {
                          setState(() {
                            categoria = newValue;
                          });
                        }
                      },
                      items: const [
                        DropdownMenuItem(
                          value: 'Categoria1',
                          child: Text('Categoria 1'),
                        ),
                        DropdownMenuItem(
                          value: 'Categoria2',
                          child: Text('Categoria 2'),
                        ),
                        DropdownMenuItem(
                          value: 'Categoria3',
                          child: Text('Categoria 3'),
                        ),
                      ]),
                  ElevatedButton(
                    onPressed: () {
                      var formValid = formKey.currentState?.validate() ?? false;
                      var message = 'Formulário Inválido';
                      if (formValid) {
                        message = 'Formulário Válido(Name : ${nameEC.text})';
                      }
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(message),
                        ),
                      );
                    },
                    child: const Text('Salvar'),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
