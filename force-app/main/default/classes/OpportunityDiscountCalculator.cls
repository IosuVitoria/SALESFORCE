public class OpportunityDiscountCalculator {
    public static Decimal calculateDiscount(Decimal amount, Decimal discountPercentage) {
        if (amount == null || discountPercentage == null || discountPercentage < 0 || discountPercentage > 100) {
            return 0;
        }
        Decimal discountAmount = amount * (discountPercentage / 100);
        return amount - discountAmount;
    }
}
