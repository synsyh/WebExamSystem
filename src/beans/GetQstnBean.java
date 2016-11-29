package beans;

/**
 * Created by sunning on 2016/11/28.
 */
public class GetQstnBean {
    public String content;
    public String[] picked;

    public void getQstn(String content, String[] picked) {
        this.content = content;
        this.picked = picked;
        System.out.println(picked);
    }
}
