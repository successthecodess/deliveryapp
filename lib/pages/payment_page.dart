import 'package:deliveryapp/components/my_button.dart';
import 'package:deliveryapp/pages/delivery_progress_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class PaymentPage extends StatefulWidget{
  const PaymentPage({super.key});
  @override
  State<StatefulWidget> createState() => _PaymentPageState();
}
class _PaymentPageState extends State<PaymentPage>{
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName ='';
  String cvvCode='';
  bool isCvvFocused = false;

  void userTappedPay(){
    if(formKey.currentState!.validate()){
      showDialog(context: context,
       builder: (context) => AlertDialog(
        title: const Text("Confirm payment"),
        content: SingleChildScrollView(
          child: ListBody(
            children: [
              Text("Card Number: $cardNumber"),
              Text("Expiry Date: $expiryDate"),
              Text("Card Holder Name: $cardNumber"),
              Text("Card Number: $cardNumber"),
            ],
          )
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
      
            child: const Text("Cancel"),
          ),

           TextButton(
            onPressed: () {
              Navigator.pop(context);
               Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DeliveryProgressPage()
                ),
            );
            },
           
            child: const Text("Yes"),
          ),
        ],
       ));
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text("Checkout"),
      ),
      body: Column(
        children: [
        CreditCardWidget(
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode:cvvCode,
            showBackView: isCvvFocused,
            onCreditCardWidgetChange: (p0){},
          ),
          CreditCardForm(
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode:cvvCode,
            
            onCreditCardModelChange: (data){
              setState(() {
                cardNumber= data.cardNumber;
                expiryDate= data.expiryDate;
                cardHolderName = data.cardHolderName;
                cvvCode = data.cvvCode;
              });
            },
            formKey: formKey,
          ),
          const Spacer(),
          MyButton(text: "Pay now", onTap: userTappedPay),
          const SizedBox(height: 25,)
        ],
      ),
    );
  }
}