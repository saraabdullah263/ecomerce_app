import 'package:ecomerce_app/common/app_color.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onPressed, required this.text});
  final void Function()? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: MediaQuery.of(context).size.width * 0.1,
        left: MediaQuery.of(context).size.width * 0.1,
        top: MediaQuery.of(context).size.width * 0.08,
      ),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
                onPressed: onPressed,
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.primaryColor,
                    disabledBackgroundColor:AppColor.primaryColor,
                    fixedSize: Size(317, 55),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    )),
                child: Text(
                  text,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                )),
          ),
        ],
      ),
    );
    ;
  }
}
