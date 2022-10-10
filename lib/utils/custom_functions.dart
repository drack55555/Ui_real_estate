import 'package:intl/intl.dart';

//"Number Format" : Creates a NumberFormat for currencies, using the simple symbol
                // for the currency if one is available (e.g. $, €), so it should only 
                //be used if the short currency symbol will be unambiguous.
String formatCurrency(num amount, {int decimalCount= 0}){
  final formatCurrency= NumberFormat.simpleCurrency(locale: 'HI', decimalDigits: decimalCount);
  return formatCurrency.format(amount);
}