class DiscountCount {
  static int mathDiscount(int priceBeforeDiscount, int discount) {
    double priceAfterDiscount =
        priceBeforeDiscount - (priceBeforeDiscount * (discount / 100));
    return priceAfterDiscount.toInt();
  }
}