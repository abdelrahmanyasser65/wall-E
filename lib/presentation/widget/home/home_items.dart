import 'package:earthkeepers/app/logic/auth/cubit.dart';
import 'package:earthkeepers/app/logic/auth/state.dart';
import 'package:earthkeepers/presentation/resources/color_manager.dart';
import 'package:earthkeepers/presentation/resources/fonts.dart';
import 'package:earthkeepers/presentation/resources/values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
class HomeItems extends StatelessWidget {
  const HomeItems({Key? key,  required this.model, required this.indexS}) : super(key: key);
  final List model;
  final int indexS;
  @override
  Widget build(BuildContext context) {

    return BlocConsumer<AuthCubit,AuthState>(
      listener: (context,state){},
      builder: (context,state){
        return GridView.builder(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(
              vertical: HeightSized.h2,
              horizontal: HeightSized.h6),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            childAspectRatio: 0.67,
            crossAxisSpacing: HeightSized.h8,
            mainAxisSpacing:HeightSized.h12,
          ),
          itemCount: model.length,
          itemBuilder: (BuildContext context, int index) {
            return Stack(children: [
              Align(
                alignment: const AlignmentDirectional(-1, 1),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  width: double.infinity,
                  height: 180,
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
                alignment: const AlignmentDirectional(-0.9, -1.2),
                child: Image.asset(model[index].image,
                  width: 100,
                  height: 150,
                  fit: BoxFit.contain,
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.2, 0.35),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      model[index].name,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                     Text(
                      "${model[index].point}" " Point",
                      style:  TextStyle(
                        fontSize: FontSized.s16,
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
          },
        );
      },
    );
  }
}
