package mailtopost

import com.springSecurity.Role
import com.springSecurity.User
import com.springSecurity.UserRole
import org.apache.commons.lang.RandomStringUtils

import java.util.concurrent.ThreadLocalRandom

class CreateUserService {
    static transactional = false
    def sessionFactory

    private static final String CHAR_LIST = "abcdefghijklmnopqrstuvwxyz";

    def createUser() {
        Role role = Role.findByAuthority("ROLE_USER")
        List batch = new ArrayList()
        for (int i = 0; i < 1000; i++) {
            char[] firstName = null
            char[] lastName = null
            char[] first = RandomStringUtils.randomAlphabetic(10).toCharArray();
            char[] last = RandomStringUtils.randomAlphabetic(10).toCharArray();

            if (String.valueOf(first).matches("([a-zA-Z]{3,7}\\s*)+")) {
                firstName = first
            } else {
                firstName = String.valueOf(first).substring(1, 5).toCharArray()
            }
            if (String.valueOf(last).matches("[a-zA-Z]{3,7}")) {
                lastName = last
            } else {
                lastName = String.valueOf(last).substring(1, 5).toCharArray()
            }
            User person = new User(username: "${String.valueOf(firstName)}@${String.valueOf(lastName)}.com",
                    firstName: String.valueOf(firstName), lastName: String.valueOf(lastName), password: "123456")
            batch.add(person)
            if (batch.size() > 500) {
                User.withTransaction {
                    for (User user : batch) {
                        user.save()
                        UserRole.create(user, role, false)
                    }
                    batch.clear()
                }
                sessionFactory.getCurrentSession().clear();
            }
        }
        for (User user : batch) {
            user.save()
            UserRole.create(user, role, false)
        }
    }
}
