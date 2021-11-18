import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:medicalcase/core/components/customtextfield.dart';
import 'package:medicalcase/view/authenticate/homepage/homepageforusers.dart';
import 'package:medicalcase/view/authenticate/register/register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                            radius: 75.0,
                            child: Image.asset(
                              'assets/images/medicalicon.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 15.0),
                      child: Text(
                        'Giriş Yap',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    const CustomTextField(hintText: 'Eposta Adresiniz'),
                    const CustomTextField(hintText: 'Sifreniz'),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: MaterialButton(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Home()));
                        },
                        child: const Text(
                          'Giriş Yap',
                          style: TextStyle(color: Colors.white, fontSize: 15.0),
                        ),
                        color: Colors.blue,
                        minWidth: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 14,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Şifreni mi unuttun?',
                        style: TextStyle(color: Colors.black, fontSize: 15.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 8.0,
                        left: 8.0,
                        top: 140.0,
                      ),
                      child: Row(
                        children: [
                          const Text(
                            'Üyemiz değil misin?',
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
                                      builder: (context) => RegisterPage()));
                            },
                            child: const Text(
                              'Kayıt Ol',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 15.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
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
