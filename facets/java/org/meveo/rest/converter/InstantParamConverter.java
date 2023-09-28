package org.meveo.rest.converter;

import java.time.Instant;
import java.time.format.DateTimeParseException;
import javax.ws.rs.ext.ParamConverter;
import javax.ws.rs.ext.Provider;

@Provider
public class InstantParamConverter implements ParamConverter<Instant> {

    public Instant fromString(String value) {
        try {
            String x = Instant.parse(value).toString();
            return Instant.parse(value);
        } catch (DateTimeParseException ignored) {
        }
        return null;
    }

    public String toString(Instant value) {
        return value.toString();
    }
}