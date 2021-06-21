import 'package:http/http.dart' as http;
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
const apiKey = '0391B2D8-9E85-4A4A-AF6D-0766ACFDEB6C';
const urlStarter = 'https://rest.coinapi.io/v1/exchangerate/';
const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

class CoinData {
  double convert() {
    var url = Uri.parse('$urlStarter/${cryptoList[0]}/${currenciesList[19]}');
    





    return 0.0;
  }
}
