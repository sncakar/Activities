using System;

namespace Activities.Entities
{
    public class Activity
    {
        public int PKActivityId { get; set; }
        public int FKCurrentActiviyId { get; set; }
        public int FKActivityTypeId { get; set; }
        public int FKUserId { get; set; }

        public DateTime Start { get; set; }
        public DateTime End { get; set; }
    }
}