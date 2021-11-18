import 'package:flutter/material.dart';
import 'package:medicalcase/core/components/customtextfield.dart';
import 'package:medicalcase/view/authenticate/login/login.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 17.0),
                        child: Material(
                          borderRadius: BorderRadius.circular(75.0),
                          elevation: 5.0,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 60.0,
                            child: Image.asset(
                              'assets/images/medicalicon.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 30.0, top: 15.0),
                      child: Text(
                        'Kayıt Ol',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12.0),
                          child: OutlinedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 10.0),
                              ),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    30.0,
                                  ),
                                ),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 2.0, horizontal: 5.0),
                                  child: Text(
                                    'Organizatör Olarak',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 2.0, horizontal: 5.0),
                                  child: Text(
                                    'Kayıt Ol',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 10.0),
                            ),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  30.0,
                                ),
                              ),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 2.0, horizontal: 18.0),
                                child: Text(
                                  'Eğitmen Olarak',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 2.0, horizontal: 5.0),
                                child: Text(
                                  'Kayıt Ol',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const CustomTextField(hintText: 'Adınız ve Soyadınız'),
                    const CustomTextField(hintText: 'E-posta Adresiniz'),
                    const CustomTextField(hintText: 'Şifreniz'),
                    const CustomTextField(hintText: 'Şifrenizi Onaylayın'),
                    const CustomTextField(
                        hintText: 'İlgi alanlarınızı virgül ile sıralayınız'),
                    MaterialButton(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Kayıt Ol',
                        style: TextStyle(color: Colors.white, fontSize: 15.0),
                      ),
                      color: Colors.blue,
                      minWidth: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 14,
                    ),
                    Row(
                      children: [
                        const Text(
                          'Zaten üye misiniz?',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()));
                          },
                          child: const Text(
                            'Giriş Yap',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
