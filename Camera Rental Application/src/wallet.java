
class User1 {
    private double walletBalance;

    public User1(double walletBalance) {
        this.walletBalance = walletBalance;
    }

    public double getWalletBalance() {
        return walletBalance;
    }

    public void setWalletBalance(double walletBalance) {
        this.walletBalance = walletBalance;
    }

    public void addMoneyToWallet(double amount) {
        walletBalance += amount;
        System.out.println("Amount added successfully. Current wallet balance: " + walletBalance);
    }
}