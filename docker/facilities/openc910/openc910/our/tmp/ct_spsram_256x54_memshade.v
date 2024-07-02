/*Copyright 2019-2021 T-Head Semiconductor Co., Ltd.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

// &ModuleBeg; @22
module ct_spsram_256x54(
A,
A_t0,
CEN,
CEN_t0,
CLK,
D,
D_t0,
GWEN,
GWEN_t0,
Q,
Q_t0,
WEN,
WEN_t0
);

input   [7 :0]  A_t0;   
input           CEN_t0; 
input   [53:0]  D_t0;   
input           GWEN_t0; 
output  [53:0]  Q_t0;   
input   [53:0]  WEN_t0; 
wire    [7 :0]  A_t0;   
wire            CEN_t0; 
wire    [53:0]  D_t0;   
wire            GWEN_t0; 
wire    [53:0]  Q_t0;   
wire    [53:0]  WEN_t0; 
assign Q_t0 = '0;

// &Ports; @23
input   [7 :0]  A;   
input           CEN; 
input           CLK; 
input   [53:0]  D;   
input           GWEN; 
input   [53:0]  WEN; 
output  [53:0]  Q;   

// &Regs; @24

// &Wires; @25
wire    [7 :0]  A;   
wire            CEN; 
wire            CLK; 
wire    [53:0]  D;   
wire            GWEN; 
wire    [53:0]  Q;   
wire    [53:0]  WEN; 


//**********************************************************
//                  Parameter Definition
//**********************************************************
parameter ADDR_WIDTH = 8;
parameter DATA_WIDTH = 54;
parameter WE_WIDTH   = 54;

// &Force("bus","Q",DATA_WIDTH-1,0); @34
// &Force("bus","WEN",WE_WIDTH-1,0); @35
// &Force("bus","A",ADDR_WIDTH-1,0); @36
// &Force("bus","D",DATA_WIDTH-1,0); @37

  //********************************************************
  //*                        FPGA memory                   *
  //********************************************************

//   &Instance("ct_f_spsram_256x54"); @44
ct_f_spsram_256x54  x_ct_f_spsram_256x54 (
  .A    (A   ),
  .CEN  (CEN ),
  .CLK  (CLK ),
  .D    (D   ),
  .GWEN (GWEN),
  .Q    (Q   ),
  .WEN  (WEN )
);

//   &Instance("ct_tsmc_spsram_256x54"); @51

// &ModuleEnd; @67
endmodule


