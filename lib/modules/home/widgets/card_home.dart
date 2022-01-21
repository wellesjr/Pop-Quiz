import 'package:flutter/material.dart';
import 'package:popquiz/modules/home/modules/event_model.dart';


class CardHome extends StatelessWidget {
  final EventModel model;

  CardHome({
    Key? key,
    required this.model,
  })  : assert([1, 2].contains(model.type)),
        super(key: key);

  final config = {
    //Crédito
    1: {
     // "colors": AppThemes.gradients.credito,
      "image": "assets/images/receber.png",
    },
    //Debito
    2: {
     // "colors": AppThemes.gradients.debito,
      "image": "assets/images/pagar.png",
    },
  };

  get image => config[model.type]!['image']!;
  get colors => config[model.type]!['colors']!;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {},
        child: ListTile(
          leading: Container(
            height: 48,
            width: 48,
            child: Center(
                child: SizedBox(
                    height: 32, width: 32, child: Image.asset(image))),
            decoration: BoxDecoration(
              gradient: colors,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          title: Text(model.title, //style: AppThemes.textStyles.cardhometitle
          ),
          subtitle: const Text(
              //DateFormat("d 'de' MMMM 'de' y", 'pt_BR').format(model.created),
             // style: AppThemes.textStyles.cardhomesubtitle
             ""),
          trailing: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(""
                  //NumberFormat.simpleCurrency(locale: 'pt_BR').format(model.value),
                  //style: AppThemes.textStyles.cardhomemoney
                  ),
              const SizedBox(height: 5),
              Text("${model.people} pessoa${model.people == 1 ? '' : 's'}",
                  //style: AppThemes.textStyles.cardhomepeople
                  )
            ],
          ),
        ),
      ),
    );
  }
}
