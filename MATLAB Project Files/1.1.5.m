DistT=[114.865
121.622
114.865
108.108
334.528
233.109
212.865
209.568
331.512
479.777
446.266
321.017
127.297
320.964
321.106
517.289
391.906
328.138
];
TimeT=[11.50
18.18
46.73
25.17
57.93
27.60
57.93
57.93
57.93
57.93
57.93
57.93
57.93
57.93
57.93
57.93
53.47
57.93
];
X=TimeT;
VRT=vpa((X.\DistT),4);
AverageT= vpa(mean(VRT),4)
MaxVRT=vpa(max(VRT),4)
MinVRT=vpa(min(VRT),4)
RangeVRT=vpa((MaxVRT-MinVRT),4)
AbserrorT=abs(VRT-AverageT);
RelerrorT=AbserrorT/AverageT;
MaxAbserrorT=vpa(max(AbserrorT),4)
MaxRelerrorT=vpa(max(RelerrorT),4)


