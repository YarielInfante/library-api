package com.gbh.library.util.formatter;

import com.gbh.library.domain.Page;
import com.gbh.library.annotation.*;
import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;

import javax.ws.rs.core.MediaType;
import java.io.IOException;
import java.io.StringWriter;
import java.util.HashMap;
import java.util.Map;

@Component("PageFormatHTML")
public class PageFormatHTML implements PageFormatter<String> {

    @Override
    public String format(Page page) {

        Configuration configuration = new Configuration();
        configuration.setClassForTemplateLoading(PageFormatHTML.class, "/");
        configuration.setDefaultEncoding("UTF-8");

        Map<String, Object> input = new HashMap<>();
        input.put("title", page.getBook().getTittle());
        input.put("author", page.getBook().getAuthor());
        input.put("content", page.getContent().replace("\n","</br>"));
        input.put("current_page", page.getNumber());

        String output = "";

        try {
            Template template = configuration.getTemplate("templates/page.ftl");


            try (StringWriter out = new StringWriter()) {

                template.process(input, out);
                output = out.getBuffer().toString();

                out.flush();
            } catch (TemplateException e) {
                e.printStackTrace();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

        return output;
    }

    @Override
    public MediaType getMediaType() {
        return MediaType.TEXT_HTML_TYPE;
    }
}
