namespace vnface.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class face_log_tb
    {
        public int id { get; set; }

        [StringLength(128)]
        public string name { get; set; }

        [StringLength(128)]
        public string gender { get; set; }

        [StringLength(128)]
        public string age { get; set; }

        [StringLength(128)]
        public string date { get; set; }

        [Column(TypeName = "text")]
        public string face_img { get; set; }

        [Column(TypeName = "text")]
        public string recognize_img { get; set; }
    }
}
