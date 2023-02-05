package com.loiane.controller;

import com.loiane.response.XmlResponse;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class XmlController {
    @GetMapping(value = "/xml", produces = MediaType.APPLICATION_XML_VALUE)
    public XmlResponse getXmlData() {
        XmlResponse response = new XmlResponse();
        response.setMessage("This is a message in XML format");
        return response;
    }
} // end class
