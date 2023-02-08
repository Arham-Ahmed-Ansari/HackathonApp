import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project7/utils/functions_constant.dart';
import '../utils/images_constant.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  FirebaseAuth _auth = FirebaseAuth.instance;

  registerUser() async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text.toString(),
        password: passwordController.text.toString(),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 24, left: 24),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey.withOpacity(0.3)),
                    child: Icon(
                      Icons.arrow_back,
                      color: Color(0xff004A61),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 24, left: 24),
                    child: Image(image: AssetImage(Images.loginLogo)),
                  ),
                  customFunctions.customText(EdgeInsets.only(top: 24, left: 10),
                      "PLANTIFY", FontWeight.w700, 20.0, Color(0xff002140))
                ],
              ),
              customFunctions.customText(
                  const EdgeInsets.only(top: 19, left: 24),
                  "Signup",
                  FontWeight.w700,
                  36.0,
                  Color(0xff0D986A)),
              customFunctions.customText(
                  const EdgeInsets.only(top: 15, left: 24),
                  "Masukan No. Handphone Anda dan tunggu kode autentik dikirimkan",
                  FontWeight.w400,
                  14.0,
                  Color(0xff0D986A)),
              customFunctions.customText(
                  const EdgeInsets.only(top: 47, left: 24),
                  "Username/ Email",
                  FontWeight.w500,
                  16.0,
                  Color(0xff004A61)),
              Form(
                  key: _formKey,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24, vertical: 10),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            controller: emailController,
                            decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.person,
                                  color: Color(0xff004A61),
                                ),
                                hintText: "Masukkan Password",
                                hintStyle: GoogleFonts.philosopher(
                                    fontSize: 18, color: Color(0xff181725)),
                                border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xffE2E2E2)),
                                )),
                          ),
                        ),
                        customFunctions.customText(
                            const EdgeInsets.only(top: 30, left: 24),
                            "Password",
                            FontWeight.w500,
                            16.0,
                            Color(0xff004A61)),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24, vertical: 10),
                          child: TextFormField(
                            obscureText: true,
                            keyboardType: TextInputType.emailAddress,
                            controller: passwordController,
                            decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.person,
                                  color: Color(0xff004A61),
                                ),
                                hintText: "Masukkan Password",
                                hintStyle: GoogleFonts.philosopher(
                                    fontSize: 18, color: Color(0xff181725)),
                                border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xffE2E2E2)),
                                )),
                          ),
                        ),
                        customFunctions.customText(
                            const EdgeInsets.only(top: 17, left: 255),
                            "Forget Password?",
                            FontWeight.w500,
                            16.0,
                            Color(0xff004A61)),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 35, left: 25, right: 25),
                          child: SizedBox(
                              width: 340,
                              height: 60,
                              child: ElevatedButton(
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      registerUser();
                                    }
                                  },
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Color(0xff53B175)),
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20)))),
                                  child: Text("SignUp",
                                      style: GoogleFonts.philosopher(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 18,
                                      )))),
                        ),
                      ])),
            ],
          ),
        ),
      ),
    );
  }
}
