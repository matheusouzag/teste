import 'package:clinica_leger/screens/conta.dart';
import 'package:clinica_leger/screens/login.dart';
import 'package:flutter/material.dart';

class SenhaPage extends StatefulWidget {
  const SenhaPage({Key? key}) : super(key: key);
  static String routeName = '/senha';

  @override
  State<SenhaPage> createState() => _SenhaPageState();
}

class _SenhaPageState extends State<SenhaPage> {

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        reverse: true,
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors
                  .grey[200], // Cor de fundo da parte de trás do Container
            ),
            Positioned(
              left: (MediaQuery.of(context).size.width - 260) /
                  2, // Posiciona o Container no centro horizontal
              top: (MediaQuery.of(context).size.height - 482) /
                  2, // Posiciona o Container no centro vertical
              child: Container(
                width: 260,
                height: 482,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.white, width: 2)),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0, bottom: 18.0),
                        child: Image.asset(
                          'images/logo-login.png',
                          width: 153,
                          height: 57,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 6.0),
                        child: Text(
                          'Esqueceu sua senha?',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 13,
                          ),
                        ),
                      ),
                        const Text(
                          'Sem problemas, iremos te enviar',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontSize: 10,
                          ),
                        ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 10.0),
                        child: Text(
                          'instruções pelo e-mail',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontSize: 10,
                          ),
                        ),

                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, bottom: 4),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Row(
                            children: const [
                              Text(
                                'Digite seu e-mail',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: TextFormField(
                            maxLines: 1,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              isCollapsed: true,
                              contentPadding: const EdgeInsets.only(top: 2, bottom: 2, left: 4),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(7),
                                borderSide: const BorderSide(
                                  color: Colors.grey,
                                  width: 1,
                                ),
                              ),
                              hintText: 'exemplo@email.com',
                              hintStyle: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 10,
                              ),
                              labelStyle: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 10,
                              ),
                              errorStyle: const TextStyle(
                                fontSize: 8,
                              ),
                            ),
                            style: const TextStyle(fontSize: 12),
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Digite um e-mail";
                              }
                              return null;
                            }
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                        child: SizedBox(
                          width: 220,
                          height: 24,
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                Navigator.of(context).pushAndRemoveUntil(
                                    MaterialPageRoute(
                                        builder: (context) => LoginPage()
                                    ),
                                        (Route<dynamic> route) => false
                                );
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7)),
                            ),
                            child: const Text(
                              'Enviar',
                              style: TextStyle(
                                fontSize: 11,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Não possui uma conta?', style: TextStyle(
                            color: Colors.grey,
                            fontSize: 11,
                          ),),
                          GestureDetector(
                            onTap: (){
                              Navigator.pushNamed(context, ContaPage.routeName);
                            },
                            child: const Text(' Criar', style: TextStyle(
                              color: Colors.amber,
                              fontSize: 11,
                            ),),

                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EsqueceuSenhaTexto extends StatelessWidget {
  final VoidCallback onPressed;

  const EsqueceuSenhaTexto({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: const Text(
        'Esqueceu a senha?',
        style: TextStyle(
          color: Colors.grey,
          fontSize: 8,
        ),
      ),
    );
  }
}

