package it.nextre.academy.springdemo.service.impl;


import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Service
public class FileServiceImpl {


    @Autowired
    Logger log;


    public List<String> getSupportedExtensions() {
        String[] imgExt = {"jpg", "png", "gif", "jpeg", "bmp", "webp", "tif", "tiff"};
        return Arrays.asList(imgExt);
    }

    public List<MediaType> getSupportedMediaTypes() {
        List<MediaType> list = new ArrayList<MediaType>();
        list.add(MediaType.IMAGE_JPEG);
        list.add(MediaType.IMAGE_PNG);
        list.add(MediaType.IMAGE_GIF);
        //list.add(MediaType.APPLICATION_OCTET_STREAM);
        return list;
    }

    public String getFileExtension(File file) {

        String name = file.getName().substring(Math.max(file.getName().lastIndexOf('/'),
                file.getName().lastIndexOf('\\')) < 0 ? 0 : Math.max(file.getName().lastIndexOf('/'),
                file.getName().lastIndexOf('\\')));
        int lastIndexOf = name.lastIndexOf(".");
        if (lastIndexOf == -1) {
            return ""; // empty extension
        }
        return name.substring(lastIndexOf + 1); // doesn't return "." with extension
    }

    public boolean isValidImage(MultipartFile img) {
        log.debug("validazione immagine");
        //estensione ok
        String ext = getFileExtension(new File(img.getOriginalFilename())).toLowerCase();
        boolean isExtOk = getSupportedExtensions().contains(ext);
        if (!isExtOk)return isExtOk; //non vado avanti se non è valido
        //mediaType ok
        MediaType mt = MediaType.valueOf(img.getContentType());
        boolean isMtOk = getSupportedMediaTypes().contains(mt);
        return isExtOk && isMtOk;
    }

}//end class
