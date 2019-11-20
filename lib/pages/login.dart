import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:silla_application/pages/verify.dart';
import '../utils/AppColors.dart';
import 'chat.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class Login extends StatefulWidget {
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {


  TextEditingController textEditingController = new TextEditingController();
  final _loginForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    final String query = r"""
                    mutation signup1($phone:Number!){
                      signup1(input:{phone:$phone}){
                        token
                      }
                    }
                  """;

    final HttpLink httpLink =
    HttpLink(uri: "http://localhost:4000/graphql");
    final ValueNotifier<GraphQLClient> client = ValueNotifier<GraphQLClient>(
      GraphQLClient(
        link: httpLink as Link,
        cache: OptimisticCache(
          dataIdFromObject: typenameDataIdFromObject,
        ),
      ),
    );
    return GraphQLProvider(
      child: Scaffold(
          body: Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[
              Container(
                width: screenWidth,
                height: screenHeight,
                child: Image.asset(
                  "assets/loginbg.jpeg",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                color: Color(0x22000000),
              ),

              Mutation(
                options: MutationOptions(
                    document: query),
                builder: (
                    RunMutation insert,
                    QueryResult result ) {
                  if(result.loading) {
                    return Center(child: CircularProgressIndicator());
                  }

                    return Column(
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(top: 150, bottom: 100),
                                child: Image.asset("assets/logo.png"),
                              ),
                              Padding(
                                  padding: EdgeInsets.all(30),
                                  child: Form(
                                    key: _loginForm,
                                    child: TextFormField(
                                      controller: textEditingController,
                                      keyboardType: TextInputType.number,
                                      //textAlign: TextAlign.left,
                                      autofocus: false,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                      decoration: InputDecoration(
                                        prefixIcon: Container(
                                          margin: EdgeInsets.only(
                                              left: 20, right: 20),
                                          width: 30,
                                          child: Image.asset(
                                              "assets/ksaflag.png"),
                                        ),
                                        suffixIcon: IconButton(icon: Icon(
                                          Icons.forward,
                                          color: AppColors.mainColor,),
                                          onPressed: () {
                                            /*Navigator.of(context).push(
                                    new MaterialPageRoute(
                                      builder: (BuildContext context)=>new VerifyScreen(),
                                    ),
                                  );*/
                                            if (_loginForm.currentState
                                                .validate()) {
                                              insert(<String, dynamic>{
                                                "phone": 1234
                                              });
                                            }
                                          },),
                                        hintText: 'رقم الهاتف',
                                        filled: true,
                                        fillColor: Color(0xBBFFFFFF),
                                        contentPadding: EdgeInsets.fromLTRB(
                                            20.0, 15.0, 20.0, 15.0),
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                                15.0)),
                                      ),
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return "الرجاء ملأ هذا الحقل";
                                        }
                                        if (value.length < 6) {
                                          return 'رقم الهاتف يجب ان يكون اكثر من 6 ارقام';
                                        }
                                      },
                                    ),
                                  )
                              )
                            ],
                          ),
                        ),
                      ],
                    );

                },
                onCompleted: (result){
                  if(result.data?.toString().contains("token")) {
                    print ("2");
                    Navigator.of(context).push(
                      new MaterialPageRoute(
                        builder: (BuildContext context)=>new VerifyScreen(phone: textEditingController.text.toString(),id: "5",),
                      ),
                    );
                  }
                },
              ),

            ],
          ),

      ),
      client: client,
    );



  }
}