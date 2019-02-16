using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Activities.Entities
{
    public class Seminar
    {
        public int PKSeminarId { get; set; }
        public string SeminarName { get; set; }
        public string SeminarType { get; set; }
        public string SeminarQuota { get; set; }
    }
}