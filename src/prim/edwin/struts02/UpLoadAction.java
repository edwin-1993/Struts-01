package prim.edwin.struts02;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import javax.servlet.Servlet;
import java.io.File;

/**
 * Created by Edwin_1993 on 2017/4/9.
 */
public class UpLoadAction extends ActionSupport {
    private static final long serialVersionUID = 1L;
//    相当于java类的身份证。主要用于版本控制。
//    serialVersionUID作用是序列化时保持版本的兼容性，即在版本升级时反序列化仍保持对象的唯一性。
//    有两种生成方式：
//    一个是默认的1L，比如：private static final long serialVersionUID = 1L;
//    一个是根据类名、接口名、成员方法及属性等来生成一个64位的哈希字段，比如：
//    private static final long serialVersionUID = xxxxL;

    private String upLoader;

    private File upLoad;
    private String upLoadContentType;
    private String upLoadFileName;
//    文件、文件名、文件类型，这3个变量的命名有一定规则，否则会出现空指针错误。
//    此规则为，如果“文件”这个变量被命名为 xyz，则“文件名”必须命名为 xyzFileName，“文件类型”必须被命名为 xyzContentType。

    private String savePath;

    public String execute() throws Exception{

        String realPath = getSavePath();//获取真实路径。

        if (upLoad != null){
            File saveFile = new File(realPath,getUpLoadFileName());
            //通过路径和文件名创建File实例。
            if (!saveFile.getParentFile().exists()){
//                boolean mkdirResult = saveFile.getParentFile().mkdir();
                saveFile.getParentFile().mkdir();
                //若路径不存在则创建。
            }
            FileUtils.copyFile(upLoad,saveFile);

            ActionContext.getContext().put("message","upload succeed");
            //put入map中成为一个key-value
        }

        return "success";
    }

    public String getUpLoader() {
        return upLoader;
    }

    public void setUpLoader(String upLoader) {
        this.upLoader = upLoader;
    }

    public File getUpLoad() {
        return upLoad;
    }

    public void setUpLoad(File upLoad) {
        this.upLoad = upLoad;
    }

    public String getUpLoadContentType() {
        return upLoadContentType;
    }

    public void setUpLoadContentType(String upLoadContentType) {
        this.upLoadContentType = upLoadContentType;
    }

    public String getUpLoadFileName() {
        return upLoadFileName;
    }

    public void setUpLoadFileName(String upLoadFileName) {
        this.upLoadFileName = upLoadFileName;
    }

    public String getSavePath() {
        return ServletActionContext.getServletContext().getRealPath(savePath);
    }

    public void setSavePath(String savePath) {
        this.savePath = savePath;
    }
}
