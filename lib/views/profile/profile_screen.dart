import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/lists.dart';
import 'package:emart_app/views/profile/components/details_card.dart';
import 'package:emart_app/widgets_common/bg_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              // edit profile button
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                    alignment: Alignment.topRight,
                    child: Icon(
                      Icons.edit,
                      color: whiteColor,
                    )).onTap(() {}),
              ),

              // user deatil section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  children: [
                    Image.asset(
                      imgProfile2,
                      width: 100,
                      fit: BoxFit.cover,
                    ).box.roundedFull.clip(Clip.antiAlias).make(),
                    10.widthBox,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          "dummy user"
                              .text
                              .fontFamily(semibold)
                              .color(whiteColor)
                              .make(),
                          "customer@example.com".text.white.make(),
                        ],
                      ),
                    ),
                    OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            side: BorderSide(
                          color: whiteColor,
                        )),
                        onPressed: () {},
                        child: "Logout".text.fontFamily(semibold).white.make())
                  ],
                ),
              ),
              20.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DetailsCard(
                    width: context.screenWidth / 3.4,
                    count: "00",
                    title: "in your cart",
                  ),
                  DetailsCard(
                    width: context.screenWidth / 3.4,
                    count: "56",
                    title: "in your wishlist",
                  ),
                  DetailsCard(
                    width: context.screenWidth / 3.4,
                    count: "515",
                    title: "your orders",
                  ),
                ],
              ),

              // Buttons Section
              // 35.heightBox,
              ListView.separated(
                shrinkWrap: true,  // columen ke andar the tabhi isko true karna padta hai
                separatorBuilder: (context, index) {
                  return Divider(color: lightGrey,);
                },
                itemCount: profileButtonList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Image.asset(profileButtonIcon[index], width: 22,),
                    title: "${profileButtonList[index]}".text.fontFamily(semibold).color(darkFontGrey).make(),
                  );
                },
              ).box.rounded.white.margin(EdgeInsets.all(12)).padding(EdgeInsets.symmetric(horizontal: 16)).shadowSm.make().box.color(redColor).make(),
            ],
          )),
    ));
  }
}
