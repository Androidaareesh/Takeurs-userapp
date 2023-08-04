import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:takeurs_userapp/utlis_color/utlis_color.dart';

class CategoryCard extends StatelessWidget {
  final String image;
  final String title;
  final press;
  const CategoryCard(
      {Key? key, required this.image, required this.title, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        decoration: BoxDecoration(
            color:AppColors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow:  [
              BoxShadow(                                
                offset: const Offset(4,4),
                blurRadius: 10,
                spreadRadius: 1,
                color:Colors.grey.shade600,
              ),
             
            ]),       
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: press,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [ 
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.favorite_border_outlined,
                      color: AppColors.black,),
                    ],
                  ),

                  Image.asset(
                    image,
                    height: 100,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style:  const TextStyle(fontSize: 24,
                         color: Colors.black)
                         ),
                         ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                           child: Container(
                            height: 30,
                            width: 30,
                            color: Colors.blue,
                            child: const Icon(
                              Icons.add_circle_outline_outlined,
                              size: 24,
                              color: AppColors.white,)),
                         )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
