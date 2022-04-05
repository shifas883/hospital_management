import 'package:flutter/material.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({Key? key}) : super(key: key);

  @override
  _PaymentMethodState createState() => _PaymentMethodState();
}
final Paymentoptions=[
  'Creadit / Debit / ATM Card',
  'UPI',
  'By Cash',
  'Net Banking'
];
final PaymentIcons=[
  Icons.credit_card,
  Icons.mobile_friendly,
  Icons.money,
  Icons.food_bank_outlined
];
class _PaymentMethodState extends State<PaymentMethod> {
  int value=0;
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Payment"),),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(

                itemCount: Paymentoptions.length,
                itemBuilder: (context,index){
                  return ListTile(leading:
                  Radio(
                    activeColor: Colors.green,
                    value: index,
                    groupValue: value,
                    onChanged: (i) =>
                        setState(() {
                    value=i as int;
                    }

                    ),
                  ),
                    title: Text(Paymentoptions[index]),
                    trailing: Icon(PaymentIcons[index]),
                  );
                },
              separatorBuilder: (BuildContext context, int index) {
                  return Divider();
            },),

          ),

          ElevatedButton(style: ElevatedButton.styleFrom(
            minimumSize: Size(400, 35),
            maximumSize: Size(400, 35),
          ),
              onPressed: (){}, child: Text("Pay"))

        ],
      ),
    );
  }
}





// DropdownButton<String>(
// items: <String>['A', 'B', 'C', 'D'].map((String value) {
// return DropdownMenuItem<String>(
// value: value,
// child: Text(value),
// );
// }).toList(),
// onChanged: (_) {},
// ),