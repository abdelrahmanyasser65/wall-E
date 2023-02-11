import 'package:earthkeepers/app/logic/auth/cubit.dart';
import 'package:earthkeepers/app/logic/auth/state.dart';
import 'package:earthkeepers/data/home_model.dart';
import 'package:earthkeepers/presentation/resources/color_manager.dart';
import 'package:earthkeepers/presentation/resources/fonts.dart';
import 'package:earthkeepers/presentation/resources/images.dart';
import 'package:earthkeepers/presentation/resources/strings.dart';
import 'package:earthkeepers/presentation/resources/values.dart';
import 'package:earthkeepers/presentation/screens/home/home/empty_cart_screen.dart';
import 'package:earthkeepers/presentation/widget/default_text.dart';
import 'package:earthkeepers/presentation/widget/home/card_category.dart';
import 'package:earthkeepers/presentation/widget/home/home_items.dart';
import 'package:earthkeepers/presentation/widget/navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit,AuthState>(
    listener: (context,state){},
    builder: (context,state){
      var cubit =BlocProvider.of<AuthCubit>(context);
      return Scaffold(
        body: ListView(

          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: HeightSized.h4,
                  left: HeightSized.h2,
                  right: HeightSized.h2,
                  bottom: HeightSized.h3
              ),
              child: Center(
                child: Image.asset(Images.logo2,
                  width: HeightSized.h20,),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(

                  horizontal: HeightSized.h2
              ),
              child: Row(
                children: [
                  InkWell(
                    onTap: (){

                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(
                          vertical: HeightSized.h3
                      ),
                      height: HeightSized.h6,
                      width: 33.h,
                      decoration: BoxDecoration(
                          color: ColorManager.black.withOpacity(0.04),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      padding: EdgeInsets.symmetric(
                          horizontal: HeightSized.h2
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.search,color: ColorManager.grey,),
                          SizedBox(width: HeightSized.h2,),
                          DefaultText(
                            text: Strings.search,
                            color: ColorManager.grey,
                            fontSize: FontSized.s14,
                            fontWeight: FontWeightManager.medium,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: HeightSized.h1,),
                  InkWell(
                    onTap: (){},
                    child: Container(
                      margin: EdgeInsets.only(
                          left: 1.5.h
                      ),
                      height: HeightSized.h6,
                      width: 6.5.h,
                      decoration: BoxDecoration(
                          color: ColorManager.primary,
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: Icon(Icons.shopping_cart,color: ColorManager.white,),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 4.5.h,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                physics:const BouncingScrollPhysics(),
                children: [
                  CardCategory(
                    text: Strings.all,
                    isSelect: cubit.selectIndex==0,
                    index: 0,
                   onTap: (){
                      cubit.changeCartIndex(0);
                   },
                  ),
                  CardCategory(
                    text: Strings.plants,
                    isSelect: cubit.selectIndex==1,
                    index: 1,
                    onTap: (){
                      cubit.changeCartIndex(1);
                    },
                  ),
                  CardCategory(
                    text: Strings.seeds,
                    isSelect: cubit.selectIndex==2,
                    index: 2,
                    onTap: (){
                      cubit.changeCartIndex(2);
                    },
                  ),
                  CardCategory(
                    text: Strings.tools,
                    isSelect: cubit.selectIndex==3,
                    index: 3,
                    onTap: (){
                      cubit.changeCartIndex(3);
                    },
                  ),
                  CardCategory(
                    text: Strings.trees,
                    isSelect: cubit.selectIndex==4,
                    index: 4,
                    onTap: (){
                      cubit.changeCartIndex(4);
                    },
                  ),
                  CardCategory(
                    text: Strings.pesticides,
                    isSelect: cubit.selectIndex==5,
                    index: 5,
                    onTap: (){
                      cubit.changeCartIndex(5);
                    },
                  ),
                  CardCategory(
                    text: Strings.fertilizer,
                    isSelect: cubit.selectIndex==6,
                    index: 6,
                    onTap: (){
                      cubit.changeCartIndex(6);
                    },
                  ),
                ],
              ),
            ),
            Container(
              height: 65.h,
              margin: EdgeInsets.symmetric(
                vertical: 6.h,
                horizontal: 2.h,
              ),

              child: GridView.builder(

                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 260,
                    childAspectRatio: 0.7,
                    crossAxisSpacing: HeightSized.h6
                    ,
                    mainAxisSpacing:HeightSized.h8,
                  ),
                  itemCount: 4,
                  itemBuilder: (context,index){
                    return Stack(children: [
                      Align(
                        alignment: const AlignmentDirectional(-1, 1),
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          width: double.infinity,
                          height: 200,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(255, 228, 228, 228),
                                offset: Offset(2, 3),
                                blurRadius: 5,
                                spreadRadius: 0.1,
                              ),
                            ],
                          ),
                          child: Align(
                            alignment: const AlignmentDirectional(0, 0.95),
                            child: SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(primary: ColorManager.primary),
                                onPressed: () {
                                  //add cart
                                },
                                child: const Text(
                                  'Add To Cart',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-1, -4),
                        child: Image.asset(plantsModel[index].image,
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-0.2, 0.8),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              plantsModel[index].name,
                              overflow: TextOverflow.ellipsis,
                              style:  TextStyle(
                                  fontWeight: FontWeightManager.semiBold,
                                  fontSize: FontSized.s14),
                            ),
                            Text(
                              "${plantsModel[index].point}" " Point",
                              style:  TextStyle(
                                fontWeight: FontWeightManager.semiBold,
                                fontSize: FontSized.s14,
                                // fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                      Align(
                          alignment: const AlignmentDirectional(0.75, -0.2),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              InkWell(
                                onTap: () {
                                  //cubit.productDecreaseQuantity(index);
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                    color: const Color.fromRGBO(245, 245, 245, 1),
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                  child: Icon(
                                    Icons.remove,
                                    size: 2.5.h,
                                    color: ColorManager.textColor1,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 5),
                              Text(
                                // "${cubit.allProductModel!.data[index].quantity}" ,
                                "-1",
                                style:const  TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(width: 5),
                              InkWell(
                                onTap: () {
                                  //cubit.productIncreaseQuantity(index);

                                },
                                child: Container(
                                  padding: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                    color: const Color.fromRGBO(245, 245, 245, 1),
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                  child: Icon(
                                    Icons.add,
                                    size: 2.5.h,
                                    color: ColorManager.textColor1,
                                  ),
                                ),
                              ),
                            ],
                          ))
                    ]);
                  }
              ),
            ),

          ],
        ),

      );
    },
    );
  }
}
