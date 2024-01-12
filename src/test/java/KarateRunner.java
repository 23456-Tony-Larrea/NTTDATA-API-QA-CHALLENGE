import com.intuit.karate.junit5.Karate;

public class KarateRunner {
    @Karate.Test
    Karate testSample() {

        return Karate.run("classpath:features/GetPetById.feature");
    }
    @Karate.Test
    Karate testSample2() {

        return Karate.run("classpath:features/GetStatusPet.feature");
    }

    @Karate.Test
        Karate testSample3() {

            return Karate.run("classpath:features/InsertPet.feature");
        }
        @Karate.Test
        Karate testSample4() {

            return Karate.run("classpath:features/UpdatePet.feature");
        }
}
