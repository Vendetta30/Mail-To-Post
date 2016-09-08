package enums

public enum MaritalStatus {
    SINGLE("Single"),
    MARRIED("Married"),
    DIVORCE("Divorce"),
    WIDOW("Widow")

    final String value

    MaritalStatus(String value) {
        this.value = value
    }

    String toString() {
        return value
    }

    public String getKey() {
        return name()
    }

    public String getValue() {
        return value
    }

    public static List<MaritalStatus> list() {

        return [SINGLE, MARRIED, DIVORCE, WIDOW]
    }

}