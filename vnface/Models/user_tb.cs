namespace vnface.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class user_tb
    {
        public int id { get; set; }

        [StringLength(128)]
        public string name { get; set; }

        [Column(TypeName = "text")]
        public string password { get; set; }

        [Column(TypeName = "text")]
        public string face_image { get; set; }

        [StringLength(128)]
        public string role { get; set; }
    }
}
