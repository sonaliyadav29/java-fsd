
class Camera {
    private String brand;
    private String model;
    private double rentAmount;

    public Camera(String brand, String model, double rentAmount) {
        this.brand = brand;
        this.model = model;
        this.rentAmount = rentAmount;
    }

    public String getBrand() {
        return brand;
    }

    public String getModel() {
        return model;
    }

    public double getRentAmount() {
        return rentAmount;
    }
}
