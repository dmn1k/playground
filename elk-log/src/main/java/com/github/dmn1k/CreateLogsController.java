
package com.github.dmn1k;

import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@Slf4j(topic = "monitored")
@RestController
@RequestMapping(path = "/logs")
public class CreateLogsController {
    @RequestMapping(method = RequestMethod.POST)
    public ResponseEntity<?> addLog(@RequestBody String body){
        log.info(createLogString(body));
        return ResponseEntity.ok().build();
    }
    
    private static String createLogString(String content){
        StringBuilder sb = new StringBuilder();
        return sb.append("timestamp=")
                .append(System.currentTimeMillis())
                .append("|content=")
                .append(content)
                .append("|awz=")
                .append("42").toString();
    }
}
