void main() {
  // List of item prices
  List<double> prices = [100.0, 200.0, 150.0, 300.0];
  // Corresponding list of discount rates (in percentage)
  List<double> discounts = [0.1, 0.2, 0.15, 0.05]; // 10%, 20%, 15%, and 5%

  // Apply discounts recursively
  List<double> discountedPrices = applyDiscounts(prices, discounts);
  print("Discounted Prices: $discountedPrices");
}

/// Higher-order function that accepts prices and discounts, returning a list of discounted prices
List<double> applyDiscounts(List<double> prices, List<double> discounts) {
  return prices.asMap().entries.map((entry) {
    int index = entry.key;
    double price = entry.value;
    return applyDiscountRecursively(price, discounts[index]);
  }).toList();
}

/// Recursive function to apply discount to a price
double applyDiscountRecursively(double price, double discountRate,
    {int iterations = 1}) {
  if (iterations == 0) {
    return price;
  } else {
    double discountedPrice = price * (1 - discountRate);
    return applyDiscountRecursively(discountedPrice, discountRate,
        iterations: iterations - 1);
  }
}
