#! /usr/local/Cellar/icarus-verilog/10.0/bin/vvp
:ivl_version "10.0 (stable)" "(v10_0)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision + 0;
:vpi_module "system";
:vpi_module "vhdl_sys";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x7fb0ab500bf0 .scope module, "demorgan_test" "demorgan_test" 2 3;
 .timescale 0 0;
v0x7fb0ab7054a0_0 .var "A", 0 0;
v0x7fb0ab705560_0 .net "AandB", 0 0, L_0x7fb0ab705e20;  1 drivers
v0x7fb0ab7055f0_0 .net "AorB", 0 0, L_0x7fb0ab706130;  1 drivers
v0x7fb0ab7056a0_0 .var "B", 0 0;
v0x7fb0ab705750_0 .net "nA", 0 0, L_0x7fb0ab705bd0;  1 drivers
v0x7fb0ab705820_0 .net "nAandB", 0 0, L_0x7fb0ab705ed0;  1 drivers
v0x7fb0ab7058b0_0 .net "nAandnB", 0 0, L_0x7fb0ab705db0;  1 drivers
v0x7fb0ab705960_0 .net "nAorB", 0 0, L_0x7fb0ab705c40;  1 drivers
v0x7fb0ab705a10_0 .net "nAornB", 0 0, L_0x7fb0ab705f80;  1 drivers
v0x7fb0ab705b40_0 .net "nB", 0 0, L_0x7fb0ab705cc0;  1 drivers
S_0x7fb0ab515df0 .scope module, "dut" "demorgan" 2 9, 3 1 0, S_0x7fb0ab500bf0;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "A"
    .port_info 1 /INPUT 1 "B"
    .port_info 2 /OUTPUT 1 "nA"
    .port_info 3 /OUTPUT 1 "nB"
    .port_info 4 /OUTPUT 1 "nAandnB"
    .port_info 5 /OUTPUT 1 "AandB"
    .port_info 6 /OUTPUT 1 "nAandB"
    .port_info 7 /OUTPUT 1 "nAornB"
    .port_info 8 /OUTPUT 1 "AorB"
    .port_info 9 /OUTPUT 1 "nAorB"
L_0x7fb0ab705bd0 .functor NOT 1, v0x7fb0ab7054a0_0, C4<0>, C4<0>, C4<0>;
L_0x7fb0ab705cc0 .functor NOT 1, v0x7fb0ab7056a0_0, C4<0>, C4<0>, C4<0>;
L_0x7fb0ab705db0 .functor AND 1, L_0x7fb0ab705bd0, L_0x7fb0ab705cc0, C4<1>, C4<1>;
L_0x7fb0ab705e20 .functor AND 1, v0x7fb0ab7054a0_0, v0x7fb0ab7056a0_0, C4<1>, C4<1>;
L_0x7fb0ab705ed0 .functor NOT 1, L_0x7fb0ab705e20, C4<0>, C4<0>, C4<0>;
L_0x7fb0ab705f80 .functor OR 1, L_0x7fb0ab705bd0, L_0x7fb0ab705cc0, C4<0>, C4<0>;
L_0x7fb0ab706130 .functor OR 1, v0x7fb0ab7054a0_0, v0x7fb0ab7056a0_0, C4<0>, C4<0>;
L_0x7fb0ab705c40 .functor NOT 1, L_0x7fb0ab706130, C4<0>, C4<0>, C4<0>;
v0x7fb0ab503230_0 .net "A", 0 0, v0x7fb0ab7054a0_0;  1 drivers
v0x7fb0ab704d50_0 .net "AandB", 0 0, L_0x7fb0ab705e20;  alias, 1 drivers
v0x7fb0ab704e00_0 .net "AorB", 0 0, L_0x7fb0ab706130;  alias, 1 drivers
v0x7fb0ab704eb0_0 .net "B", 0 0, v0x7fb0ab7056a0_0;  1 drivers
v0x7fb0ab704f50_0 .net "nA", 0 0, L_0x7fb0ab705bd0;  alias, 1 drivers
v0x7fb0ab705030_0 .net "nAandB", 0 0, L_0x7fb0ab705ed0;  alias, 1 drivers
v0x7fb0ab7050d0_0 .net "nAandnB", 0 0, L_0x7fb0ab705db0;  alias, 1 drivers
v0x7fb0ab705170_0 .net "nAorB", 0 0, L_0x7fb0ab705c40;  alias, 1 drivers
v0x7fb0ab705210_0 .net "nAornB", 0 0, L_0x7fb0ab705f80;  alias, 1 drivers
v0x7fb0ab705320_0 .net "nB", 0 0, L_0x7fb0ab705cc0;  alias, 1 drivers
    .scope S_0x7fb0ab500bf0;
T_0 ;
    %vpi_call 2 14 "$display", "A B | AB | ~(AB) " {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7fb0ab7054a0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7fb0ab7056a0_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 16 "$display", "%b %b |  %b |    %b ", v0x7fb0ab7054a0_0, v0x7fb0ab7056a0_0, v0x7fb0ab705560_0, v0x7fb0ab705820_0 {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7fb0ab7054a0_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7fb0ab7056a0_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 18 "$display", "%b %b |  %b |    %b ", v0x7fb0ab7054a0_0, v0x7fb0ab7056a0_0, v0x7fb0ab705560_0, v0x7fb0ab705820_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7fb0ab7054a0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7fb0ab7056a0_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 20 "$display", "%b %b |  %b |    %b ", v0x7fb0ab7054a0_0, v0x7fb0ab7056a0_0, v0x7fb0ab705560_0, v0x7fb0ab705820_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7fb0ab7054a0_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7fb0ab7056a0_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 22 "$display", "%b %b |  %b |    %b ", v0x7fb0ab7054a0_0, v0x7fb0ab7056a0_0, v0x7fb0ab705560_0, v0x7fb0ab705820_0 {0 0 0};
    %vpi_call 2 24 "$display" {0 0 0};
    %vpi_call 2 25 "$display", "A B | ~A ~B | ~A+~B " {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7fb0ab7054a0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7fb0ab7056a0_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 27 "$display", "%b %b |  %b  %b |     %b  ", v0x7fb0ab7054a0_0, v0x7fb0ab7056a0_0, v0x7fb0ab705750_0, v0x7fb0ab705b40_0, v0x7fb0ab705a10_0 {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7fb0ab7054a0_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7fb0ab7056a0_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 29 "$display", "%b %b |  %b  %b |     %b  ", v0x7fb0ab7054a0_0, v0x7fb0ab7056a0_0, v0x7fb0ab705750_0, v0x7fb0ab705b40_0, v0x7fb0ab705a10_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7fb0ab7054a0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7fb0ab7056a0_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 31 "$display", "%b %b |  %b  %b |     %b  ", v0x7fb0ab7054a0_0, v0x7fb0ab7056a0_0, v0x7fb0ab705750_0, v0x7fb0ab705b40_0, v0x7fb0ab705a10_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7fb0ab7054a0_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7fb0ab7056a0_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 33 "$display", "%b %b |  %b  %b |     %b  ", v0x7fb0ab7054a0_0, v0x7fb0ab7056a0_0, v0x7fb0ab705750_0, v0x7fb0ab705b40_0, v0x7fb0ab705a10_0 {0 0 0};
    %vpi_call 2 35 "$display" {0 0 0};
    %vpi_call 2 36 "$display", "A B | A+B | ~(A+B) " {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7fb0ab7054a0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7fb0ab7056a0_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 38 "$display", "%b %b |   %b |     %b ", v0x7fb0ab7054a0_0, v0x7fb0ab7056a0_0, v0x7fb0ab7055f0_0, v0x7fb0ab705960_0 {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7fb0ab7054a0_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7fb0ab7056a0_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 40 "$display", "%b %b |   %b |     %b ", v0x7fb0ab7054a0_0, v0x7fb0ab7056a0_0, v0x7fb0ab7055f0_0, v0x7fb0ab705960_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7fb0ab7054a0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7fb0ab7056a0_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 42 "$display", "%b %b |   %b |     %b ", v0x7fb0ab7054a0_0, v0x7fb0ab7056a0_0, v0x7fb0ab7055f0_0, v0x7fb0ab705960_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7fb0ab7054a0_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7fb0ab7056a0_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 44 "$display", "%b %b |   %b |     %b ", v0x7fb0ab7054a0_0, v0x7fb0ab7056a0_0, v0x7fb0ab7055f0_0, v0x7fb0ab705960_0 {0 0 0};
    %vpi_call 2 46 "$display" {0 0 0};
    %vpi_call 2 47 "$display", "A B | ~A ~B | ~A~B " {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7fb0ab7054a0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7fb0ab7056a0_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 49 "$display", "%b %b |  %b  %b |    %b  ", v0x7fb0ab7054a0_0, v0x7fb0ab7056a0_0, v0x7fb0ab705750_0, v0x7fb0ab705b40_0, v0x7fb0ab7058b0_0 {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7fb0ab7054a0_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7fb0ab7056a0_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 51 "$display", "%b %b |  %b  %b |    %b  ", v0x7fb0ab7054a0_0, v0x7fb0ab7056a0_0, v0x7fb0ab705750_0, v0x7fb0ab705b40_0, v0x7fb0ab7058b0_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7fb0ab7054a0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7fb0ab7056a0_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 53 "$display", "%b %b |  %b  %b |    %b  ", v0x7fb0ab7054a0_0, v0x7fb0ab7056a0_0, v0x7fb0ab705750_0, v0x7fb0ab705b40_0, v0x7fb0ab7058b0_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7fb0ab7054a0_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7fb0ab7056a0_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 55 "$display", "%b %b |  %b  %b |    %b  ", v0x7fb0ab7054a0_0, v0x7fb0ab7056a0_0, v0x7fb0ab705750_0, v0x7fb0ab705b40_0, v0x7fb0ab7058b0_0 {0 0 0};
    %end;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "hw1.t.v";
    "./hw1.v";
