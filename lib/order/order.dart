import 'package:flutter/material.dart';
import 'package:near_expiry_driver/app-colors/app-colors.dart';

class Orders extends StatefulWidget{
  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {

  bool isCurrent=true;
  List<int>tabSelector=[0,0,0];
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: _customappbar(context),
    body: Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: (){
                      setState(() {
                        tabSelector[0]=1;
                        tabSelector[1]=0;
                        tabSelector[2]=0;
                      });
                    },
                    child: Container(

                      width: 100,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          color:tabSelector[0]==1? AppColors.defaultblack:AppColors.pureWhite,
                          border:Border.all(color: AppColors.defaultblack)
                      ),
                      child: Center(child: Text("Current order",style: TextStyle(color:tabSelector[0]==1? AppColors.pureWhite:AppColors.defaultblack,fontSize: 9,fontWeight: FontWeight.w500),)),
                    ),

                  ),
                  SizedBox(width: 10,),
                  InkWell(
                    onTap: (){
                      setState(() {
                        tabSelector[1]=1;
                        tabSelector[0]=0;
                        tabSelector[2]=0;
                      });
                    },
                    child: Container(
                      width: 100,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          color:tabSelector[1]==1? AppColors.defaultblack:AppColors.pureWhite,
                          border:Border.all(color: AppColors.defaultblack)
                      ),
                      child: Center(child: Text("Previous order",style: TextStyle(color:tabSelector[1]==1?AppColors.pureWhite:AppColors.defaultblack,fontSize: 9,fontWeight: FontWeight.w500),)),
                    ),
                  ),
                  SizedBox(width: 10,),
                  InkWell(
                    onTap: (){
                      setState(() {
                        tabSelector[1]=0;
                        tabSelector[0]=0;
                        tabSelector[2]=1;
                      });
                    },
                    child: Container(
                      width: 100,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          color:tabSelector[2]==1? AppColors.defaultblack:AppColors.pureWhite,
                          border:Border.all(color: AppColors.defaultblack)
                      ),
                      child: Center(child: Text("Cancel",style: TextStyle(color:tabSelector[2]==1?AppColors.pureWhite:AppColors.defaultblack,fontSize: 9,fontWeight: FontWeight.w500),)),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20,),

              tabSelector[0]==1? ListView.builder(
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
                                      Text("Pending",style: TextStyle(color: AppColors.defaultblack,fontSize: 11,),),
                                      SizedBox(width: 160,),
                                      Image.asset("assets/images/ic-order-pending.png")
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
              ):SizedBox(),

              tabSelector[1]==1? ListView.builder(
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
              ):SizedBox(),

              tabSelector[2]==1? ListView.builder(
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
                                      Text("Cancel",style: TextStyle(color: AppColors.primary,fontSize: 11,),),

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
              ):SizedBox(),





            ],
          ),
        ),
        Positioned(
          bottom: 8,
          right: 5,
          left: 5,
          child: Stack(
            overflow: Overflow.visible,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20,right: 20),
                height: 60,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    border: Border.all(color: AppColors.primary),
                  color: AppColors.pureWhite
                ),
                child: Row(
                  children: [
                    Expanded(child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/ic-profile.png"),
                        SizedBox(height: 5,),
                        Text("Home",style: TextStyle(color: AppColors.primary,fontSize: 10,fontWeight: FontWeight.w500),)
                      ],
                    )),
                    SizedBox(width: 85,),
                    Expanded(child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/ic-home.png"),
                        SizedBox(height: 5,),
                        Text("Home",style: TextStyle(color: AppColors.primary,fontSize: 10,fontWeight: FontWeight.w500),)
                      ],
                    )),


                    //
                  ],
                ),
              ),
              Positioned(
                left: 160,
                bottom: 30,
                child: Container(
                  height: 58,
                  width: 58,
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColors.primary,width: 3),
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      color: AppColors.pureWhite
                  ),
                  child: Image.asset("assets/images/ic-order-package.png"),
                ),
              ),
            ],
          ),
        ),
      ],
    )
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