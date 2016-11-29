package beans;

/**
 * Created by sunning on 2016/11/28.
 */
public class LoginBean {
    public boolean validate(String username, String userpass) {
        System.out.println(username);
        System.out.println(userpass);
        String tmp = "123";
        if (username.equals(tmp) && userpass.equals(tmp)) {
            System.out.println("success");
            return true;
        } else {
            System.out.println("failure");
            return false;
        }
    }
}
