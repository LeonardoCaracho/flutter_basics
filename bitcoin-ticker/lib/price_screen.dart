import 'package:bitcoin_ticker/coin_data.dart';
import 'package:flutter/material.dart';

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {

  String selectedCurrency = 'USD';
  var coinValues = new Map<String, String>();
  bool isWaiting = false;


  @override
  void initState() {
    super.initState();
    isWaiting = true;
    getData();
  }

  void getData() async {
    var data = await CoinData().getCoinData(selectedCurrency);
    updateUI(data);
  }

  void updateUI(dynamic coinData) {
    setState(() {
      if (coinData == null) {
        return;
      }

      coinValues = coinData;
      isWaiting = false;
    });
  }

  List<DropdownMenuItem<String>> getDropdownItems() {
    List<DropdownMenuItem<String>> dropdownsList = [];

    for (String currency in currenciesList) {
      dropdownsList.add(
        DropdownMenuItem(
          child: Text(currency),
          value: currency,
        ));
    }

    return dropdownsList;
  }

  @override
  Widget build(BuildContext context) {

    getDropdownItems();

    return Scaffold(
      appBar: AppBar(
        title: Text('🤑 Coin Ticker'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              CardCoin(
                currentValue: !isWaiting ? coinValues['BTC'] : '?',
                currentOrigin: 'BTC',
              ),
              CardCoin(
                currentValue: !isWaiting ? coinValues['ETH'] : '?',
                currentOrigin: 'ETH',
              ),
              CardCoin(
                currentValue: !isWaiting ? coinValues['LTC'] : '?',
                currentOrigin: 'LTC',
              ),
            ],
          ),

          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            child: DropdownButton<String>(
              value: selectedCurrency,
              items: getDropdownItems(),
              onChanged: (value) {
                setState(() {
                  selectedCurrency = value;
                });
                getData();
              },
            ),
          ),
        ],
        
      ),
    );
  }
}



class CardCoin extends StatelessWidget {
  const CardCoin({
    Key key,
    @required this.currentValue,
    @required this.currentOrigin,
  }) : super(key: key);

  final String currentValue;
  final String currentOrigin;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
        child: Card(
        color: Colors.lightBlueAccent,
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
          child: Text(
            '1 $currentOrigin = $currentValue',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
