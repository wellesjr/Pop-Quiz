import 'package:flutter/material.dart';
import 'package:popquiz/theme/app_theme.dart';

class BottomLoginPage extends StatefulWidget {
  final String label;
  final String image;
  final VoidCallback ontap;
  const BottomLoginPage(
      {Key? key, required this.label, required this.image, required this.ontap})
      : super(key: key);

  @override
  _BottomLoginPageState createState() => _BottomLoginPageState();
}

class _BottomLoginPageState extends State<BottomLoginPage> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.orange,
      highlightColor: Colors.orange,
      onTap: widget.ontap,
      child: Container(
        width: 311,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.fromBorderSide(
                BorderSide(color: AppTheme.colors.button))),
        child: Row(
          children: [
            SizedBox(
              height: 56,
              width: 56,
              child: Image.asset(widget.image),
            ),
            Container(
              width: 1,
              height: 56,
              color: AppTheme.colors.button,
            ),
            SizedBox(
              height: 56,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Text(widget.label, style: AppTheme.textStyles.button),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
