package prim.edwin.struts02;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import java.io.FileNotFoundException;
import java.io.InputStream;

/**
 * Created by Edwin_1993 on 2017/4/20.
 */
public class DownLoadAction extends ActionSupport{
    private static final long serialVersionUID = 1L;

    private String downloadPath;
    private String filename;

    public void setDownloadPath(String downloadPath) {
        this.downloadPath = downloadPath;
    }

    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }

    public InputStream getTargetFile() throws FileNotFoundException{
        String realPath = downloadPath+"/"+getFilename();
        return ServletActionContext.getServletContext().getResourceAsStream(realPath);
    }

    public String execute(){
        return "success";
    }

}
