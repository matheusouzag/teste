import 'package:clinica_leger/screens/conta.dart';
import 'package:clinica_leger/screens/senha.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  static String routeName = '/login';
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {


  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();

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
                          'Você deve entrar em uma conta',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 13.0),
                        child: Text(
                          'Escolha uma das opções',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontSize: 10,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18, right: 18),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            elevation: MaterialStateProperty.all<double>(0.0),
                            padding:
                                MaterialStateProperty.all<EdgeInsetsGeometry>(
                                    const EdgeInsets.symmetric(
                                        horizontal: 16.0, vertical: 10.0)),
                            shape:
                                MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                // Raio de borda do botão
                                side: const BorderSide(
                                    color: Colors.grey,
                                    width:
                                        1.0), // Cor e espessura da borda do botão
                              ),
                            ),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                'images/gmail.png',
                                width: 15,
                                height: 15,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                    left: 11.0, top: 3.0, bottom: 3.0),
                                child: Text(
                                  'Entrar com uma conta Google',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 11,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(18.0, 10.0, 18.0, 12.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            elevation: MaterialStateProperty.all<double>(0.0),
                            padding:
                                MaterialStateProperty.all<EdgeInsetsGeometry>(
                                    const EdgeInsets.symmetric(
                                        horizontal: 16.0, vertical: 10.0)),
                            shape:
                                MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                // Raio de borda do botão
                                side: const BorderSide(
                                    color: Colors.grey,
                                    width:
                                        1.0), // Cor e espessura da borda do botão
                              ),
                            ),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                'images/facebook.png',
                                width: 15,
                                height: 15,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                    left: 11.0, top: 3.0, bottom: 3.0),
                                child: Text(
                                  'Entrar com uma conta Facebook',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 11,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Expanded(
                            child: Divider(
                              color: Colors.grey, //color of divider
                              thickness: 2, //thickness of divier line
                              indent: 20, //spacing at the start of divider
                              endIndent: 6, //spacing at the end of divider
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 0),
                            child: Text(
                              "ou",
                              style: TextStyle(fontSize: 11, color: Colors.grey),
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              color: Colors.grey,
                              thickness: 2,
                              indent: 6,
                              endIndent: 20,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 9,),
                      const Padding(
                        padding: EdgeInsets.only(
                            left: 20, right: 20, bottom: 2),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'E-mail',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: TextFormField(
                            controller: _emailController,
                            maxLines: 1,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              isCollapsed: true,
                              isDense: true,
                              prefixIcon: SizedBox(child: (Icon(Icons.email_outlined,)),height: 5,),
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
                            validator: (email) {
                              if (email == null || email.isEmpty) {
                                return 'Campo incorreto';
                              }
                              return null;
                            },
                          ),
                        ),
                      const Padding(
                        padding: EdgeInsets.only(
                            top: 9, bottom: 4, left: 20, right: 20),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Senha',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: TextFormField(
                          controller: _senhaController,
                          maxLines: 1,
                          keyboardType: TextInputType.text,
                          obscureText: true,
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
                          style: const TextStyle(fontSize: 10),
                          validator: (senha) {
                            if (senha == null || senha.isEmpty) {
                              return 'Campo incorreto';
                            }
                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(right: 20, top: 3, bottom: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            EsqueceuSenhaTexto(
                              onPressed: () {
                                Navigator.pushNamed(context, SenhaPage.routeName);
                              },
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: SizedBox(
                          width: 220,
                          height: 24,
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()){
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7)),
                            ),
                            child: const Text(
                              'Entrar',
                              style: TextStyle(
                                fontSize: 11,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: SizedBox(
                          width: 220,
                          height: 24,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/register');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7),
                                  side: const BorderSide(
                                      color: Colors.grey, width: 1)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'Não possui uma conta?',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.grey,
                                  ),
                                ),
                                Text(
                                  ' Criar',
                                  style: TextStyle(
                                      fontSize: 11, color: Colors.amber),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
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


