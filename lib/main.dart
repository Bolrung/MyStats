import 'package:flutter/material.dart';

String email = '';
String password = '';
bool choix1 = false;
bool choix2 = false;
bool choix3 = false;
void main() {
  runApp(MyApp());
}
String fond = 'img/fondnoir.png';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'OSWALD'
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key});
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(fond),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 40),
              height:MediaQuery.of(context).size.height *0.025,
              width:MediaQuery.of(context).size.width *0.90,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: (){
                         if(fond == 'img/fondnoir.png'){
                       setState(() {
                          fond = 'img/fondblanc.png';
                       });
                      }
                      else{
                       setState(() {
                          fond = 'img/fondnoir.png';
                       });
                      }
                    },
                    child: Container(
                     height:MediaQuery.of(context).size.height *0.025,
              width:MediaQuery.of(context).size.height *0.05,
              decoration: BoxDecoration(
                color: fond == 'img/fondnoir.png' ? Color.fromARGB(100, 255, 255, 255):Color.fromARGB(100, 0, 0, 0),
                border: Border.all(
                  color: fond == 'img/fondnoir.png' ? Color.fromARGB(255, 255, 255, 255):Color.fromARGB(255, 0, 0, 0),
                  width: 1
                ),
                borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage("img/image.png"),
            fit: BoxFit.fitHeight,
          ),
        ),
                  ),
                  )
                ],
              ),
              ),
            Container(
              height:MediaQuery.of(context).size.height *0.20,
              width:MediaQuery.of(context).size.height *0.20,
              decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("img/logo.png"),
            fit: BoxFit.cover,
          ),
        ),
            ),
            Container(
              height:MediaQuery.of(context).size.height *0.15,
              width:MediaQuery.of(context).size.height *0.70,
              child:Center(
                child: Text('Inscription',style: TextStyle(fontWeight:FontWeight.bold,color:Color.fromARGB(255, 13, 217, 196),fontSize: MediaQuery.of(context).size.height *0.05),),
              )
            ),
            Container(
               height:MediaQuery.of(context).size.height *0.05,
              width:MediaQuery.of(context).size.width *0.70,
              child:TextFormField(
                                style: TextStyle(color: fond == 'img/fondnoir.png' ? Color.fromARGB(255, 255, 255, 255):Color.fromARGB(255, 0, 0, 0)),
                                onChanged: (val){
                                  setState(()=>email = val);
                                },
                                validator:(val) =>
                                val!.isEmpty ? 'Email manquant' : null,
                                decoration: InputDecoration(
                                  labelStyle:TextStyle(color: fond == 'img/fondnoir.png' ? Color.fromARGB(255, 255, 255, 255):Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold,) ,
                                  hintText: 'Email',
                                  hintStyle: TextStyle(color:fond == 'img/fondnoir.png' ? Color.fromARGB(255, 255, 255, 255):Color.fromARGB(255, 0, 0, 0)),
                                ),
                                ),
            ),
                                Container(
               height:MediaQuery.of(context).size.height *0.05,
              width:MediaQuery.of(context).size.width *0.70,
              child:TextFormField(
                                style: TextStyle(color: fond == 'img/fondnoir.png' ? Color.fromARGB(255, 255, 255, 255):Color.fromARGB(255, 0, 0, 0)),
                                onChanged: (val){
                                  setState(()=>email = val);
                                },
                                validator:(val) =>
                                val!.isEmpty ? 'Password manquant' : null,
                                decoration: InputDecoration(
                                  labelStyle:TextStyle(color: fond == 'img/fondnoir.png' ? Color.fromARGB(255, 255, 255, 255):Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold,) ,
                                  hintText: 'Password',
                                  hintStyle: TextStyle(color:fond == 'img/fondnoir.png' ? Color.fromARGB(255, 255, 255, 255):Color.fromARGB(255, 0, 0, 0)),
                                ),
                                ),
            ),
                             Container(
               height:MediaQuery.of(context).size.height *0.05,
              width:MediaQuery.of(context).size.width *0.70,
              child:TextFormField(
                                style: TextStyle(color: fond == 'img/fondnoir.png' ? Color.fromARGB(255, 255, 255, 255):Color.fromARGB(255, 0, 0, 0)),
                                onChanged: (val){
                                  setState(()=>email = val);
                                },
                                validator:(val) =>
                                val!.isEmpty ? 'Password manquant' : null,
                                decoration: InputDecoration(
                                  labelStyle:TextStyle(color: fond == 'img/fondnoir.png' ? Color.fromARGB(255, 255, 255, 255):Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold,) ,
                                  hintText: 'Password confirm',
                                  hintStyle: TextStyle(color:fond == 'img/fondnoir.png' ? Color.fromARGB(255, 255, 255, 255):Color.fromARGB(255, 0, 0, 0)),
                                ),
                                ),
            ),
                              Container(
              height:MediaQuery.of(context).size.height *0.1,
              width:MediaQuery.of(context).size.height *0.70,
              child:Center(
                child: Text('Ou',style: TextStyle(color:fond == 'img/fondnoir.png' ? Color.fromARGB(255, 255, 255, 255):Color.fromARGB(255, 0, 0, 0),fontSize: MediaQuery.of(context).size.height *0.02),),
              )
            ),
            Container(
              height:MediaQuery.of(context).size.height *0.10,
              width:MediaQuery.of(context).size.height *0.70,
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:[
                  Container(
              height:MediaQuery.of(context).size.height *0.08,
              width:MediaQuery.of(context).size.height *0.08,
              decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("img/apple.png"),
            fit: BoxFit.fitWidth,
          ),
        ),
            ),
            Container(
              height:MediaQuery.of(context).size.height *0.08,
              width:MediaQuery.of(context).size.height *0.08,
              decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("img/google.png"),
            fit: BoxFit.fitWidth,
          ),
        ),
            ),
            Container(
              height:MediaQuery.of(context).size.height *0.08,
              width:MediaQuery.of(context).size.height *0.08,
              decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("img/facebook.png"),
            fit: BoxFit.fitWidth,
          ),
        ),
            ),
                ]
              )
            ),
            Row(
              children: [
                Checkbox(onChanged: (bool? value) {setState(() {
                  choix1 = !choix1;
                });   }, value: choix1,),
                Text('Sign up for Newsletter.',style: TextStyle(color:fond == 'img/fondnoir.png' ? Color.fromARGB(255, 255, 255, 255):Color.fromARGB(255, 0, 0, 0)),)
              ],
            ),
            Row(
              children: [
                Checkbox(onChanged: (bool? value) {setState(() {
                  choix2 = !choix2;
                });   }, value: choix2,),
                Text('I agree to the Teams of service and Privacy Policy.',style: TextStyle(color:fond == 'img/fondnoir.png' ? Color.fromARGB(255, 255, 255, 255):Color.fromARGB(255, 0, 0, 0)),)
              ],
            ),
            GestureDetector(
              onTap: (){},
              child: Container(
                height:MediaQuery.of(context).size.height *0.05,
                width:MediaQuery.of(context).size.width *0.75,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 13, 217, 196),
                  borderRadius: BorderRadius.circular(25)
                ),
                child: Center(
                  child: Text('Connection',style: TextStyle(color:Color.fromARGB(255, 255, 255, 255),fontSize: MediaQuery.of(context).size.height *0.025),),
                ),
              ),
            ),
            TextButton(onPressed: (){
               Navigator.push(context,
                            MaterialPageRoute<void>(
                                builder:(BuildContext context) {
                                  return Connexion();
                                }));
            }, child: Text('Already registered?  Sign in',style: TextStyle(color:Color.fromARGB(255, 13, 217, 196),fontSize: MediaQuery.of(context).size.height *0.015),))
          ],
        ),
      )
    );
  }
}
class Connexion extends StatefulWidget {
  Connexion({Key? key});
  @override
  ConnexionState createState() => ConnexionState();
}

class ConnexionState extends State<Connexion> {
 
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(fond),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 40),
              height:MediaQuery.of(context).size.height *0.025,
              width:MediaQuery.of(context).size.width *0.90,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  
                  GestureDetector(
                    onTap: (){
                         if(fond == 'img/fondnoir.png'){
                       setState(() {
                          fond = 'img/fondblanc.png';
                       });
                      }
                      else{
                       setState(() {
                          fond = 'img/fondnoir.png';
                       });
                      }
                    },
                    child: Container(
                      
                     height:MediaQuery.of(context).size.height *0.025,
              width:MediaQuery.of(context).size.height *0.05,
              decoration: BoxDecoration(
                color: fond == 'img/fondnoir.png' ? Color.fromARGB(100, 255, 255, 255):Color.fromARGB(100, 0, 0, 0),
                border: Border.all(
                  color: fond == 'img/fondnoir.png' ? Color.fromARGB(255, 255, 255, 255):Color.fromARGB(255, 0, 0, 0),
                  width: 1
                ),
                borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage("img/image.png"),
            fit: BoxFit.fitHeight,
          ),
        ),
                  ),
                  )
                ],
              ),
              ),
            Container(
              height:MediaQuery.of(context).size.height *0.20,
              width:MediaQuery.of(context).size.height *0.20,
              decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("img/logo.png"),
            fit: BoxFit.cover,
          ),
        ),
            ),
            Container(
              height:MediaQuery.of(context).size.height *0.15,
              width:MediaQuery.of(context).size.height *0.70,
              child:Center(
                child: Text('Connexion',style: TextStyle(fontWeight:FontWeight.bold,color:Color.fromARGB(255, 13, 217, 196),fontSize: MediaQuery.of(context).size.height *0.05),),
              )
            ),
            Container(
               height:MediaQuery.of(context).size.height *0.05,
              width:MediaQuery.of(context).size.width *0.70,
              child:TextFormField(
                                style: TextStyle(color: Colors.white),
                                onChanged: (val){
                                  setState(()=>email = val);
                                },
                                validator:(val) =>
                                val!.isEmpty ? 'Email manquant' : null,
                                decoration: InputDecoration(
                                  labelStyle:TextStyle(color: fond == 'img/fondnoir.png' ? Color.fromARGB(255, 255, 255, 255):Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold,) ,
                                  hintText: 'Email',
                                  hintStyle: TextStyle(color:fond == 'img/fondnoir.png' ? Color.fromARGB(255, 255, 255, 255):Color.fromARGB(255, 0, 0, 0)),
                                ),
                                ),
            ),
                                Container(
               height:MediaQuery.of(context).size.height *0.05,
              width:MediaQuery.of(context).size.width *0.70,
              child:TextFormField(
                                style: TextStyle(color: Colors.white),
                                onChanged: (val){
                                  setState(()=>email = val);
                                },
                                validator:(val) =>
                                val!.isEmpty ? 'Password manquant' : null,
                                decoration: InputDecoration(
                                  labelStyle:TextStyle(color: fond == 'img/fondnoir.png' ? Color.fromARGB(255, 255, 255, 255):Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold,) ,
                                  hintText: 'Password',
                                  hintStyle: TextStyle(color:fond == 'img/fondnoir.png' ? Color.fromARGB(255, 255, 255, 255):Color.fromARGB(255, 0, 0, 0)),
                                ),
                                ),
            ),
                             Container(
               height:MediaQuery.of(context).size.height *0.05,
              width:MediaQuery.of(context).size.width *0.95,
              child:Row(
              children: [
                Checkbox(onChanged: (bool? value) {setState(() {
                  choix3 = !choix3;
                });   }, value: choix3,),
                Text('Remember the password',style: TextStyle(color: fond == 'img/fondnoir.png' ? Color.fromARGB(255, 255, 255, 255):Color.fromARGB(255, 0, 0, 0)),),
                TextButton(onPressed: (){}, child: Text('Forgot your password',style: TextStyle(color:fond == 'img/fondnoir.png' ? Color.fromARGB(255, 255, 255, 255):Color.fromARGB(255, 0, 0, 0)),),)
              ],
            ),
            ),
                              Container(
              height:MediaQuery.of(context).size.height *0.1,
              width:MediaQuery.of(context).size.height *0.70,
              child:Center(
                child: Text('Ou',style: TextStyle(color:fond == 'img/fondnoir.png' ? Color.fromARGB(255, 255, 255, 255):Color.fromARGB(255, 0, 0, 0),fontSize: MediaQuery.of(context).size.height *0.02),),
              )
            ),
            Container(
              height:MediaQuery.of(context).size.height *0.10,
              width:MediaQuery.of(context).size.height *0.70,
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:[
                  Container(
              height:MediaQuery.of(context).size.height *0.08,
              width:MediaQuery.of(context).size.height *0.08,
              decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("img/apple.png"),
            fit: BoxFit.fitWidth,
          ),
        ),
            ),
            Container(
              height:MediaQuery.of(context).size.height *0.08,
              width:MediaQuery.of(context).size.height *0.08,
              decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("img/google.png"),
            fit: BoxFit.fitWidth,
          ),
        ),
            ),
            Container(
              height:MediaQuery.of(context).size.height *0.08,
              width:MediaQuery.of(context).size.height *0.08,
              decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("img/facebook.png"),
            fit: BoxFit.fitWidth,
          ),
        ),
            ),
                ]
              )
            ),
            
            
            GestureDetector(
              onTap: (){},
              child: Container(
                height:MediaQuery.of(context).size.height *0.05,
                width:MediaQuery.of(context).size.width *0.75,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 13, 217, 196),
                  borderRadius: BorderRadius.circular(25)
                ),
                child: Center(
                  child: Text('Login',style: TextStyle(color:Color.fromARGB(255, 255, 255, 255),fontSize: MediaQuery.of(context).size.height *0.025),),
                ),
              ),
            ),
            TextButton(onPressed: (){
              Navigator.push(context,
                            MaterialPageRoute<void>(
                                builder:(BuildContext context) {
                                  return MyHomePage();
                                }));
            }, child: Text('C’est la premiere fois ! Inscris toi',style: TextStyle(color:Color.fromARGB(255, 13, 217, 196),fontSize: MediaQuery.of(context).size.height *0.015),))
          ],
        ),
      )
    );
  }
}
