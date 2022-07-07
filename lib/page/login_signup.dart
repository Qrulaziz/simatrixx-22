import 'package:another_flushbar/flushbar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:simatrixx_22/config/palette.dart';
import 'package:simatrixx_22/page/home.dart';

class LoginSignupScreen extends StatefulWidget {
  const LoginSignupScreen({Key? key}) : super(key: key);

  @override
  State<LoginSignupScreen> createState() => _LoginSignupScreenState();
}

class _LoginSignupScreenState extends State<LoginSignupScreen> {
  final TextEditingController _usernameTextController = TextEditingController();
  final TextEditingController _passwordLoginTextController =
      TextEditingController();
  final TextEditingController _emailLoginTextController =
      TextEditingController();
  final TextEditingController _passwordSignupTextController =
      TextEditingController();
  final TextEditingController _emailSignupTextController =
      TextEditingController();
  bool isMale = true;
  bool isSignupScreen = true;
  bool isRememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/backend.jpg"), fit: BoxFit.fill),
              ),
              child: Container(
                padding: const EdgeInsets.only(top: 90, left: 20),
                color: const Color(0x0ff3b599).withOpacity(.85),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: "Selamat Datang ",
                        style: TextStyle(
                          fontSize: 25,
                          letterSpacing: 2,
                          color: Colors.blue[700],
                        ),
                        children: [
                          TextSpan(
                            text: isSignupScreen ? "di Simatrixx," : "kembali,",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue[700],
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      isSignupScreen
                          ? "Signup untuk melanjutkan"
                          : "Signin untuk melanjutkan",
                      style: const TextStyle(
                        letterSpacing: 2,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          buildBottomHalfContainer(true),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 400),
            curve: Curves.bounceInOut,
            top: isSignupScreen ? 200 : 230,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 400),
              curve: Curves.bounceInOut,
              height: isSignupScreen ? 380 : 320,
              padding: const EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width - 40,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 15,
                      spreadRadius: 5),
                ],
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isSignupScreen = false;
                            });
                          },
                          child: Column(
                            children: [
                              Text(
                                "LOGIN",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: isSignupScreen
                                        ? Palette.textColor1
                                        : Palette.activeColor),
                              ),
                              if (!isSignupScreen)
                                Container(
                                  margin: const EdgeInsets.only(top: 3),
                                  height: 2,
                                  width: 55,
                                  color: Colors.orange,
                                ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isSignupScreen = true;
                            });
                          },
                          child: Column(
                            children: [
                              Text(
                                "SIGNUP",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: isSignupScreen
                                        ? Palette.activeColor
                                        : Palette.textColor1),
                              ),
                              if (isSignupScreen)
                                Container(
                                  margin: const EdgeInsets.only(top: 3),
                                  height: 2,
                                  width: 55,
                                  color: Colors.orange,
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    if (isSignupScreen) buildSignupSection(),
                    if (!isSignupScreen) buildSigninSection(),
                  ],
                ),
              ),
            ),
          ),
          buildBottomHalfContainer(false),
          Positioned(
            top: MediaQuery.of(context).size.height - 100,
            right: 0,
            left: 0,
            child: Column(
              children: [
                Text(
                    isSignupScreen ? "Atau Masuk dengan" : "Atau Masuk dengan"),
                Container(
                  margin: const EdgeInsets.only(right: 20, left: 20, top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildTextButton(
                        Icons.wifi_off_outlined,
                        "Mode Offline",
                        Colors.red,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void showTopNotif(BuildContext context) {
    Flushbar(
      icon:
          const Icon(Icons.check_circle_rounded, size: 32, color: Colors.white),
      duration: const Duration(seconds: 2),
      shouldIconPulse: false,
      title: isSignupScreen ? "Pendaftaran berhasil" : "Login Berhasil",
      message: "Mohon tunggu beberapa saat...",
      backgroundColor: Colors.blue.withOpacity(0.7),
      flushbarPosition: FlushbarPosition.TOP,
      borderRadius: BorderRadius.circular(16.0),
      margin: const EdgeInsets.fromLTRB(8, 3, 8, 0),
    ).show(context);
  }

  void showTopNotifGagal(BuildContext context) {
    Flushbar(
      icon: const Icon(Icons.error, size: 32, color: Colors.white),
      duration: const Duration(seconds: 2),
      shouldIconPulse: false,
      title: isSignupScreen ? "Pendaftaran Gagal" : "Login Gagal",
      message: "Periksa kembali format email dan password...",
      backgroundColor: Colors.red.withOpacity(0.7),
      flushbarPosition: FlushbarPosition.TOP,
      borderRadius: BorderRadius.circular(16.0),
      margin: const EdgeInsets.fromLTRB(8, 3, 8, 0),
    ).show(context);
  }

  Container buildSigninSection() {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          buildTextField(Icons.account_circle_outlined, "User Name", false,
              false, _usernameTextController),
          buildTextField(Icons.mail_outline, "namaemail@gmail.com", false, true,
              _emailLoginTextController),
          buildTextField(Icons.lock_outline, "********", true, false,
              _passwordLoginTextController),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(
                    value: isRememberMe,
                    activeColor: Palette.textColor2,
                    onChanged: (value) {
                      setState(() {
                        isRememberMe = !isRememberMe;
                      });
                    },
                  ),
                  const Text(
                    "Ingat Saya",
                    style: TextStyle(fontSize: 12, color: Palette.textColor1),
                  ),
                ],
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Lupa Password ?",
                  style: TextStyle(fontSize: 12, color: Palette.textColor1),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container buildSignupSection() {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          buildTextField(
            Icons.account_circle_outlined,
            "User Name",
            false,
            false,
            _usernameTextController,
          ),
          buildTextField(Icons.email_outlined, "Email", false, true,
              _emailSignupTextController),
          buildTextField(Icons.lock_outline, "Password", true, false,
              _passwordSignupTextController),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isMale = true;
                    });
                  },
                  child: Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        margin: const EdgeInsets.only(right: 8),
                        decoration: BoxDecoration(
                          color:
                              isMale ? Palette.textColor2 : Colors.transparent,
                          border: Border.all(
                              width: 1,
                              color: isMale
                                  ? Colors.transparent
                                  : Palette.textColor1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Icon(
                          Icons.account_circle_outlined,
                          color: isMale ? Colors.white : Palette.iconColor,
                        ),
                      ),
                      const Text(
                        "Laki-laki",
                        style: TextStyle(color: Palette.textColor1),
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 30),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isMale = false;
                    });
                  },
                  child: Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        margin: const EdgeInsets.only(right: 8),
                        decoration: BoxDecoration(
                          color:
                              isMale ? Colors.transparent : Palette.textColor2,
                          border: Border.all(
                              width: 1,
                              color: isMale
                                  ? Palette.textColor1
                                  : Colors.transparent),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Icon(
                          Icons.account_circle_outlined,
                          color: isMale ? Palette.iconColor : Colors.white,
                        ),
                      ),
                      const Text(
                        "Perempuan",
                        style: TextStyle(color: Palette.textColor1),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 200,
            margin: const EdgeInsets.only(top: 20),
            child: RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                text: "Tekan tombol di bawah untuk masuk ke ",
                style: TextStyle(color: Palette.textColor2),
                children: [
                  TextSpan(
                    text: "Halaman Utama",
                    style: TextStyle(color: Colors.orange),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  TextButton buildTextButton(
      IconData icon, String title, Color backgroundColor) {
    return TextButton(
      onPressed: () {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => const Home(usernamemu: '')),
            (route) => false);
      },
      style: TextButton.styleFrom(
          side: const BorderSide(width: 1, color: Colors.grey),
          minimumSize: const Size(155, 40),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          primary: Colors.white,
          backgroundColor: backgroundColor),
      child: Row(
        children: [
          Icon(icon),
          const SizedBox(
            width: 5,
          ),
          Text(title)
        ],
      ),
    );
  }

  Widget buildBottomHalfContainer(bool showShadow) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 400),
      curve: Curves.bounceInOut,
      top: isSignupScreen ? 535 : 500,
      right: 0,
      left: 0,
      child: Center(
        child: Container(
          height: 90,
          width: 90,
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                if (showShadow)
                  BoxShadow(
                      color: Colors.black.withOpacity(.3),
                      spreadRadius: 1.5,
                      blurRadius: 10,
                      offset: const Offset(0, 1))
              ]),
          child: !showShadow
              ? GestureDetector(
                  onTap: () async {
                    isSignupScreen
                        ? await FirebaseAuth.instance
                            .createUserWithEmailAndPassword(
                                email: _emailSignupTextController.text,
                                password: _passwordSignupTextController.text)
                            .then((value) {
                            FirebaseFirestore.instance
                                .collection('users')
                                .doc(value.user!.uid)
                                .set({'name': _usernameTextController.text});
                            showTopNotif(context);

                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Home(
                                        usernamemu:
                                            _usernameTextController.text)));
                          }).onError((error, stackTrace) {
                            showTopNotifGagal(context);
                          })
                        : await FirebaseAuth.instance
                            .signInWithEmailAndPassword(
                                email: _emailLoginTextController.text,
                                password: _passwordLoginTextController.text)
                            .then((value) {
                            showTopNotif(context);
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Home(
                                        usernamemu:
                                            _usernameTextController.text)));
                          }).onError((error, stackTrace) {
                            showTopNotifGagal(context);
                          });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Colors.orange.shade200,
                              Colors.red.shade400
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight),
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(.3),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: const Offset(0, 1)),
                        ]),
                    child: const Icon(Icons.arrow_forward, color: Colors.white),
                  ),
                )
              : const Center(),
        ),
      ),
    );
  }

  Widget buildTextField(IconData icon, String hintText, bool isPassword,
      bool isEmail, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: TextField(
        controller: controller,
        obscureText: isPassword,
        keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: Palette.iconColor,
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Palette.textColor1),
            borderRadius: BorderRadius.all(
              Radius.circular(35.0),
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Palette.textColor1),
            borderRadius: BorderRadius.all(
              Radius.circular(35.0),
            ),
          ),
          contentPadding: const EdgeInsets.all(10),
          hintText: hintText,
          hintStyle: const TextStyle(fontSize: 14, color: Palette.textColor1),
        ),
      ),
    );
  }
}
