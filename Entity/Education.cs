using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entity
{
    public class Education
    {
        public int Id { get; set; }
        
        [StringLength(30)]
        public string SchoolName { get; set; }

        [DataType(DataType.Date)]
        public DateTime StartDate { get; set; }

        [DataType(DataType.Date)]
        public DateTime EndDate { get; set; }

        [MaxLength(200)]
        public string Degree { get; set; }
        public string Text { get; set; }
    }
}
