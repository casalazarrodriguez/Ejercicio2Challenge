package RES;

import com.intuit.karate.junit5.Karate;

public class Runner {

    Karate testSystemProporty(){
        return Karate.run("petstore.feature")
                .tags("@AdminPets")
                .karateEnv("cert");
    }
}
