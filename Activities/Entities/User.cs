namespace Activities.Entities
{
    public class User
    {
        public int PKUserId { get; set; }
        public string Password { get; set; }
        public string NameAndSurname { get; set; }

        public int FKUserTypeId { get; set; }
    }
}