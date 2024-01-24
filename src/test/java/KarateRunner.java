import com.intuit.karate.junit5.Karate;

public class KarateRunner {

    @Karate.Test
    Karate testGetStatusPet() {
        return Karate.run("classpath:features/GetStatusPet.feature");
    }

    @Karate.Test
    Karate testCRUPet() {
        return Karate.run("classpath:features/CRUPet.feature");
    }

}
