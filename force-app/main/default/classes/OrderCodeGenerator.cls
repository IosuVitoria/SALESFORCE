public class OrderCodeGenerator {
    public static String generateCode(Id opportunityId) {
        if (opportunityId == null) {
            return 'Invalid Opportunity ID';
        }
        String datePart = Date.today().format('yyyyMMdd');
        String idPart = opportunityId.substring(12, 15);
        return 'OPP-' + datePart + '-' + idPart;
    }
}
