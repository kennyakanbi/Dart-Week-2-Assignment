//Anonymous function to filter prices within a specific range:

void main() {
  List<double> prices = [100.0, 200.0, 50.0, 300.0, 150.0];

  // Filter prices between 100 and 200
  List<double> rangePrices = prices.where((price) => price >= 100 && price <= 200).toList();

  print("Prices between 100 and 200: $rangePrices"); // Output: [100.0, 200.0, 150.0]
}
