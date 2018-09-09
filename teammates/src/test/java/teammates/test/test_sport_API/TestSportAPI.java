package teammates.test.test_sport_API;

import java.io.File;
import java.io.IOException;

import org.testng.annotations.Test;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import teammates.test.SEPT_test_case.Example;

public class TestSportAPI {
    @Test
    public void testSportAPIAttribute() throws JsonParseException,JsonMappingException,IOException {
        ObjectMapper objectMapper = new ObjectMapper();
        Sport sport = objectMapper.readValue(new File(System.getProperty("user.dir")+"//testdata//sportAPI.json"), Sport.class);
        
        assert sport.getSports().get(0).getStrSport().equals("Soccer"):"The sport name is wrong ";
    }
}
