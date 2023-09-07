package datebase;

public class GetSet {
public static String username,department;

public static String getDepartment() {
	return department;
}

public static void setDepartment(String department) {
	GetSet.department = department;
}

public static String getUsername() {
	return username;
}

public static void setUsername(String username) {
	GetSet.username = username;
}
}
