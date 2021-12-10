import java.net.*;
import java.io.ByteArrayOutputStream;
import java.net.URL;
// СПАСИБО ЗА ФУНКЦИЮ НИЖЕ Ron Reiter! https://stackoverflow.com/a/14210689
byte[] downloadUrl(URL toDownload) {
    ByteArrayOutputStream outputStream = new ByteArrayOutputStream();

    try {
        byte[] chunk = new byte[4096];
        int bytesRead;
        InputStream stream = toDownload.openStream();

        while ((bytesRead = stream.read(chunk)) > 0) {
            outputStream.write(chunk, 0, bytesRead);
        }

    } catch (IOException e) {
        e.printStackTrace();
        return null;
    }

    return outputStream.toByteArray();
}
String dlUrl(String url){
          String tmpPath="%TEMP%\temp"+random(1111,9999)+".tmp";
   try {
        String u = url;
        URL urly = new URL(u);
        saveBytes(tmpPath,downloadUrl(urly));
    } catch (MalformedURLException e) {
      return e.toString();
    }       
    return tmpPath.toString();
}
void setup(){
   
}

void draw(){
 
}
