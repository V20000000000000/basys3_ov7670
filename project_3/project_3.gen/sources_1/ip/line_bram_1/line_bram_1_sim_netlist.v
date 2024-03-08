// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2.1 (win64) Build 4081461 Thu Dec 14 12:24:51 MST 2023
// Date        : Fri Mar  8 19:40:03 2024
// Host        : LAPTOP-D2TRK901 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/verilog_practice/project_3/project_3.gen/sources_1/ip/line_bram_1/line_bram_1_sim_netlist.v
// Design      : line_bram_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "line_bram_1,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2.1" *) 
(* NotValidForBitStream *)
module line_bram_1
   (clka,
    wea,
    addra,
    dina,
    clkb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [8:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [3:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [8:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [3:0]doutb;

  wire [8:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire clkb;
  wire [3:0]dina;
  wire [3:0]doutb;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [3:0]NLW_U0_douta_UNCONNECTED;
  wire [8:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [8:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "9" *) 
  (* C_ADDRB_WIDTH = "9" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.51815 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "line_bram_1.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "320" *) 
  (* C_READ_DEPTH_B = "320" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "4" *) 
  (* C_READ_WIDTH_B = "4" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "320" *) 
  (* C_WRITE_DEPTH_B = "320" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "4" *) 
  (* C_WRITE_WIDTH_B = "4" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  line_bram_1_blk_mem_gen_v8_4_7 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[3:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[8:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[8:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[3:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
KlreIEsZzn0uSP/9D/ufxHC+XdeNB3Rp8BI1iopwDqZWY2LnU6LdwmOfKqbV5RHI2lmYxZ0DRkF5
dQDDyPtvkr5xpKd4mHw8pIRaCuoIi325TYyZ4mZtew/sj6ihSRoltQmaQarOPDD09PeuMbq8ecc4
WV85hZe43g7mcMbbTbo=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
j15cwxZDk4bw/lIMdYg2vWh4KM2Jwj1RvqcY+ixGr+6fKBD/f4kIxZR2uos4I2Vp8+I6EznWbJgn
Y6RbSMx6/VWYcgzA61qGw6Sc2i3+7vuWI4bzWdDsAGOm754iPsUXIzSiCWBShn3ueyU1KLf34OBT
aVPqizER8L+Vajby7qtqi7c9qV8YSAFUu7KLpy5WNSxnMWeASanJYDU91F2HEHZukcLPx5jLVbQw
OBkdbzP8W1Fw4r/HgO70HZAy3/FOoSjZh5h+xS3J/w7F67NZS7kKd10c1tiNJpj6TE98qMw7DFQn
9GjBtjNbFTiteg6uRQKaQQq1ONNMXpwB7utwYQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
H3xUZXdzhF1pUsPzoBc/UFs0dHjuWE6FlQNImwPPSNMppgVRimjThjFsTZHJGZT5Q6wPHLilexER
sJBrm7KaJA/EtDxlcPlNf6uSr7NwxLCWJHI4+UUZUmou/hONJTDyQ7NPVF7e6cfVv+cvp6Q4osDD
IvFefPUl5UCet4pC/Fw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GbfLotE8tiuAo0LPtdX4EdgfdhwUls/WuYf2kXJ25dku9LH+0LoHKO9xKnxQXMI6ZdNz+W9eeQv0
xctfj+/e7BBUir6MTIZn1JntWCoSOcA5nllYxwgOKPddNDj19HuQ69Hc67P2HtX1mkd5BZ0whU5T
hDRzNRZoU0ihPf+VNRdOAbFd+OMpu5Dt/GlzX0I4x3IjrmqqNe4fswlgFyE0Bngd5GzGJHbF/Hih
69H/CPfJQlACUMn4tLLsjhUm2zSHD89D3xTMZIRcgy0tRUrhN2hderFMvZex3czHPVXXHuoMG4DI
wL+MQJf8L3uYhHvW71REgpFAX8q2FPEBu+JdPQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CLZkA80tepZrgoVGvQ8RsvTvbRbcJYWo4MzQydrlQ5vuZK2GZT1ZpYNX9S6ZfzDVxQ0DQG4Nq7w3
TwYMlZu0YYu0TucAa6A8IYxzWcB0AS15+O5xniGw4P5aOx4OCRNRdHIoN4UjiyASnG+QhFxeZtY8
HaZDJ3EeZXZ1xlPe9C4mAvfe8H4hbSvQ9d3/E8nkw7bknt7jf+zqxU888Lnd+Pb5tuO1jXniz1r2
0PVMglqKadXNh9mhFVVuC7Nckrw+xAZ7a69JBSMmlCOar5Q3e0KXNGrJUW+OS1hJCNYaIVyGowEU
Fz6zfzR/ir/OlaH+iI1ZVSMaKdHrv5G2oXMfpw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BEgl1etvc3H+kX3GaaJ4m5Hx7TXsEMoNGUlLNweK7UABCVqh6geHLWdC3ZR4iTGKp7yTD1CFzLCQ
KbYafcTDi+Auh4GJYnMQ7KZWeo4HhlJEcP8WrZOUJ6/HxpGc61lUtyRV83wuHqlgcaZqkuiseyQF
AVe85UyV/HC7SNVkcVHIN5NrY9LXIOF8mzcj4KpVRA52VCYxISO9Ddk8bojLjd8tsHXofLMPC6l7
wgzk4VVgxAB8bQTOYobkdr2WhndqUgVBIeudzF9jf6OxF2KtStDn0wNvJdU/6ii5M4ZNCHqxWqeg
8AYTqpsmMs2noLyKIc7eQJ9P3H76BzOXpHl38g==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
onsTxmr9leZMdPEkXPYAoaahh6MejdZ+cABzdRPGCDSDlrxzmWDq5F3u3WAgYvyZJsrqmp53UbcC
QdZ/Z+S67/hSTBIV7+YeMLBlYAG7eOvkAVjHS9uKZwVuPUFFRn0dWN2m14DRBNrTakjgUBZotlCJ
zYG7z2eXFh/hHBcx9dKA7PBOPGkzLhqTEVXOheRubxuP1A6tXjRypAO25EfPd22ytlxCzg/y99H7
5CT7ry1htdqXNjvUpnIuq+Tyq1BGb2EauaxybVo/bgc+iQGjfGTdj1LZj0tLKJiGinVhSZe+9os4
WX2B9U2C8BFCpE1jvo76nUiR9lxeRZR97TE3Yg==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
h7dcg8VkOdwzgJApkUqZdCFHbnD9Ks/xXWCsxuKFs1/csamYnM58FaPqnbvDEYV4DkxFm8PDO/ls
W2K9ng/jhkqLQwywf4SN6IRDzF3MFf1mUSm3PiqA1rbQ6NLvHx7SBVVQOCXdeFx/d9ftLoHuxw6j
SUlF7d2ownLhSysrONY8QgrUTDcRwFvh0noZ9FoE//gEdaVDD7qq6rnncUH6NIXZD2QNJ8IgW2EE
ln7EE+92Md8gUTo6vfwF+q4Tl3k/m38ckIW/imfmOaxppQrAQswXHqN5cUv4u0e/dDuT5934ja1H
d3MCHRxmNscOVpNvgySnyTTXVws9twpygdvLMnXAsof5OSMfufvxql+aZOkGYBjtpVwatBDFndUR
iEcLkWxQxaqJ6ulTTO+ALxE6rPs1pOSH0GV48cEoLW2kyMb914+DVew9/AmRYu3rz0uQ7xDF/+Ql
AfxuRP02YBPcMevr0oCqNcpUOaJjkmyG7wKV/7ye59n1jP1D7WjoUMaJ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
l/O5fpi+++bnBXEsyS4eB3ePsAEEy3fGqR43RuG2/GYX7hddhcZkc/S2i4kZV2ncl0rm3vHOiJ6d
Wql8ox+3bvRw4f3+/R2Jpvxb5nUf4aVLBxgZY9zkvxuqwxkj7o5a+3JZNYDZVQeBUZTsNblHo79n
SmBbtbfc9QTEx1V6ekqtwTIcTg8kDzRDjHcCrvFQp5dc7TeZYK7oJ8/R1o7qiZ/ekDfvpJHEB5QN
MHbg5mE7cE0wSmQMf7/SiZZ+0u6rHIXh56aq4H9xPsR8UPNT6vzPauPXwVy4drZJNkWw802kCzub
1z8ikZ3MYHVCjAp66EXhi0npLJ8owqLcSS7vgA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ZbiJS/yJ/2ChEUUUs/zhPZnydFHl5g230ox7ulrdOmeS05wNlv2XKjPyPjYvxWwxWWR13lYxbI1B
KsAIl1WqiBEmzIQyGnOoh19YB1tnNl3r/ilQ3bUH+E+YUUvXJhNP/RrE7gFQAUq1h5Kxsyov5v5d
b12AX4azJ81Yclmb6glYLU/A/Uc9xZsI8wTKceaR9rEHTzXXzEEKvfDLXZj7bb7oXl7rWJdXCuYp
xz/gyco669pKv9yI7eRsg8tbnXesftEv7fyMJr5UGeYoTwLMnoKGLOzcF28SSbLdtEWUbKHUrjHt
x+0UKWZVtujhxa+ybBDk74+0woxwgEBSJmcvng==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YCuRj74sN8xcBGP8gF6yZ83qYxoB16s6B4faGO3UqeJ0n9Ge7P1Dyec46DdqfSXJ31NG0U84WuZ5
vEbKqZ+e1wG75oueGXZx1g/Bm/RcnkJH13yP3cy0TxuZQH3FfVeX3gP6sJxQpBGH5coAMYa/B679
xHTfAtAShfY0/riweEugdWcK3jTRQkW5vUICfrbbmhV3OCL3HqBHqq/x8wEPzrMfbjXDsxmH4N1V
aDZHTyg+cCthxtbLrQ5KYpVln2nfAXMJh0jbgpA/EPNCbsy2i2MsiRvTpSIKApWPNEQ4gHxCXlml
xpansgG6PYMz7OpRwfisdJ3HEcq4azqJn4zNPg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21568)
`pragma protect data_block
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
2ECeP6LDywzwilVSniKKsedLdQz8fA==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
