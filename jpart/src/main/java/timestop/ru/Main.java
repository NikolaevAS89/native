package timestop.ru;

/**
 * Created by Alexander on 28.02.2017.
 */
public class Main {

    private String val;

    static {
        System.loadLibrary("spil");
    }

    public Main set(String val) {
        this.val = val;
        return this;
    }

    public String getV() {
        return val;
    }

    public native String get();

    public static void main(String[] args) {
        System.out.println(new Main().set("her").get());
    }
}
