import javax.xml.transform.*;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import java.io.File;

public class Main {

    public static void main(String[] args) throws TransformerException {
        Main.transform(new File("1.xml"), new File("temp.xsl"), new File("2.xml"));
        Main.transform(new File("2.xml"), new File("temp2.xsl"), new File("3.xml"));
    }
    public static void transform(File in, File template, File out) throws TransformerException {

        Source xslt = new StreamSource(template);
        Transformer transformer = TransformerFactory.newInstance().newTransformer(xslt);
        transformer.setOutputProperty(OutputKeys.INDENT, "yes");

        Source xml = new StreamSource(in);
        transformer.transform(xml, new StreamResult(out));
    }
}
