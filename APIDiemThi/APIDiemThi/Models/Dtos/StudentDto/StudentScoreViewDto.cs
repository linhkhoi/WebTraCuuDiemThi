using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace APIDiemThi.Models.Dtos.StudentDto
{
    public class StudentScoreViewDto
    {
        public int StudentId { get; set; }

        public UserDto.UserStudentScoreViewDto User { get; set; }
    }
}
