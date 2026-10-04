import 'package:flutter/material.dart';

class text_field extends StatefulWidget {
  const text_field({super.key});

  @override
  State<text_field> createState() => _text_fieldState();
}

class _text_fieldState extends State<text_field> {
  var emailText=TextEditingController();
  var passwordText=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "TextWdigth",style: TextStyle(color: Colors.lime),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: emailText,
                decoration: InputDecoration(
                  hintText: "Email",
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                          color: Colors.orangeAccent,
                        width: 2
                      )
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.orangeAccent
                    )
                  ),
                  // suffixText: "UserName",
                  suffixIcon: IconButton(
                    icon: Icon(Icons.email,color: Colors.orangeAccent,),
                    onPressed: (){
                    },
                  ),
                    
                ) ,
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: passwordText,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "PassWord",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            color: Colors.orangeAccent
                        )
                    ),
                    // suffixText: "PassWord",
                    suffixIcon:Icon(Icons.remove_red_eye,color: Colors.blueAccent,)
                ) ,
              ),
              ElevatedButton(
                  onPressed: (){
                    String userEmail=emailText.text.toString();
                    String userPass=passwordText.text.toString();
                    print("Email : $userEmail, passWod:$userPass");
                    },
                  child: Text('Login')
              )
            ],
          ),
        ),
      ),
    );
  }
}
