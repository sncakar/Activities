namespace Activities.Entities
{
    public class Travel
    {
        public int PKTravelId { get; set; }
        public string TravelName { get; set; }
        public string TravelType { get; set; }
        public decimal TravelPrice { get; set; }
        public string TravelQuota { get; set; }
    }
}