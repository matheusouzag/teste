import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 25.0, bottom: 18.0),
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
                      padding: EdgeInsets.fromLTRB(18.0, 10.0, 18.0, 12.0),
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
                    const Padding(
                      padding: EdgeInsets.only(
                          left: 20, right: 20, top: 9, bottom: 4),
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
                      padding: const EdgeInsets.only(left: 20.0, right: 20),
                      child: Container(
                        height: 19,
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(7),
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 1)),
                            prefixIcon: Icon(
                              Icons.email_outlined,
                              size: 12,
                              color: Colors.grey[400],
                            ),
                            labelText: 'exemplo@email.com',
                            labelStyle: TextStyle(
                              color: Colors.grey[400],
                              fontSize: 10,
                            ),
                          ),
                          style: TextStyle(fontSize: 12),
                        ),
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
                      padding: const EdgeInsets.only(left: 20.0, right: 20),
                      child: Container(
                        height: 19,
                        child: TextField(
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(7),
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 1)),
                            prefixIcon: Icon(
                              Icons.lock_outline,
                              size: 12,
                              color: Colors.grey[400],
                            ),
                            labelText: 'Digite sua senha',
                            labelStyle: TextStyle(
                              color: Colors.grey[400],
                              fontSize: 10,
                            ),
                          ),
                          style: TextStyle(fontSize: 11),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 20, top: 3, bottom: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          EsqueceuSenhaTexto(
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Container(
                        width: 220,
                        height: 24,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black,
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
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Container(
                        width: 220,
                        height: 24,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7),
                                side: const BorderSide(
                                    color: Colors.grey, width: 1)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
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
          ],
        ),
      ),
    );
  }
}

class EsqueceuSenhaTexto extends StatelessWidget {
  final VoidCallback onPressed;

  EsqueceuSenhaTexto({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Text(
        'Esqueceu a senha?',
        style: TextStyle(
          color: Colors.grey,
          fontSize: 8,
        ),
      ),
    );
  }
}
