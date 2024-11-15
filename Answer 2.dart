//Here’s how you could filter a list of prices:
void main() {
  List<double> prices = [100.0, 200.0, 50.0, 300.0, 150.0];

  // Filter prices greater than 100 using an anonymous function
  List<double> filteredPrices = prices.where((price) => price > 100).toList();

  print(
      "Prices greater than 100: $filteredPrices"); // Output: [200.0, 300.0, 150.0]
}
