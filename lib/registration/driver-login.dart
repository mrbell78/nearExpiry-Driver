import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:near_expiry_driver/Home/Home.dart';
import 'package:near_expiry_driver/app-colors/app-colors.dart';
import 'package:near_expiry_driver/utils/nav_utils.dart';
import 'package:provider/provider.dart';

import 'login-controller.dart';

class DriverLogin extends StatefulWidget{
  @override
  State<DriverLogin> createState() => _DriverLoginState();
}

class _DriverLoginState extends State<DriverLogin> {

  TextEditingController mobileNumber = TextEditingController();
  bool validateNumber = false;

  bool validateName=false;
  bool validatePassword=false;
  bool _isRemember=false;

  String mailstr ="Name Can\'t Be Empty";
  String passwordstr ="Password Can\'t Be Empty";

  TextEditingController mail = TextEditingController();

  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
   return Consumer<CustommerLoginController>(builder: (context,provider,child){
     return Scaffold(

         body:Container(
           height: double.infinity,
           child: Stack(
             overflow: Overflow.visible,
             children: [
               Image.asset("assets/images/image-register-background.png"),
               Positioned(
                 top: 250,
                 bottom: 10,
                 child: Container(
                   padding: EdgeInsets.only(left: 25,right: 25),
                   width: MediaQuery.of(context).size.width,
                   height:double.infinity,
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.all(Radius.circular(30)),
                       color: AppColors.pureWhite
                   ),

                   child: ListView(
                     shrinkWrap: true,
                     physics: BouncingScrollPhysics(),
                     children: [
                       Center(child: Image.asset("assets/images/logo-active.png",height: 100,width: 100,),),

                       SizedBox(height: 15,),
                       // Container(
                       //   child: Row(
                       //     children: [
                       //       Container(
                       //           child:Image.asset("assets/images/ic-phone.png")
                       //
                       //       ),
                       //       SizedBox(width: 8,),
                       //       Text("Mobile Number",style: TextStyle(color: AppColors.defaultblack,fontSize: 14),),
                       //
                       //     ],
                       //   ),
                       // ),
                       // Container(
                       //   margin: EdgeInsets.only(right: 20),
                       //   child: TextField(
                       //     controller: mobileNumber,
                       //     keyboardType: TextInputType.number,
                       //     style: TextStyle(color: AppColors.defaultblack,fontSize: 10),
                       //     decoration: InputDecoration(
                       //         hintText: "55486526",
                       //         hintStyle: TextStyle(color: AppColors.gray8383,fontSize: 10),
                       //         contentPadding: EdgeInsets.all(5),
                       //         errorText: validateNumber? 'Number Can\'t Be Empty':null
                       //     ),
                       //   ),
                       // ),
                       // SizedBox(height: 20,),

                       SizedBox(height:10,),

                       Container(
                         margin: EdgeInsets.only(left: 20,right: 20),
                         child: Row(
                           children: [
                             Container(
                                 child:Image.asset("assets/images/ic-mail.png")

                             ),
                             SizedBox(width: 8,),
                             Text("Email",style: TextStyle(color: AppColors.defaultblack,fontSize: 14),),

                           ],
                         ),
                       ),
                       Container(
                         margin: EdgeInsets.only(left: 20,right: 20),
                         child: TextField(
                           controller: mail,
                           style: TextStyle(color: AppColors.defaultblack,fontSize: 10),
                           decoration: InputDecoration(
                               hintText: "user name",
                               hintStyle: TextStyle(color: AppColors.gray8383,fontSize: 10),
                               contentPadding: EdgeInsets.only(top: 20),
                               errorText: validateName? mailstr:null
                           ),
                         ),
                       ),

                       SizedBox(height: 10,),
                       Container(
                         margin: EdgeInsets.only(left: 20,right: 20),
                         child: Row(
                           children: [
                             Container(
                                 child:Image.asset("assets/images/ic-phone.png")

                             ),
                             SizedBox(width: 8,),
                             Text("Password",style: TextStyle(color: AppColors.defaultblack,fontSize: 14),),

                           ],
                         ),
                       ),
                       Container(
                         margin: EdgeInsets.only(left: 20,right: 20),
                         child: TextField(
                           obscureText: true,
                           controller: password,
                           style: TextStyle(color: AppColors.defaultblack,fontSize: 10),
                           decoration: InputDecoration(
                               hintText: "*******",

                               hintStyle: TextStyle(color: AppColors.gray8383,fontSize: 10),
                               contentPadding: EdgeInsets.all(5),
                               errorText: validatePassword? passwordstr:null
                           ),
                         ),
                       ),

                       GestureDetector(
                         onTap: () async {

                           setState(() {
                             mail.text.isEmpty? validateName=true:validateName=false;
                             password.text.isEmpty? validatePassword=true:validatePassword=false;
                           });

                           if(mail.text.isNotEmpty && password.text.isNotEmpty){

                             await  provider.postLogin(mail.text,password.text,_isRemember).whenComplete(() {

                               if(provider.custommerLogin!=null){
                                 Fluttertoast.showToast(
                                     msg: "Login Success",
                                     toastLength: Toast.LENGTH_SHORT,
                                     gravity: ToastGravity.CENTER,
                                     timeInSecForIosWeb: 1,
                                     backgroundColor: Colors.red,
                                     textColor: Colors.white,
                                     fontSize: 16.0
                                 );
                                 NavUtils.push(context, Home(provider.custommerLogin!.driverId));
                               }else{

                                 mailstr="User Name or Password error";
                                 passwordstr="User Name or Password error";

                                 if(mail.text.isNotEmpty && password.text.isNotEmpty){
                                   setState(() {
                                     validateName=true;
                                     validatePassword=true;

                                   });
                                 }

                                 Fluttertoast.showToast(
                                     msg: "User or Password Error",
                                     toastLength: Toast.LENGTH_SHORT,
                                     gravity: ToastGravity.CENTER,
                                     timeInSecForIosWeb: 1,
                                     backgroundColor: Colors.red,
                                     textColor: Colors.white,
                                     fontSize: 16.0
                                 );
                               }



                             });
                           }

                         },
                         child: Container(
                           width: MediaQuery.of(context).size.width,
                           height: 50,
                           decoration: BoxDecoration(
                               color: AppColors.primary,
                               borderRadius: BorderRadius.all(Radius.circular(8))
                           ),
                           child: Center(child: Text("Login",style: TextStyle(color: AppColors.pureWhite),)),
                         ),
                       ),

                     ],
                   ),
                 ),
               ),
             ],
           ),
         )
     );
   });
  }
}