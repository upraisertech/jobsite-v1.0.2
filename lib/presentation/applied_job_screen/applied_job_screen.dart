import '../applied_job_screen/widgets/listclock2_item_widget.dart';
import '../applied_job_screen/widgets/listdescription2_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:jobsite/core/app_export.dart';
import 'package:jobsite/widgets/app_bar/appbar_image.dart';
import 'package:jobsite/widgets/app_bar/appbar_title.dart';
import 'package:jobsite/widgets/app_bar/custom_app_bar.dart';
import 'package:jobsite/widgets/custom_button.dart';

class AppliedJobScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA70002,
            appBar: CustomAppBar(
                height: getVerticalSize(50),
                leadingWidth: 48,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24, top: 13, bottom: 13),
                    onTap: () {
                      onTapArrowleft8(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Job Details"),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgBookmark,
                      margin:
                          getMargin(left: 16, top: 13, right: 16, bottom: 13))
                ]),
            body: Container(
                height: getVerticalSize(718),
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Align(
                      alignment: Alignment.centerRight,
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                margin: getMargin(right: 24),
                                padding: getPadding(
                                    left: 72, top: 24, right: 72, bottom: 24),
                                decoration: AppDecoration.outlineIndigo50
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder16),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Card(
                                          clipBehavior: Clip.antiAlias,
                                          elevation: 0,
                                          margin: EdgeInsets.all(0),
                                          color: ColorConstant.gray100,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder39),
                                          child: Container(
                                              height: getSize(79),
                                              width: getSize(79),
                                              padding: getPadding(all: 19),
                                              decoration: AppDecoration
                                                  .fillGray100
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder39),
                                              child: Stack(children: [
                                                CustomImageView(
                                                    svgPath:
                                                        ImageConstant.imgFilter,
                                                    height: getSize(40),
                                                    width: getSize(40),
                                                    alignment: Alignment.center)
                                              ]))),
                                      Padding(
                                          padding: getPadding(top: 16),
                                          child: Text("Senior UI/UX Designer",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPlusJakartaSansBold14Bluegray900
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.07)))),
                                      Padding(
                                          padding: getPadding(top: 7),
                                          child: Text("Shopee Sg",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPlusJakartaSansMedium12
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.06)))),
                                      Padding(
                                          padding: getPadding(left: 1, top: 12),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                CustomButton(
                                                    height: getVerticalSize(28),
                                                    width:
                                                        getHorizontalSize(69),
                                                    text: "Fulltime",
                                                    variant: ButtonVariant
                                                        .FillGray100,
                                                    shape: ButtonShape
                                                        .RoundedBorder8,
                                                    fontStyle: ButtonFontStyle
                                                        .InterRegular12Bluegray400),
                                                CustomButton(
                                                    height: getVerticalSize(28),
                                                    width:
                                                        getHorizontalSize(104),
                                                    text: "Two days ago",
                                                    margin: getMargin(left: 9),
                                                    variant: ButtonVariant
                                                        .FillGray100,
                                                    shape: ButtonShape
                                                        .RoundedBorder8,
                                                    fontStyle: ButtonFontStyle
                                                        .InterRegular12Bluegray400)
                                              ]))
                                    ])),
                            Container(
                                height: getVerticalSize(124),
                                child: ListView.separated(
                                    padding: getPadding(
                                        left: 15, top: 24, right: 48),
                                    scrollDirection: Axis.horizontal,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                          height: getVerticalSize(54));
                                    },
                                    itemCount: 3,
                                    itemBuilder: (context, index) {
                                      return Listclock2ItemWidget();
                                    })),
                            Container(
                                height: getVerticalSize(69),
                                child: ListView.separated(
                                    padding: getPadding(top: 25),
                                    scrollDirection: Axis.horizontal,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                          height: getVerticalSize(12));
                                    },
                                    itemCount: 3,
                                    itemBuilder: (context, index) {
                                      return Listdescription2ItemWidget();
                                    })),
                            Padding(
                                padding: getPadding(top: 20),
                                child: Text("Job Description",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtPlusJakartaSansBold16Bluegray900
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.08)))),
                            Container(
                                width: getHorizontalSize(319),
                                margin: getMargin(left: 7, top: 13, right: 24),
                                child: Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nec porttitor magna luctus tortor. Pretium malesuada lobortis consequat et mauris. \nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nec porttitor magna luctus tortor. Pretium malesuada lobortis consequat et mauris. \nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nec porttitor magna luctus tortor. Pretium malesuada lobortis consequat et mauris. ",
                                    maxLines: null,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtPlusJakartaSansMedium14Gray600
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.07))))
                          ])),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          padding: getPadding(
                              left: 24, top: 28, right: 24, bottom: 28),
                          decoration: AppDecoration.gradientGray50Gray5000,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomButton(
                                    height: getVerticalSize(56),
                                    text: "Applied",
                                    margin: getMargin(bottom: 12),
                                    variant: ButtonVariant.FillBluegray5001,
                                    padding: ButtonPadding.PaddingAll17,
                                    fontStyle: ButtonFontStyle
                                        .PlusJakartaSansSemiBold16Bluegray300_1)
                              ])))
                ]))));
  }

  onTapArrowleft8(BuildContext context) {
    Navigator.pop(context);
  }
}
