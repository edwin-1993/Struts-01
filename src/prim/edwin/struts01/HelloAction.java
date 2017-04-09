package prim.edwin.struts01;

/**
 * Created by Edwin_1993 on 2017/4/7.
 */
public class HelloAction {
    private String name;
    public int testvalue = 100;

    public String execute() throws Exception{
        if (getName().equals("")||getName() == null){
            return "error";
        }
        if (getName().equals("123456")){
            return "numlist";
        }
        return "success";
    }

    public int testInt(){
        return 99;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
