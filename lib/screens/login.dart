import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color:
                Colors.grey[200], // Cor de fundo da parte de trás do Container
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
                  Padding(
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
                  Padding(
                    padding: EdgeInsets.only(bottom: 23.0),
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
                                  EdgeInsets.symmetric(
                                      horizontal: 16.0, vertical: 10.0)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              // Raio de borda do botão
                              side: BorderSide(
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
                            Padding(
                              padding: EdgeInsets.only(left: 11.0, top: 3.0, bottom: 3.0),
                              child: Text('Entrar com uma conta Google', style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 11,
                              ),),
                            )
                          ],
                        ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(18.0, 16.0, 18.0, 21.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                        elevation: MaterialStateProperty.all<double>(0.0),
                        padding:
                        MaterialStateProperty.all<EdgeInsetsGeometry>(
                            EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 10.0)),
                        shape:
                        MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            // Raio de borda do botão
                            side: BorderSide(
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
                          Padding(
                            padding: EdgeInsets.only(left: 11.0, top: 3.0, bottom: 3.0),
                            child: Text('Entrar com uma conta Facebook', style: TextStyle(
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
