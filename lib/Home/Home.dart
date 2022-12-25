import 'package:flutter/material.dart';
import 'package:near_expiry_driver/app-colors/app-colors.dart';


class Home extends StatelessWidget{

  final loginId;
  Home(this.loginId);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _customappbar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("List of Jobs",style: TextStyle(color: AppColors.defaultblack,fontSize: 24,fontWeight: FontWeight.w500),),

              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
              IconButton(
                  onPressed: (){},
                  icon: Image.asset("assets/images/ic-arroback-black.png"),
              ),
                SizedBox(width: 5,),
                Text("07-05-2022",style: TextStyle(color: AppColors.defaultblack,fontSize: 12),),
                SizedBox(width: 5,),
                IconButton(
                  onPressed: (){},
                  icon: Image.asset("assets/images/ic-arrow-right-black.png"),
                ),
                Spacer(),
                Image.asset("assets/images/ic-google-map.png"),

              ],
            ),

            ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context,index){
                  return Column(
                    children: [
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.4),
                                    spreadRadius: 0,
                                    blurRadius: 3,
                                    offset: Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: Center(child: Image.asset("assets/images/item-image-large.png")),
                            ),
                            SizedBox(width: 8,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: [
                                Row(
                                  children: [
                                    Text("To: ",style: TextStyle(color: AppColors.defaultblack,fontSize: 11,fontWeight: FontWeight.w500),),
                                    SizedBox(width: 5,),
                                    Text("Abdul rahamn",style: TextStyle(color: AppColors.defaultblack,fontSize: 11,),),
                                  ],
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  children: [
                                    Text("Location: ",style: TextStyle(color: AppColors.defaultblack,fontSize: 11,fontWeight: FontWeight.w500),),
                                    SizedBox(width: 5,),
                                    Text("Yas Island",style: TextStyle(color: AppColors.defaultblack,fontSize: 11,),),
                                    SizedBox(width: 160,),
                                    Image.asset("assets/images/ic-location-google.png",),
                                  ],
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  children: [
                                    Text("Product: ",style: TextStyle(color: AppColors.defaultblack,fontSize: 11,fontWeight: FontWeight.w500),),
                                    SizedBox(width: 5,),
                                    Text("Suhana Achar Ghost Masala Mix",style: TextStyle(color: AppColors.defaultblack,fontSize: 11,),),
                                  ],
                                ),

                                SizedBox(height: 5,),
                                Row(
                                  children: [
                                    Text("Schedule Date: ",style: TextStyle(color: AppColors.defaultblack,fontSize: 11,fontWeight: FontWeight.w500),),
                                    SizedBox(width: 5,),
                                    Text("18 Sep, 2021",style: TextStyle(color: AppColors.defaultblack,fontSize: 11,),),
                                  ],
                                ),

                                SizedBox(height: 5,),
                                Row(
                                  children: [
                                    Text("Schedule Time: ",style: TextStyle(color: AppColors.defaultblack,fontSize: 11,fontWeight: FontWeight.w500),),
                                    SizedBox(width: 5,),
                                    Text("10:00 AM - 11:00 AM",style: TextStyle(color: AppColors.defaultblack,fontSize: 11,),),
                                  ],
                                ),

                                SizedBox(height: 5,),
                                Row(
                                  children: [
                                    Text("Payment Status: ",style: TextStyle(color: AppColors.defaultblack,fontSize: 11,fontWeight: FontWeight.w500),),
                                    SizedBox(width: 5,),
                                    Text("Paid",style: TextStyle(color: AppColors.green1CCA15,fontSize: 11,),),
                                    SizedBox(width: 160,),
                                    Image.asset("assets/images/ic-ok-order.png")
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                    ],
                  );
                }
            )



          ],
        ),
      ),
    );
  }


  _customappbar(context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: AppColors.pureWhite,

      title: Center(
        child: Container(
          height: 106,
          child: Row(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Image.asset("assets/images/ic-back-appbar.png")),

              Spacer(),
              SizedBox(width: 5,),

              Image.asset("assets/images/logo-top-appbar.png",width:110,fit: BoxFit.cover,),
              Spacer(),
              Image.asset("assets/images/ic-location-appbar.png"),
              SizedBox(width: 5,),

              SizedBox(width: 5,),


              //Image.asset('assets/menu_icon.png', width: 30, height: 30,)
            ],

          ),
        ),
      ),


    );
  }

}