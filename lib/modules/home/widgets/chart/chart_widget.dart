import 'package:flutter/material.dart';
import 'package:popquiz/theme/app_theme.dart';

class ChartWidget extends StatefulWidget {
  final double percent;
  const ChartWidget({Key? key, required this.percent}) : super(key: key);

  @override
  _ChartWidgetState createState() => _ChartWidgetState();
}

class _ChartWidgetState extends State<ChartWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  void initAnimation() {
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 5));
    _animation =
        Tween<double>(begin: 0.0, end: widget.percent).animate(_controller);
    _controller.forward();
  }

  @override
  void initState() {
    initAnimation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 80,
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, _) => Stack(
          children: [
            Center(
              child: SizedBox(
                height: 80,
                width: 80,
                child: CircularProgressIndicator(
                  strokeWidth: 10,
                  value: 50,
                  //_animation.value,
                  backgroundColor: AppTheme.colors.animatorSegundary,
                  valueColor: AlwaysStoppedAnimation<Color>(
                      AppTheme.colors.animatorPrimary),
                ),
              ),
            ),
            Center(
              child: Text(
                '${(_animation.value * 100).toInt()}%',
                style: AppTheme.textStyles.textChart,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
