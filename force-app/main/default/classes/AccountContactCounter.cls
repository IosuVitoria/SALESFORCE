public class AccountContactCounter {
    public static Integer countContacts(Id accountId) {
        if (accountId == null) {
            return 0;
        }
        List<Contact> contacts = [SELECT Id FROM Contact WHERE AccountId = :accountId];
        return contacts.size();
    }
}
