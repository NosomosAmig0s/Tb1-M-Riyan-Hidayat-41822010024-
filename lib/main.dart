import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
          'Selamat Datang !',
          style: GoogleFonts.dmSans(
            textStyle: TextStyle(color: Color(0xff0D0140), fontWeight: FontWeight.bold, fontSize: 35,letterSpacing: .5),),),
          SizedBox(height: 11,),

          Text(
            'Masukkan email & password anda',
            style: GoogleFonts.roboto(
              textStyle: TextStyle(color: Color(0xff0D0140), fontSize: 15,letterSpacing: .5),),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 64,),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Email',
                style: GoogleFonts.actor(
                  textStyle: TextStyle(color: Colors.black , fontSize: 12, fontWeight: FontWeight.bold,)
                ),
              ),
              SizedBox(height: 10,),

              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),

                child : TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: ('example123@gmail.com'),
                    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 17),
                  ),
                ),
               ),
              SizedBox(height: 15,),

              Text('Password',
                style: GoogleFonts.actor(
                    textStyle: TextStyle(color: Colors.black , fontSize: 12, fontWeight: FontWeight.bold,)
                ),
              ),
              SizedBox(height: 10,),

              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child : TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 17),
                    suffixIcon: Icon(Icons.visibility_off),
                  ),
                ),
              ),
             ],
            ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  // Handle navigation to the ForgotPage here
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ForgotPage()));
                },
                child: Text(
                  'Forgot Password ?',
                  style: GoogleFonts.dmSans(
                    textStyle: TextStyle(
                      color: Color(0xff0D0140),
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      letterSpacing: .5,
                    ),
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 100,),
          Container(
              width: double.infinity,
              child : ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: Text('LOGIN'),
            )
           )
          ],
         ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(
        title: Text('Hello Guys!'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("images/billy.jpg"),
              radius: 50.0, // Perbaiki penulisan angka di sini
            ),
            Text(
              'Billy Joe Armstrong',
              style: TextStyle(
                fontSize: 35.0,
                color: Color(0xff0D0140),
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Guitarist',
              style: TextStyle(
                fontSize: 20.0,
                letterSpacing: 1.5,
                color: Color(0xff0D0140),
              ),
            ),
            Text(
              'Green Day',
              style: TextStyle(
                fontSize: 20.0,
                letterSpacing: 1.5,
                color: Color(0xff0D0140),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              color: Colors.white,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0, left: 10.0), // Perbaiki penulisan EdgeInsets
                    child: Icon(
                      Icons.phone_android,
                      color: Colors.teal,
                    ),
                  ),
                  Text(
                    '089687914671',
                    style: TextStyle(color: Colors.teal, fontSize: 20.0),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              color: Colors.white,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0, left: 10.0), // Perbaiki penulisan EdgeInsets
                    child: Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                  ),
                  Text(
                    'billyjoe99@gmail.com',
                    style: TextStyle(color: Colors.teal, fontSize: 20.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class ForgotPage extends StatelessWidget {
  const ForgotPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reset Password '),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Enter your new password',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),

              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'New Password',
                    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 17),
                  ),
                ),
              ),

              SizedBox(height: 20),

              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Confirm New Password',
                    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 17),
                  ),
                ),
              ),

              SizedBox(height: 20),


              Container(
                  width: double.infinity,
                  child : ElevatedButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    child: Text('Reset'),
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}




