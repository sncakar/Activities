namespace Activities.Entities
{
    public class Theatre
    {
        public int PKTheatreId { get; set; }
        public string TheatreName { get; set; }
        public string TheatreType { get; set; }
        public string TheatreQuota { get; set; }
        public decimal TheatrePrice { get; set; }
    }
}