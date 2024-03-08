// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2.1 (win64) Build 4081461 Thu Dec 14 12:24:51 MST 2023
// Date        : Fri Mar  8 19:40:14 2024
// Host        : LAPTOP-D2TRK901 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/verilog_practice/project_3/project_3.gen/sources_1/ip/line_bram_2/line_bram_2_sim_netlist.v
// Design      : line_bram_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "line_bram_2,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2.1" *) 
(* NotValidForBitStream *)
module line_bram_2
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
  (* C_INIT_FILE = "line_bram_2.mem" *) 
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
  line_bram_2_blk_mem_gen_v8_4_7 U0
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
jHjOBQvpLG7CUDbkPU0lm/LBrHu9DQ==
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
