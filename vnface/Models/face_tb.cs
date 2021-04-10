namespace vnface.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class face_tb
    {
        public int id { get; set; }

        [StringLength(128)]
        public string name { get; set; }

        [StringLength(128)]
        public string gender { get; set; }

        [StringLength(128)]
        public string age { get; set; }

        [Column(TypeName = "text")]
        public string face_image { get; set; }

        [Column(TypeName = "text")]
        public string feature { get; set; }
    }
}
