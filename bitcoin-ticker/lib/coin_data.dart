import 'package:bitcoin_ticker/services/networking.dart';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

// https://rest.coinapi.io/v1/exchangerate/BTC/USD?apikey=028671E4-2751-49F4-BB8D-B46464DD1E29
const apiKey = '028671E4-2751-49F4-BB8D-B46464DD1E29';
const baseUrl = 'https://rest.coinapi.io/v1/exchangerate';

class CoinData {
  Future<dynamic> getCoinData(String currencyDest) async {
    Map<String, String> values = new Map<String, String>();

    for (var coin in cryptoList) {
      NetworkHelper networkHelper = NetworkHelper('$baseUrl/$coin/$currencyDest?apiKey=$apiKey');
      var coinData = await networkHelper.getData();
      String coinRate = coinData['rate'].toStringAsFixed(2);
      values[coin] = coinRate;
    }

    return values;
  }
}
