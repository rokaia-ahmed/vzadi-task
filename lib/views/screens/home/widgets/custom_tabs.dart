import 'package:flutter/material.dart';
import 'package:vazadi_task/core/constants/app_string.dart';
import 'package:vazadi_task/core/utiles/app_size.dart';
import 'package:vazadi_task/views/screens/home/widgets/custom_categories.dart';
import '../../../../core/utiles/app_colors.dart';

class CustomTabs extends StatefulWidget {
   const CustomTabs({super.key});

  @override
  State<CustomTabs> createState() => _CustomTabsState();
}
class _CustomTabsState extends State<CustomTabs>  with TickerProviderStateMixin {
 final List<Map<String,dynamic>> selectItem = [
   {'label':AppString.category,
    'isSelected': true ,
   },
   {'label':AppString.services,
     'isSelected': false ,
   },
   {'label':AppString.orders,
     'isSelected': false ,
   },
 ];
  List<Widget> pages=<Widget>[
     CustomCategories(),
   const Center(child:Text( "services",)),
   const Center(child: Text( "orders",)),
  ];

 PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          padding:const EdgeInsets.symmetric(vertical: 7) ,
          width: double.infinity,
          decoration:BoxDecoration(
            borderRadius:BorderRadius.circular(12),
            border: Border.all(
              color: AppColors.tabsGreyColor,
              width: 1
            ),
          ) ,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ListView.separated(
                itemCount: selectItem.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder:(context,index){
                  return  ChoiceChip(
                    padding: const EdgeInsets.symmetric(horizontal: 5,),
                    selectedColor:AppColors.primaryColor ,
                    disabledColor: AppColors.tabsGreyColor,
                    checkmarkColor:Colors.red ,
                    label: Text(selectItem[index]['label'],
                    style:TextStyle(
                      color: selectItem[index]['isSelected']==true ?
                          Colors.white:null,) ,
                    ),
                    onSelected:(select){
                      for(var item in selectItem){
                        item['isSelected']=false;
                      }
                      selectItem[index]['isSelected'] = select ;
                      pageController.jumpToPage(index);
                      setState(() {});
                    } ,
                    selected: selectItem[index]['isSelected'],
                  );
                },
                separatorBuilder: ( context,  index) {
                  return const SizedBox(width: 15,);
                },
              ),
            ],
          ),
        ),
        SizedBox(height: context.height*0.03,),
        SizedBox(
          height: context.height*0.475,
          child: PageView(
            controller:pageController ,
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: [
              ...pages
            ],
          ),
        ),
      ],
    );
  }
}

