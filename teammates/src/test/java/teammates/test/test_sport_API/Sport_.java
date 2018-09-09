
package teammates.test.test_sport_API;

import java.util.HashMap;
import java.util.Map;
import com.fasterxml.jackson.annotation.JsonAnyGetter;
import com.fasterxml.jackson.annotation.JsonAnySetter;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;

@JsonInclude(JsonInclude.Include.NON_NULL)
@JsonPropertyOrder({
    "idSport",
    "strSport",
    "strSportThumb",
    "strSportDescription"
})
public class Sport_ {

    @JsonProperty("idSport")
    private String idSport;
    @JsonProperty("strSport")
    private String strSport;
    @JsonProperty("strSportThumb")
    private String strSportThumb;
    @JsonProperty("strSportDescription")
    private String strSportDescription;
    @JsonIgnore
    private Map<String, Object> additionalProperties = new HashMap<String, Object>();

    @JsonProperty("idSport")
    public String getIdSport() {
        return idSport;
    }

    @JsonProperty("idSport")
    public void setIdSport(String idSport) {
        this.idSport = idSport;
    }

    @JsonProperty("strSport")
    public String getStrSport() {
        return strSport;
    }

    @JsonProperty("strSport")
    public void setStrSport(String strSport) {
        this.strSport = strSport;
    }

    @JsonProperty("strSportThumb")
    public String getStrSportThumb() {
        return strSportThumb;
    }

    @JsonProperty("strSportThumb")
    public void setStrSportThumb(String strSportThumb) {
        this.strSportThumb = strSportThumb;
    }

    @JsonProperty("strSportDescription")
    public String getStrSportDescription() {
        return strSportDescription;
    }

    @JsonProperty("strSportDescription")
    public void setStrSportDescription(String strSportDescription) {
        this.strSportDescription = strSportDescription;
    }

    @JsonAnyGetter
    public Map<String, Object> getAdditionalProperties() {
        return this.additionalProperties;
    }

    @JsonAnySetter
    public void setAdditionalProperty(String name, Object value) {
        this.additionalProperties.put(name, value);
    }

}
