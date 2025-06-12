#!/bin/bash

echo "Năm dương lịch | Năm âm lịch"
echo "----------------|------------"

#Init
for year in {1990..2020}; do
    can_i=$(( ($year - 2000 + 6) % 10 ))
    chi_i=$(( ($year - 2000 + 4) % 12 ))
    
#Index validate
    [ $can_i -lt 0 ] && can_i=$((can_i + 10))
    [ $chi_i -lt 0 ] && chi_i=$((chi_i + 12))
    
#Array of can and chi
    can=("Giáp" "Ất" "Bính" "Đinh" "Mậu" "Kỷ" "Canh" "Tân" "Nhâm" "Quý")
    chi=("Tý" "Sửu" "Dần" "Mão" "Thìn" "Tỵ" "Ngọ" "Mùi" "Thân" "Dậu" "Tuất" "Hợi")
    
    lunar_name="${can[$can_i]} ${chi[$chi_i]}"
    echo "%-15s | %s\n" "$year" "$lunar_name"
done

#git-validate