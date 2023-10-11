import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50.0,horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
    Row(
          children: [
            Text("Login Account"
            ,style: GoogleFonts.mPlus1(
                  fontSize: 20,fontWeight:
              FontWeight.w500),
            ),
            SizedBox(
              width: 140,
            ),
            CircleAvatar(
              backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/en/thumb/a/a4/Flag_of_the_United_States.svg/1200px-Flag_of_the_United_States.svg.png"),
            ),
            IconButton(onPressed: (){},
                icon: Icon(Icons.keyboard_arrow_down_rounded,size: 30,)),

          ],
    ),

            Text("Hello,welcome back to account!",style:
            TextStyle(fontSize: 15
            ,color: Colors.grey,
              fontWeight: FontWeight.w500
            ),),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 355,
                height: 70,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(25),
                   color: Colors.grey.withOpacity(0.1),
                 ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(onPressed: (){},
                        child: Text("Email",style:
                        TextStyle(color: Colors.grey,fontSize: 20,

                        ),)),
                    SizedBox(
                      width: 60,
                    ),
                    ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.white), // Set your desired background color
                        ),
                        onPressed: (){},
                        child: Text("Phone Number",
                          style:
                          GoogleFonts.mPlus1(color: Colors.black,fontSize: 20,
                          fontWeight: FontWeight.w400
                        ),
                        ))
                  ],
                ),


              ),
              SizedBox(
                height: 30,
              ),
              Text("Phone Number",
                style: GoogleFonts.mPlus1(color: Colors.black,
                fontSize: 20,
                  fontWeight: FontWeight.w400
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 60,
                width: 400,
             decoration: BoxDecoration(
                 border: Border.all(color: Colors.grey),
               borderRadius: BorderRadius.circular(20)

             ),
                child: Row(
                  children: [
                    Container(
                      height: 60,
                      width: 106,
                      decoration: BoxDecoration(


                      borderRadius: BorderRadius.only(   // Adjust the values as needed
                        topLeft: Radius.circular(19.0),
                      bottomLeft:Radius.circular(19.0) ),
border: Border.all(color: Colors.grey.shade300)

                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundImage:
                              NetworkImage("https://upload.wikimedia.org/wikipedia/en/thumb/a/a4/Flag_of_the_United_States.svg/1200px-Flag_of_the_United_States.svg.png"),

                            ),

                            IconButton(onPressed: (){},
                                icon:Icon(Icons.keyboard_arrow_down_rounded
                                ,size: 30,

                                ))
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(" +01-202-555-0102",
                    style: GoogleFonts.abel(
                      fontSize: 20,
                      fontWeight: FontWeight.w600
                    ),
                    ),
                  SizedBox(
                    width: 35,
                  ),
                  IconButton(onPressed: (){},
                      icon: Icon(Icons.check_circle,color: Colors.green,))
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
               Container(
                  height: 60,
                  width: 400,
                 decoration: BoxDecoration(
                   color: Color(0xff123456),
                   borderRadius: BorderRadius.circular(20)
                 ),
                 child: TextButton(
                   onPressed: (){},
                   child:Text("Send Code",
                   style: GoogleFonts.mPlus1(
                     color: Colors.white,
                     fontSize: 20
                   ),
                   ),
                ),
               ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Container(
                    height: 2,
                    width: 70,
                    color: Colors.grey.shade300,
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Text(
                      "Sign in with Google or FaceBook"
                  ,style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14
                  ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 2,
                    width: 70,
                    color: Colors.grey.shade300,

                  ),
                ],
              ),
               SizedBox(
                 height: 30,
               ),
              Container(
                height: 60,
                width: 400,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade400),
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Center(
                  child: TextButton(
                    onPressed: (){},
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: [
                        Image.network("https://pbs.twimg.com/profile_images/1605297940242669568/q8-vPggS_400x400.jpg"),
                       SizedBox(
                         width: 10,
                       ),
                        Text("Google",
                          style: GoogleFonts.mPlus1(
                              color: Colors.black,
                              fontSize: 20
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 60,
                width: 400,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade400),
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Center(
                  child: TextButton(
                    onPressed: (){},
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: [
                        Image.network(
                            "https://images.hindustantimes.com/tech/img/2023/09/21/960x540/fb_1695273515215_1695273522698.jpg"),

                        Text("Facebook",
                          style: GoogleFonts.mPlus1(
                              color: Colors.black,
                              fontSize: 20
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("               Don't have an account?"),
                TextButton(onPressed: (){},
                    child: Text("Sign up",
                    style: TextStyle(
                        fontSize:15,
                        color: Colors.red),
                    ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
