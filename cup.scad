d=2;
g=10;
ht=30;
hb=10;

scale(1) {
minkowski() {
    difference() {
        union() {
            cylinder(h=hb+ht, r1=20/2, r2=35/2, center=true);
            translate([0, 0, hb]) cylinder(h=ht, r1=35/2, r2=35/2, center=true);
        }

        translate([0, 0, d]) cylinder(h=hb+ht, r1=20/2-d, r2=35/2-d, center=true);
        translate([0, 0, hb+d]) cylinder(h=ht, r1=35/2-d, r2=35/2-d, center=true);
    }

    *sphere(r=1);
}
}
