#!/bin/bash

usage() {
    echo "Sử dụng: $0 [năm_dương_lịch]"
    echo "Ví dụ: $0 2023"
    exit 1
}

#Input year and validate
if [ $# -ne 1 ]; then
    usage
fi

year=$1

if ! [[ "$year" =~ ^[0-9]+$ ]]; then
    echo "Lỗi: Năm phải là số nguyên dương"
    usage
fi

#Array of Can and Chi
can=("Giáp" "Ất" "Bính" "Đinh" "Mậu" "Kỷ" "Canh" "Tân" "Nhâm" "Quý")
chi=("Tý" "Sửu" "Dần" "Mão" "Thìn" "Tỵ" "Ngọ" "Mùi" "Thân" "Dậu" "Tuất" "Hợi")


b_year=2015
b_can=1
b_chi=7

# Years count 
diff=$((year - b_year))

# Year index calc
can_i=$(( (b_can + diff) % 10 ))
chi_i=$(( (b_chi + diff) % 12 ))

# Year validate
    [ $can_i -lt 0 ] && can_i=$((can_i + 10))
    [ $chi_i -lt 0 ] && chi_i=$((chi_i + 12))

lunar_name="${can[$can_i]} ${chi[$chi_i]}"

echo "%-15s | %s\n" "Năm $year dương lịch là năm $lunar_name âm lịch"

#git-validate asdadasdsada


    
 