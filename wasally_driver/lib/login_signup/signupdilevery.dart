import 'package:flutter/material.dart';
import 'package:wasaalydriver/layout/layout.dart';
import 'package:wasaalydriver/login_signup/login_screen.dart';
import 'package:wasaalydriver/screens/delivery_home.dart';
import 'package:wasaalydriver/login_signup/signup_choose.dart';

class SignUpDilevery extends StatefulWidget {
  final bool isDriver;

  SignUpDilevery(this.isDriver);

  @override
  State<SignUpDilevery> createState() => _SignUpDileveryState();
}

class _SignUpDileveryState extends State<SignUpDilevery> {
  bool isVisible = true ;
  bool? isDriver;
  var formKey = GlobalKey<FormState>();
var selectedVehicle;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isDriver = widget.isDriver;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.orange, size: 35)),
      backgroundColor: Colors.white,
      body: Form(
        key: formKey,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  "assets/images/img.png",
                  width: 150,
                  height: 80,
                ),
                Container(
                  width: 340,
                  height: 585,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 18,
                      ),
                      Text(
                        "  Create Account",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Container(
                        width: 300,
                        height: 60,
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'required user name';
                            }
                            if (!RegExp(r'^[a-zA-Z ]+$').hasMatch(value)) {
                              return "please enter valid user name";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.orange),
                                  borderRadius: BorderRadius.circular(28)),
                              labelText: " Username",
                              labelStyle: TextStyle(color: Colors.black),
                              prefixIcon: Icon(
                                Icons.account_circle_outlined,
                                color: Colors.grey,
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(28))),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 300,
                        height: 60,
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'required user number';
                            }
                            if (!RegExp(r'^[0-9]{11}$').hasMatch(value)) {
                              return "please enter valid phone number";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.orange),
                                  borderRadius: BorderRadius.circular(28)),
                              labelText: " Phone Number",
                              labelStyle: TextStyle(color: Colors.black),
                              prefixIcon: Icon(
                                Icons.call,
                                color: Colors.grey,
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(28))),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 300,
                        height: 60,
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'required user address';
                            }
                            if (!RegExp(
                                    "^[a-zA-Z0-9+.-]+@[a-zA-Z0-9+.-]+.(com)")
                                .hasMatch(value)) {
                              return "please enter valid email";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.orange),
                                  borderRadius: BorderRadius.circular(28)),
                              labelText: "Email address",
                              labelStyle: TextStyle(color: Colors.black),
                              prefixIcon: Icon(
                                Icons.email,
                                color: Colors.grey,
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(28))),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 300,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(28),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: DropdownButton<String>(
                            value: selectedVehicle,
                            hint: const Text(
                              'select a vehicle',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedVehicle = newValue;
                              });
                              print(newValue);
                            },
                            items: <String>['car', 'truck', 'courier']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            style: const TextStyle(color: Colors.black),
                            icon: const Icon(Icons.arrow_drop_down,
                                color: Colors.grey),
                            isExpanded: true,
                          ),
                        ),
                      ),
                      
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 300,
                        height: 58,
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'required user password';
                            }
                            if (!RegExp(
                                    "^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[.!@%^&(){}\\[\\]:;<>,.?/~_+-=|\\\\]).{8,10}")
                                .hasMatch(value)) {
                              return "password must contain at least 8 characters ,both uppercase and lowercase letter, one number and special character";
                            }
                            return null;
                          },
                          obscureText: isVisible,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.orange),
                                  borderRadius: BorderRadius.circular(28)),
                              labelText: "Password",
                              labelStyle: const TextStyle(color: Colors.black),
                              prefixIcon: const Icon(
                                Icons.lock,
                                color: Colors.grey,
                              ),
                              suffixIcon: InkWell(
                                onTap: () {
                                  setState(() {
                                    isVisible = !isVisible;
                                  });
                                },
                                child: isVisible
                                    ? const Icon(
                                        Icons.remove_red_eye_sharp,
                                        color: Colors.grey,
                                      )
                                    : const Icon(
                                        Icons.visibility_off,
                                        color: Colors.grey,
                                      ),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(28),
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Container(
                        width: 260,
                        height: 40,
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18)),
                          color: Colors.orange,
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LoginScreen(isDriver!),
                                  ));
                            }
                          },
                          child: Text("Create Account",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 70.0),
                        child: Row(
                          children: [
                            Text(
                              'Already have an account?',
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LoginScreen(true),
                                  ),
                                );
                              },
                              child: Text(
                                'Sign in',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange,
                                ),
                              ),
                            ),
                          ],
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
    );
  }
}
