class Car extends Vehicle
{
    private float speed;

    public Car()
    {
        super();
        speed = 100;
    }

    public Car(String m, String d, int y, float s)
    {
        super(m, d, y);
        speed = s;
    }

    public double getSpeed()
    {
        return speed;
    }

    public void setSpeed (float s)
    {
        speed = s;
    }

    public void print()
    {
        super.print();
        System.out.println(", Speed: " + speed);
    }
}