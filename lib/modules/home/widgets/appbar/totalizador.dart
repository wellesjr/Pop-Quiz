
import 'package:flutter/material.dart';
import 'package:popquiz/modules/home/widgets/appbar/appbar_controller.dart';

class Totalizador extends StatefulWidget {
  final int label;
  final double value;
  final bool isLoading;
  Totalizador(
      {Key? key,
      required this.label,
      required this.value,
      this.isLoading = false})
      : assert([1, 2].contains(label)),
        super(key: key);

  @override
  State<Totalizador> createState() => _TotalizadorState();
}

class _TotalizadorState extends State<Totalizador> {
  final controller = AppBarController();

  @override
  void initState() {
    controller.getDashdboard();
    controller.listen((state) {
      setState(() {});
    });
    super.initState();
  }

  final config = {
    //Crédito
    1: {
     // "colors": AppThemes.gradients.credito,
      "image": "assets/images/receber.png",
     // "styles": AppThemes.textStyles.totalizadorCredito,
    },
    //Debito
    2: {
    //  "colors": AppThemes.gradients.debito,
      "image": "assets/images/pagar.png",
     // "styles": AppThemes.textStyles.totalizadorDebito
    },
  };

  get image => config[widget.label]!['image']!;

  get colors => config[widget.label]!['colors']!;

  get styles => config[widget.label]!['styles']!;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 168,
        width: 156,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 48,
                width: 48,
                child: Center(
                  child: SizedBox(
                      height: 32, width: 32, child: Image.asset(image)),
                ),
                decoration: BoxDecoration(
                  gradient: colors,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const SizedBox(height: 40),
              Text(widget.label == 1 ? 'Crédito' : 'Debito',
                  //style: AppThemes.textStyles.totalizador
                  ),
              const SizedBox(height: 10),
              if (widget.isLoading == false) ...[
                //LoadingWidget(size: const Size(100, 24))
              ] else ...[
                Text("R\$ ${widget.value.toStringAsFixed(2)}", style: styles)
              ],
            ],
          ),
        ),
        decoration: BoxDecoration(
            color: const Color(0xFFFFFFFF),
            borderRadius: BorderRadius.circular(10),
            border:
                const Border.fromBorderSide(BorderSide(color: Color(0xFF696968)))));
  }
}
