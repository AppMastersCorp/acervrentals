//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ClassLibrary1
{
    using System;
    using System.Collections.Generic;
    
    public partial class UploadFile
    {
        public int Id { get; set; }
        public Nullable<int> FolderId { get; set; }
        public string FileName { get; set; }
        public Nullable<bool> IsDeleted { get; set; }
    
        public virtual Folder Folder { get; set; }
    }
}
