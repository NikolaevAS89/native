package timestop;

/**
 * Created by Alexander on 28.02.2017.
 */
public class Main {

    private String val;

    public Main set(String val){
        this.val = val;
        return this;
    }

    public native String get();

    public static void main(String[] args){
        System.out.println(new Main().set("her").get());
        System.out.println("--------------------------------------");
        for (String d : System.getenv().keySet()) {
            System.out.println(d+"="+System.getenv().get(d));
        }
        System.out.println("--------------------------------------");
        System.out.println(System.getProperty("PROCESSOR_IDENTIFIER") );
        System.out.println(args[0]);
    }
}
