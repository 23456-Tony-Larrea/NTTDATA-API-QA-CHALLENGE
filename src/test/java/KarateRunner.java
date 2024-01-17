import com.intuit.karate.junit5.Karate;

public class KarateRunner {
    @Karate.Test
    Karate testGetPetById() {
        return Karate.run("classpath:features/GetPetById.feature");
    }

    @Karate.Test
    Karate testGetStatusPet() {
        return Karate.run("classpath:features/GetStatusPet.feature");
    }

    @Karate.Test
    Karate testInsertPet() {
        return Karate.run("classpath:features/InsertPet.feature");
    }

    @Karate.Test
    Karate testUpdatePet() {
        return Karate.run("classpath:features/UpdatePet.feature");
    }
}
