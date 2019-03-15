package it.nextre.academy.springdemo.config.initDb;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.core.io.InputStreamResource;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.EncodedResource;
import org.springframework.jdbc.datasource.init.ScriptUtils;
import org.springframework.stereotype.Component;

import javax.sql.DataSource;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.charset.Charset;
import java.sql.SQLException;

@Component
public class SqlUtil {

    @Autowired
    private DataSource datasource;

    public void runSqlFile(String SQLFileName) {

        Resource resource=null;

        try {
            resource = new InputStreamResource(new FileInputStream(SQLFileName));
        } catch (IOException e) {
            e.printStackTrace();
        }

        EncodedResource encodedResource = new EncodedResource(resource, Charset.forName("UTF-8"));
        try {
            ScriptUtils.executeSqlScript(datasource.getConnection(), encodedResource);
        } catch (SQLException ex) {
            throw new RuntimeException(ex);
        }
    }



}