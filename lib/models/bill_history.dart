class BillHistory {
  final String id;
  final double billAmount;
  final DateTime calculationDate;
  final List<dynamic> results;

  BillHistory({
    required this.id,
    required this.billAmount,
    required this.calculationDate,
    required this.results,
  });
}