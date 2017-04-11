package prim.edwin.struts02;

import com.opensymphony.xwork2.ActionSupport;
import com.sun.org.apache.xml.internal.resolver.helpers.FileURL;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import java.io.File;
import java.lang.ref.PhantomReference;

/**
 * Created by Edwin_1993 on 2017/4/11.
 */
public class MultiUpLoadAction extends ActionSupport {
    private static final long serialVersionUID =1L;

    private File[] upLoads;
    private String[] upLoadsContentType;
    private String[] upLoadsFileName;
    private String savePath;

    public String execute() throws Exception{
        String realPath = getSavePath();
        if (upLoads != null){
            File savePath = new File(realPath);//在真实目录下新建文件。
            if (!savePath.exists()){
                savePath.mkdir();
            }
            for (int i = 0; i < upLoads.length; i++){
                File saveFile = new File(savePath,getUpLoadsFileName()[i]);
                FileUtils.copyFile(upLoads[i],saveFile);
            }
            return "success";
        }
        return "error";
    }

    public File[] getUpLoads() {
        return upLoads;
    }

    public void setUpLoads(File[] upLoads) {
        this.upLoads = upLoads;
    }

    public String[] getUpLoadsContentType() {
        return upLoadsContentType;
    }

    public void setUpLoadsContentType(String[] upLoadsContentType) {
        this.upLoadsContentType = upLoadsContentType;
    }

    public String[] getUpLoadsFileName() {
        return upLoadsFileName;
    }

    public void setUpLoadsFileName(String[] upLoadsFileName) {
        this.upLoadsFileName = upLoadsFileName;
    }

    public String getSavePath() {
        return ServletActionContext.getServletContext().getRealPath(savePath);
    }

    public void setSavePath(String savePath) {
        this.savePath = savePath;
    }
}
