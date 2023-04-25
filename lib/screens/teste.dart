import 'package:flutter/material.dart';

class teste extends StatelessWidget {
  const teste({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final _formKey = GlobalKey<FormState>();
    final _emailController = TextEditingController();
    final _senhaController = TextEditingController();

    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: TextFormField(

                maxLines: 1,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  isCollapsed: true,
                  isDense: true,
                  contentPadding: EdgeInsets.only(top: 2,bottom: 2,left: 20,right: 20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                      width: 1,
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    size: 2,
                    color: Colors.grey[400],
                  ),
                  labelText: 'Digite seu e-mail',
                  labelStyle: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 10,
                  ),
                ),
                style: const TextStyle(fontSize: 12),
                validator: (email) {
                  if (email == null || email.isEmpty) {
                    return 'Digite seu e-mail';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:10, left: 20, right: 20),
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
          ],
        ),
      ),
    );
  }
}
