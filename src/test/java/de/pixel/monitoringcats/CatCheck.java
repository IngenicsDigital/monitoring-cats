package de.pixel.monitoringcats;

import org.junit.jupiter.api.Test;

import static org.assertj.core.api.Assertions.assertThat;

public class CatCheck {

    @Test
    void amIaCat() {
        final var cat = "cat";
        assertThat(cat).isEqualTo("cat");
    }
}
