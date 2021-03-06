package teammates.test.SEPT_test_case;

import org.testng.annotations.Test;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.io.File;
import java.io.IOException;
public class JacksonAPITest { 
    @Test
    public void testAPIAttribute() throws JsonParseException , JsonMappingException, IOException
    {
        ObjectMapper objectMapper = new ObjectMapper();
        Example weather = objectMapper.readValue(new File(System.getProperty("user.dir")+"//testdata//weatherAPI.json"), Example.class);
        
        assert weather.getId().equals(2172797):"The city id is wrong ";
        assert weather.getName().equals("Cairns"):"not the correct location ";
    }

}

