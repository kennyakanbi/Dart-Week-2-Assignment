//Here’s how you could structure such a function:
double calculateTotal(double subtotal, {double taxRate = 0.0}) {
  return subtotal + (subtotal * taxRate);
}

void main() {
  double subtotal = 100.0;
  
  // Calculate total without specifying tax (default is 0%)
  double totalWithoutTax = calculateTotal(subtotal);
  print("Total without tax: \$${totalWithoutTax.toStringAsFixed(2)}"); // Outputs: 100.00

  // Calculate total with a 5% tax
  double totalWithTax = calculateTotal(subtotal, taxRate: 0.05);
  print("Total with 5% tax: \$${totalWithTax.toStringAsFixed(2)}"); // Outputs: 105.00
}
