import 'package:clinica_leger/screens/login.dart';
import 'package:flutter/material.dart';

class ContaPage extends StatefulWidget {
  const ContaPage({Key? key}) : super(key: key);
  static String routeName = '/register';

  @override
  State<ContaPage> createState() => _ContaPageState();
}

class _ContaPageState extends State<ContaPage> {
  final _formKey = GlobalKey<FormState>();
  late String password;
  double forca = 0;
  bool isObscure = true;

  String text = "Digite uma senha";
  
  RegExp numReg = RegExp(r".*[0-9].*");
  RegExp letterReg = RegExp(r".*[A-Za-z].*");

  void checkPassword(String value){

    password = value.trim();

    if (password.isEmpty) {
      setState(() {
        forca = 0;
        text = "Por favor, digite uma senha";
      });
    } else if (password.length < 6){
      setState(() {
        forca = 1 / 4;
        text = "Senha fraca";
      });
    }
    else if (password.length < 8){
      setState(() {
        forca = 2 / 4;
        text = "Senha moderada";
      });
    } else {
      if (!letterReg.hasMatch(password) || !numReg.hasMatch(password)) {
        setState(() {
          forca = 3 / 4;
          text = "Sua senha é forte";
        });
      } else {
        setState(() {
          forca = 1;
          text = "Sua senha é ótima";
        });
      }
    }
    
  }


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
                          'Crie sua conta',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 10.0),
                        child: Text(
                          'Preencha com seus dados',
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
                                'E-mail',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 1),
                              // Espaçamento opcional entre o asterisco e o texto
                              Text(
                                '*',
                                style: TextStyle(
                                  color: Colors.red, // Cor do asterisco
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
                              contentPadding: const EdgeInsets.only(
                                  top: 2, bottom: 2, left: 4),
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
                            }),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, top: 9, bottom: 4),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Row(
                            children: const [
                              Text(
                                'Seu nome',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 1),
                              // Espaçamento opcional entre o asterisco e o texto
                              Text(
                                '*',
                                style: TextStyle(
                                  color: Colors.red, // Cor do asterisco
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
                            contentPadding: const EdgeInsets.only(
                                top: 2, bottom: 2, left: 4),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                              borderSide: const BorderSide(
                                color: Colors.grey,
                                width: 1,
                              ),
                            ),
                            hintText: 'Digite seu nome',
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
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Digite um nome";
                            }
                            return null;
                          },
                          style: const TextStyle(fontSize: 12),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, top: 9, bottom: 4),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Row(
                            children: const [
                              Text(
                                'Número de Celular',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 1),
                              // Espaçamento opcional entre o asterisco e o texto
                              Text(
                                '*',
                                style: TextStyle(
                                  color: Colors.red, // Cor do asterisco
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
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            isCollapsed: true,
                            contentPadding: const EdgeInsets.only(
                                top: 2, bottom: 2, left: 4),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                              borderSide: const BorderSide(
                                color: Colors.grey,
                                width: 1,
                              ),
                            ),
                            hintText: 'Digite seu número de contato',
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
                              return "Digite um número válido";
                            }
                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 9, bottom: 4, left: 20, right: 20),

                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Row(
                            children: const [
                              Text(
                                'Senha',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 1),
                              Text(
                                '*',
                                style: TextStyle(
                                  color: Colors.red, // Cor do asterisco
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
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          decoration: InputDecoration(
                            isCollapsed: true,
                            contentPadding: const EdgeInsets.only(
                                top: 2, bottom: 2, left: 4),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                              borderSide: const BorderSide(
                                color: Colors.grey,
                                width: 1,
                              ),
                            ),
                            hintText: 'Digite sua senha',
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
                          onChanged: (val) => checkPassword(val),
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Digite uma senha";
                            }
                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(text, style: TextStyle(fontSize: 8, color: Colors.red),),
                            LinearProgressIndicator(
                              value: forca,
                              backgroundColor: Colors.grey,
                              color: Colors.red,
                            ),
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(
                            top: 9, bottom: 4, left: 20, right: 20),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Row(
                            children: const [
                              Text(
                                'Confirme sua senha',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 1),
                              Text(
                                '*',
                                style: TextStyle(
                                  color: Colors.red, // Cor do asterisco
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
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          decoration: InputDecoration(
                            isCollapsed: true,
                            contentPadding: const EdgeInsets.only(
                                top: 2, bottom: 2, left: 4),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                              borderSide: const BorderSide(
                                color: Colors.grey,
                                width: 1,
                              ),
                            ),
                            hintText: 'Digite sua senha',
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
                              return "Digite uma senha";
                            }
                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 20),
                        child: SizedBox(
                          width: 220,
                          height: 24,
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                Navigator.of(context).pushAndRemoveUntil(
                                    MaterialPageRoute(
                                        builder: (context) => LoginPage()),
                                    (Route<dynamic> route) => false);
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7)),
                            ),
                            child: const Text(
                              'Criar',
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
                          const Text(
                            'Já possui uma conta?',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 11,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, LoginPage.routeName);
                            },
                            child: const Text(
                              ' Entrar',
                              style: TextStyle(
                                color: Colors.amber,
                                fontSize: 11,
                              ),
                            ),
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
