import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  //registration form
  final _formKey = GlobalKey<FormState>();

  //editing fields
  final firstNameEditingController = new TextEditingController();
  final lastNameEditingController = new TextEditingController();
  final emailAddressEditingController = new TextEditingController();
  final passwordEditingController = new TextEditingController();
  final confirmPasswordNameEditingController = new TextEditingController();

  @override
  Widget build(BuildContext context) {

    //first name
    final firstNameField = TextFormField(
      style: TextStyle(color: Colors.white),
      autofocus: false,
      controller: firstNameEditingController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value) {
        firstNameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 3),
          borderRadius: BorderRadius.circular(10)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Color.fromARGB(255, 248, 214, 115), width: 3)),
        prefixIcon: Icon(Icons.account_circle_rounded, color: Color.fromARGB(255, 248, 214, 115)),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "First Name",
        hintStyle: TextStyle(color: Colors.white,),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10)
        )
      )
    );


    //last name
    final lastNameField = TextFormField(
      style: TextStyle(color: Colors.white),
      autofocus: false,
      controller: lastNameEditingController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value) {
        lastNameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 3),
          borderRadius: BorderRadius.circular(10)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Color.fromARGB(255, 248, 214, 115), width: 3)),
        prefixIcon: Icon(Icons.account_circle_rounded, color: Color.fromARGB(255, 248, 214, 115)),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Second Name",
        hintStyle: TextStyle(color: Colors.white,),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10)
        )
      )
    );


    //email address
    final emailAddressField = TextFormField(
      style: TextStyle(color: Colors.white),
      autofocus: false,
      controller: emailAddressEditingController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value) {
        emailAddressEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 3),
          borderRadius: BorderRadius.circular(10)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Color.fromARGB(255, 248, 214, 115), width: 3)),
        prefixIcon: Icon(Icons.mail, color: Color.fromARGB(255, 248, 214, 115)),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Email Address",
        hintStyle: TextStyle(color: Colors.white,),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10)
        )
      )
    );


    //password
    final passwordField = TextFormField(
      style: TextStyle(color: Colors.white),
      autofocus: false,
      controller: passwordEditingController,
      obscureText: true,
      onSaved: (value) {
        passwordEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 3),
          borderRadius: BorderRadius.circular(10)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Color.fromARGB(255, 248, 214, 115), width: 3)),
        prefixIcon: Icon(Icons.key_rounded, color: Color.fromARGB(255, 248, 214, 115)),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Password",
        hintStyle: TextStyle(color: Colors.white,),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10)
        )
      )
    );


    //confirm password
    final confirmPasswordField = TextFormField(
      style: TextStyle(color: Colors.white),
      autofocus: false,
      controller: confirmPasswordNameEditingController,
      obscureText: true,
      onSaved: (value) {
        confirmPasswordNameEditingController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 3),
          borderRadius: BorderRadius.circular(10)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Color.fromARGB(255, 248, 214, 115), width: 3)),
        prefixIcon: Icon(Icons.key_rounded, color: Color.fromARGB(255, 248, 214, 115)),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Confirm Password",
        hintStyle: TextStyle(color: Colors.white,),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10)
        )
      )
    );


    //sign up button
    final signUpButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(10),
      color: Colors.white,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {},
        child: Text("Sign Up", 
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20,
        color: Color.fromARGB(255, 45, 64, 89),
        fontWeight: FontWeight.bold),
        ),
      ),
    );



    return Scaffold(
      backgroundColor: Color.fromARGB(255, 45, 64, 89),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            //when pressing back button it takes back to login page
            Navigator.of(context).pop();
          },
        )
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Color.fromARGB(255, 45, 64, 89),
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 200,
                      child: Image.asset("assets/Logo_Name.png", fit: BoxFit.contain)
                      ),
                    SizedBox(height: 50),
                    firstNameField,
                    SizedBox(height: 50),
                    lastNameField, 
                    SizedBox(height: 50),
                    emailAddressField, 
                    SizedBox(height: 50),
                    passwordField, 
                    SizedBox(height: 50),
                    confirmPasswordField, 
                    SizedBox(height: 50),
                    signUpButton, 
                    SizedBox(height: 50),
                    ]
                ),

              ),
            ),
          )
        )
      )
    );
  }
}
