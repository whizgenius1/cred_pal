import 'package:intl/intl.dart';

String formatCurrency({required num amount, bool showSymbol = true}) {
  final nairaFormat = NumberFormat.currency(
    locale: 'en_NG',
    decimalDigits: 0,
    symbol: showSymbol ? '₦' : '',
  );
  return nairaFormat.format(amount);
}
