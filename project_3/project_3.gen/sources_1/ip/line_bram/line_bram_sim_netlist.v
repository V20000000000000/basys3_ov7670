// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2.1 (win64) Build 4081461 Thu Dec 14 12:24:51 MST 2023
// Date        : Fri Mar  8 19:39:47 2024
// Host        : LAPTOP-D2TRK901 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/verilog_practice/project_3/project_3.gen/sources_1/ip/line_bram/line_bram_sim_netlist.v
// Design      : line_bram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "line_bram,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2.1" *) 
(* NotValidForBitStream *)
module line_bram
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
  (* C_INIT_FILE = "line_bram.mem" *) 
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
  line_bram_blk_mem_gen_v8_4_7 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21536)
`pragma protect data_block
1xU+4P8ZVIF30Wo5Pzc7n8oYNpiobJvUerwxgIkyqFThUfmAgcWsEFerAzPE4SHCAWc9vF1TwV80
7e/vpDpNKLFzXAxPQbJH11gy3RbJ+msMjVh8TSKde9BsCZTFlZSBiEoMW5M52bEOp4WAZPmbazom
FZ4iaWfr2JEa82Wyl2Morr2Z4NCgp2r2h6Hg69IPyP82e95+79BF5ghaf78h6VpHXcHEvAaJuNXu
ZY3em2fB4I8fkDMMBWSRgQ9NoakIaxQgVaLlEOVETw60aKSDWzYb7KP7S0dZVfB9L5KBT9Kn6Wvg
qR7UwxM43WhK4DjjKAjK/4oDvswBk0Z6rFcbHnmdO8nYUG3YqN25MXEZGLfv1QqHrPFCmBPMV6Va
c9DkjiPFyNHm5Hh+f+88dIJQPhSgLiX6pNhSYZR3h+IHNAkiziRFIc+QqIXtVTG7t52TPkvn1HjC
kFKJD24nI074vo6Z/X8PFwKAcxopm61ilbxr7IuiKLyJ54PwOPoGYgaHkM0lgJTvnMhoB951ar1r
CVyazQt3qUK5jfiobqCnOp+1/WGhPkmW3tjzKi9S/MJc3cn6euwulUBzolM0qGmC27hcXenpdpU3
sUoi7bw8iZmGu3zrijajborvzHz76RotxlgDX+jaPcGUuc65lk2fl9IH93GMJS+Jw7uNTwgCRTiE
KKl++iYBBz8guOIGJUhxh5eJ4Mc89bFGMEgJOxHY3HPVfYYowJjaFS68/n3L8wG1m6hNdYsdtX3H
kBHWPdBQ2RjflTFL2LQyaTDxA2aAq6NZQmAt0tstQlOjWSZVbO9d+yJg8SqzpRKys9fQZyE0UfR7
N8T7myz7U0ybfE3zEw9u8t60R/PUv6USk1e0IS47HN8WWSS3uDxim5dGo1YLAoTFeQq8/ncTWx9R
wSa4PudzuFKysdLAOPT7kMxL3859o5hbWrO2uLWcG7GxxYp7J2s+JbmJQwg0suQ0IZ5uc6OIdmi/
eujpogw0JaBq/dhKoQIcQhYSL2EjDdzTYYkqWxaLcIS7ictqbFPzaSSKct6Ad2XOEDqatUVcPfYQ
fZq1gKVxuaomvU/rPWKUla8YJ/OJOEaRW45+YC9R0cMw9lt3RURzBNL0dM5zR+a9LH3eRpYEQre5
SAxR1tB5dwtypShEwXFMxXqq1eJbUQRD+ZLR/oNnTrCJctwrVQgepAfltWtX605NptTLRI2ZtPW6
6kFnBlHfaOxbcsct2HwWljkyblL5+EmqAGWgIR+z3JS8BIYt+mV9ZO6X7a7AoC8aRqBBQkiM4cOq
AQgg8mqA0aZz6+2eTUCWimwZTrKRE5pE4JAcGfQyOQIhLQq4iuYHVHmVuoP3gJIHYMggzHk6T15Q
WfoeV5aTbgEG3PAEHZokNsR3Q/BmADfKCi8OpAFlZ0hcKDJyc9WZmqmc7MLAf+JYK7wGL+P8qmoV
j+0nmNwy5NcwJMioeV+wgW3ONeblSV86tGzdspzUg2DQBK9EwGFiRCnWW1TkctGFeY6cHR5ICFPT
nfEgg/VKSPlP3MB9blj/LPvwiGSx8/nFnr351EfSNkxutrPubqF++uuVXQApSQHLf2dcCXusS2YR
DcR0lFDEsXNxl64trC5FfIX3rsfnmU+5YLX6yRgPrFxK56r3SvtMlsSsrwCOCtAxrHOJARqyn0H+
vyadpDaNQoj4rtrdxJZQLJ90KojObENEdqi4iKBHoUdbFu/SoW87h0IdQ76xQ+4cONUXj3pBJz/x
gFPtMKNSwFunIV9ngmKtFMScty5+wJbYc+QT0WfeaAFM0sY7+dYqGcLKmLWzMyr2KvvbDGrT9vuM
y/zMQGe8Y7PyXnp3HSaXDO60bCXlzZ+1UqqxoRHFYivJuYLJKCrq4vdGO0VYskTlc64jvRJ5UA5G
I9jPRhSfBuBxytFjrrY07Knz7rI+hGy4f6S3kGvEJ4r2PWtOOpQtu48/d3XfmG1/04vrHgaw+lPe
VCoJw54hF2jebRp70k92645ocP0XGgJ7ixQyYsDxXQYr5cwiZ+AwuBlQU1Qfy1D5WUuHQUKw5PxP
grEutmHunUkKMNH/LDWDxHRmjQte4mPyLvuACUXeLivLcVIFI1iHl6BUKY7m6ZMM5fOhJHbu2mqZ
FKizEotg2Y7K4T7mVVCvCfowlHLTh7qvxT9g36XpVHNAA/d8gvExc7MfM1PGPNFYN8WnMV9KEn11
MwRbOr7guPgo+hGwYVtB8Ir+MEN1caoNcxZHg3BkzchtkKFuJo5kC+ERIW95vM7LnFWLuTy5xI6l
yNFhB8Hwp29kAzbZ1NsIBlLbmTSvH5E80CjPUt3jPe7AMK/Q4TE75OlvohV+59zf9vfSAAbbNcG/
IHWzxmqGczs9OqTN/2HjR4SEsrOhtHKgZS0UULfqyZZL0EOHF0UUYRg1bYbqmsGgS2MOBCPk5XRg
Ea2mt2v1/Op3eY8HozJd4+DGpkKoPXzmuhh/97gkRSCBtMJg8DfKDfwKxsKa5QTuZumjW5d6ohZ4
F37MQlLFfTXU2r6sSVMAZxk+x9s/xWqD3iiHAvHzFl8tHdyFsPlPUqwACGp2iTyPKOon89v9h6KO
7TgF/xzWheWGOBQT+qiDRUIWIdMP1d6sR781+b+nmoJxSaoNlgCVN7zHBnpohdGtKq1hf0WIp3TQ
Rm3AORk5QAkDa8/vMYzAjGfWNInQa0n4bhIO2vSX4bfxNT1zuPTJH1xpfnkAFR/X4muTOOPahjYq
rPCAOni/fMSm2iBWu6c0DJUKSpMyGLbRnN+k1Zsj3ndOBZp4u1c7SL6Xa3v6NlUGT1Ou/pohw+Jz
aUvmpsMmoJbmJieAss2JgbZBMMNTvBwswdaU6hthS18sSivilf9dZovBmMJPwi2s/8iGnmtuEmTW
n5dd4EyF91AjU6aLoJQBRFy5t5dE/+ELkTuk4tNHBhPynbd+Fi1hgpe1wy405l6nIkHHR5Xu2UUB
JL3y9q0NU/FOhEXxcP6qaoBp489s0kg89uPu5wB34WWwHSB9nvgdJGl8Bl7lyxMguh2qKV9F8bbH
l1Nhrgi7tRzASH95DYNyUPQo2y4kxXIaNC2Ued3dNmH8N9c6AoWs15ypG1CjIt4hX3a7UHQAThCr
e6veCR1nlwuc7aIW6F8wpcHbXOcDGx9d3ieSP/ejuu+luJQKaX6MV177MCutqcb0RkfAYUjF152s
WwkZrgaKADXJdnitWTK2FRlfSNrsrS4hv7DwnuUNsWF03L66edBrneV2TgJf8EpJYaTxEBfzYqzi
Ep6zoJNKsFICjkpxA/4IBxn6CcE1qw/7uR1iTEL92CUIE/yRE4ScoFqGgwFV43mtXF68kwZ7Whj9
OyA73/CBMfYCFY7csTqnAAqejumuhY0m/hsJpqS2Abuj0GFUYMCAxZczmm8MCNll12DmlsxkuXUp
s7chOaVlNujNJPwbWD5IQMAJy0oQ8jOOWYmINzzwWP0yHt7izNi/9Rb7TI1ovqH0rRYbJiARG8qa
BFfasVVE7Cz8BSDfzHiYDSZPXnMshfgIoU6fzraXFliE77iVp1PaRhrUXIw9FBxs16/O7rD79USh
LYS+l8nR9P7ztmqUYqVX21sMRi6GN03rm7RNcouOWIXif5+2PoYkbUr5aWkLS9HZZGyv2dW7iT9b
OCT7NuzmLYj4Q3I9V0girz+Cbexbzf5sHONSp7cbO9uAsa6qSeRJDTHZ8ulT7pha0MgN8KTxoz9z
y2/yZY+4VZgyENzU0Wb8aeamYKv2ghRy44lEJqIYk/XO+c8VsaiGqjmyg0/0UkPsgMmTvUC6CiXv
PVMKovKJM7KHBc6N34SDRNgFyo2cYTZT4sekGNKEEt4KJe4KNsbDP/7wAfEaFE3VY/spkAEgJ7mE
a4RLsMYXUWvamQNXzFYzaShpW9/QsDkxLSB+lXxj5TgHBXh6N6pctNDk9CL+gc/OF6CW5pACHT7a
cqx6bf9uf6sFnc30Bze8yd+0+xSomWBGlsuM+BWMfm7J0DvC7hvI+nX4ZhVyWTEdFt/HTsNIkP04
Vap0Rqi8AXULP+nTfNsxxN2S+KqKqcR9m/7YTyxi3Ar66BI6RJyZcuJ9u/fOY3ChGadrqtM4Pexj
il+CqVPmxs6b7Q2nt64/Tk5xj3Noa9ZOA8PHwzgJ1uMRvWJfuvGuHJXMzjYbCE0DDp2hKjR0aTZP
gGBY3+0rZWR+r7micIs77qzFpPYln6lc/pvW+oRu7oFMNik8Dn6T52nxcnQ4WnmfTrLDvI6TQWeL
JoWsOghFY38zDku6M7lf5jrMJZsjxmM1lTaOHi3RJWryxyhEoPrgvVYZA4zpN7mzkRgBbUo3sMrG
B5OHh6uFG9Sn4G6EUWn/q9rglMfFJmyuo7mvskwSmbmg4fic1i4j+asxXVKha6qK7or397SjKWdH
0rNINMg71CijUM9uK6KRLvNRmat/hX3hF5CIXOcTZ1rlTsdMtFsZSJGhZt2qyYBMufex2dzAaf/D
qMuqjChxF8fb00J9c5kG9Hp6Nt6skbxClmyHsUclcj+0GtCYjHFvO6UgSf+KrjYNFFkM9faRPvJm
N8JIL7ifdZBhMQFqaKtncC2CpceR0kiKLxPMOyBSGhZPf3oGiqcf5juzjhGjx4ifK5n4XhH7Cf6R
IEy7Bl+T6lX6vccraNssMoh6H5hy+mpFHh+HLP1PbygBsZOiqSILLsH4BZkTp7fkJf0C39Y97WSE
P70oQYklEmb/OikZMgman2NuZg/C02Wy1SxSXjWA56lAnYSJ0tkOl0bspZtlUyTMNVb20H4XoUlj
izf79pDk6LujRi3eACMZMhlx9vK0+e1eiGPcyQS/yNWqM0YMR27MYwC+X4ZpfjRYh++zQVedXOW2
VKnnG7HpD17ZYrj/j5w2tOJ/6Zv04ujPyEFXdI6QLadeOJdLT+iq3r9Pi6+CotTzcLTmaMZFFyy0
wsZjs6ZZMmejtCYR3PjgcOPxfXcc8CYIz1eNmXonjYsbZv8nuzLLAitJrWTIA54p09WT6q6e1J3m
dLp0/U/fsIROzRS+mn0hNMezCICY42eOK/JrGU7bBODRL3s+q864mKKm1K4y/7U9WzymX1GAmwbi
gKNMkDO5ZD+jz/ghZzPtSXUHK9TuYge75v8EvG+F8PqRMCAFe1BjCK6g9pn2ZYD7bW8MUq/VVGyy
aJhI0fwtN0ksNxlxoimZ2QF6oKqLTkWZ2MfAlxoJwhoYtNams09/J2ei8bibOQYTpCX11hYDfks/
AdrlaIBw9w6hsWnNjP8xqr4DK9rPQIo6U7hQypXuAZ4o14aJ6yEBvHb4mrJsmRVx0jtVtDpnGfT5
2L2EfaY4rbp3fBOyR/jELLUZzP2s1aCcz0VrPRaXJj+PS1qP7sv8mc5LxmzgtSNO3+rXcv57DmLk
O/0t4jcXSdmMyvrcudHa1JwYccnEwYlN8nrcz3tYAGaiqI4hs7VYejYijdoHGkupxBWvJiNtaKC0
mGo2jWF8cASVeiohY6FLlLjYP1E8aUMlhU/IhCBabtlbpu68v3lkYpHYBp8wELEDRfyE1/82kMpv
5hDSjL9AxcJB4RggOO8YlSzMGz0vRUS1Ftkn6Yd91DdmQ2bUaTb6IwJi94kMUJOwlP4VzSOo8zJ2
AvEhPZLqERWwnIADD4dHTYNDcYdkJW2OsMhZv+sYxVDPWbps8glIn0Fg1LuiDPnVmNxxcjmUXp8k
0ao0tHRF8KIpltn63LWqty/GJW5O4ZvhcRKHEpboElXfYkijYTHoitdU4Xjf5CGB68CO6f8tdJf/
WAMu20OyhP9UlzXrVxa05AukoE4mj2RVK1IqZwkSM3PAOEeas1HB710PUdbs5A+KRuTWsMFWiwGv
E4SbbnEwBtLHQBHcp50BzrMssVXntprbmPESjIAmhaChey4kJ829d+heC6/py8tKz8hc/mfacR/+
BkDvqAIfLEnxoWMM9uO6P+Pfu4LyAw+t7FNRRCNS2pQr786zxnGys2Hk/au6rYvoafGRWVQw+Hqs
UrojjL+lqNhA1YyjFRsGFKP78WPps+PgNhTP/0hyivN1BVi8OBYSnbkh6Rpr3Zl7egWBatUTvBtF
5qMjqHxTNQ8fO6iQat9xZl011Ln7NjUqGTSK2/A5j6EsNFqbx+JRPljGmjcUx6BWv6FJo6ebMO0I
A970JOHe+LoPyymJm9sxPu5kG4KStSZSo3vE5QlgZdpKY9kN9HsOzn22drKjVdI1oiylDcPZw5Z0
R4CU8chWxJjEQ5j4AiVXeJBHcmSnLWTsp5rXZPqEvuM7/bAicqCPYtVa1WFsY0j7ebcs+aR5muJG
VaocHCrgDVtG9WrUBWJARm1LXBI62q8gZFnP2H+64mXzYD9VXElRbXwFHXyEMeYhnHKZ7Kp4UKcG
UQs0M8RNVSItlAqSA3NJxdd7uEpoxHAOqm0PpoTGK+c8HNYdK+uFISqeNVGU4ztedRejWGoLYDc6
JcAmGONciP19p9AHCj2F5fcegAFOM2Fdb7P36WHFbW8uUYjJP4tOxowPo1sbRtRvm2jSxZxd4apJ
u16A00flpVdzlLIIZq1d1v4tXU3rZivB45nlFhkG+fDHoye7OZPZhlIN82Dozi9tAH3jixCb0XdB
aH/9PTsSzL6aSaCg2pdxw2ksQZ/G5cSBWuKvK5oxDWVQpZHH+s+OM9VgJVgd8n2RqJKbIAlBjQRU
u+mi6t4baZvlaQVIXKVlzwcOjefCyu4NkraRmO8YKA1IeK9YRGb5yFSwBk9UP72ifAQJPE+kcH5O
fG+wWgVTIpASQ4D+4qqENnj5IFBWjwO6hpzelSP+8RKjHzgizgych5x9+aU8NxMspwHmyYWlEs72
/3pzUFk6mnlNg1drPdvxP5HRTb6/rn+nWeCESp0Sf0aLbjbtXtkn6YmW7+fQdhqx2DjG37IqAExG
NIkh1RVQx2pdbXNGMxoWl4x95PJES7jT/u70zf24Ef13k8V2vx+lrm6xOTRywrTgJGNMAq3lvo4O
VqG2F4buwtDZnvlcG+EGz8KWnBuqEmKUpXW7sK2EI1stD2Xeak9jlGGD5F99FB5Kn2f8w4YBK/YR
0gIC77a1tYNp1uwMM61Rq+Wy1sawmcLhyMjMPpfOBubFD8uGjOkpTWumCYsK4mbXcC/yxeLQnaT2
NeH7AcDYSXaXTq4wi4t+9KcdtlDHzAjPOvM+DLWUkBXVwIT0WYP59jXo30qPhiIOJYRthizfn2/S
Hpo51cP15Ean33mQB6MJ8RR3mr9dIGFNVdt9oDk2pQISP3zH+7JGvWk3QPeisgvy0ZmB9c54wxDi
OpwTKoRelheMDC0g0YsDyOJ/+Xco6lwDqJl8oQMio8P1EofBQw3CgiIY3k2CKNpvb4T3xh9oXfXz
NBgs5qO+7S/NdfTCYoJXq9DyQTKkNC8ZOIebuCR2E6Jizu9yZRHV2Y7DXyWwgzd2d0InQM2Rql/e
G1CzfxRESJ8v7leoZ6dKvAsBwFUn5o39yeOOwgxj2x3h/lBSsTkt1zxA9ibH54Yo6cixutOJXzcr
eCuCUwDp9OCBQYr9NxTpFpNn6pVXYJcL426jdVO5x6IIDA9TLXXmageBe8ew4CV0/mA33Evbhmjn
h9SWhhz1KWexAaMP4pM48OWV/Vu5ZEJFOdhAZXrqxXWHs2CckpP01dhDLqdXhHbZrQlgTw0RLavQ
IoHf0e97Ty1fq7rfBKgICUe0aaU7vCkewqUYs93PhymoIs2GfvIPtlTP9XYJrTTUbk5maqP6xPit
82SjUNfsXjD9t81ijfhpvGyXajSWUVt2Rbhm6fB+mgDHoL5AjWxaLQJhbF5VfMcjlrUo5izdAfA9
G6V7yio5zFoK3zZulHFNTwx24pvhCl08dUGsUyfWT9GQgwpeucy8spiKUAI4C8zFaD2rOR5De+ut
eXA04t6OE+ZKkvAJKhnKgno652TRwcWTJBWMcTO/MfJyaUmaVYer3KU3MLBd/QzkVPB33Pv7b3Ts
eyS0jGDaEVzQ7ftG50rS5PL2rXZ8ifueOG3KFdGBes2lTzScQ8TP5oe6jD8efu2d0jWtc+R3FNdZ
D/ML4xM61Bkw5bXS++Ag6qpzXl3hFFHGPr/pbXkfRTFo5p6xwlyLl1i9jo11EhFTjNoQ3+HgUiR/
uuNVRhUOrn8Cd01rMiyrp4T9CIK/mZ0UmDG5Enn2zuqoYbbg8rq3cw4H0gbVAYQCl5tsAjylC/QZ
NkjyRsItQdaiF7YxHSKLzReIyZh1QoXgRmMNZ9ne9/zAWTLB8nlgHAnbNf/UOLAEKDowKcsdeMN8
tKoMQQG2iZANysxCSGVrzaO1+1cJT6sYxWPfUb7TdlfnFVVAe4pZLZiW24flxARl7jaqxecYq6lU
iVFYsElRpEHHfIb3UDeHxRaXaqE/kRzHGY6GCEosedGFFqYTVqknDpnzIohWPzO/zXLrWJ556A/B
ZQ4WmEdpzoawGciO59idAufSLUNZZNuuC2FKTGF04jQkeFGtX7eOC/a2FGZIFLq2+JbaliobrjYQ
BooFXpi22qAROQRoNSmKCvj9x9zaZgs7PJRLhMJI0h/d9RiG/Gl+1pT5soSAznXRhSVUHHE5w6Yl
u9NE7pEpegbrmMQdV7w0z5Vsu/SF0b1feQJAI4wSMOtfgdIKp9ScQeqQIaPtv6Ryr3rQk7HI929f
gxeeqtTkaVQUNZ4/MI7jmM3xuGUqcger+964Frd+QJcKEurSPQzvCF3HLx4XbngKd1WSgNt8uvp6
8A/7Z4nmDxwV7u+hO6eh4wAibIr9IK52qG3RkLPIiYHveNLK75r6vPGuoo6HIFQlo7/zswFyrWvD
V/4G+BUZrX2hEAQ8CFHohzX+0HVtG3LXRmY+sc5sqdF+Y68ChEF50omY3QK915Q4cM/w4WCYf8Wn
dOFKIM0O/P6Tcrmn9URVOSkFBq6BfillHewzWIHTkN8TChJhISzztCujcrb64sNZalfBbmNB+CYQ
fT6JCDYziSeE+qIOhw8+Ya/JhCw3jJ3ouWay/YDf/QpVNZPf+bU0Guoye9zdgEIIgWJ8043HQ3K/
Rr5Hp3827flv5DfkMJneMcVs+tVuAVuMzLNYGpRZxeasak9Va9cFE8/PMZxiA5RH4TgjIca2Ia6m
ploG1KpRvXmoh2hCIMgNhMY/mfCQPaIjzk3db0nPKcKvRwvGQ1gDZJGMGIxMNyAVugKxmZyxHR+S
JTcPLDnMOn6mkUsZAntw1FW4B8HD7ez/Z97N0DfgXRTmiTQEDJzx2clJ5qKYyeGaAOCdQcGQM/AP
dTDL3eAUdMMf0X8Zr44c6N/egOqY47MvsKjLy7nn7biMfElGlIxQDudP0KdmZ9gtncCJpAi7L4//
ops+k0j7iicSIw0RfXbAntSUHnsKR3L69KPa7vDkIaqlA9c/j70+ruVvqKb+yzWor5fyex8Uqhlq
0UER1OkHeIXJVZvG+p8gegNHKlrOFzUBIbtb0pv/KYNXuVchoxjvImoU4RFjuH2cr4nsRcxX23Pj
fzQQtC9h3D+wvvAVJOuCrwCdKZwF8FINPV0MHVPS21/X4ItPwCsVy7e8d+ZkqwfzGhCkn+kfZArx
mJH1whSngyxV8bDp/BBpNJNtAXPctsoBeccR0DJNKmB37RwCMbGrknoEaDLpevkNzo2voqiGKtLz
JdJQhRXbAf5axIxR8k9SUBZtc91+XohACKhErX9lEyQwZR5QQcy95gR0N0CfE+xYO/R0xdIqlgaw
AlUKmXpLJf4QMAwIY5Z4NruT5RGmlQ92oNDaUhlsL2fh8mIxcA0vWJPIJDl+76UqeveMxiZC24GH
cflNPREMzg/tZPT6NAZZZuLDQRpTelNw+ut8g3a+GX0NAeKh1bA70Tes5e6pSSNlMs/S+64dDfQV
/ZkFFu9PR1IeKroBi4CmBMGbdDhbbMTtNkxhSbqj27fiIA5J+NrM1TncGhY1AQCh5q4mEF75SGIv
CvVK8WXAh/eZ//uyUsCEkudtsZurH3ROf7L/byWKSQsd+USsaSFdnw+RaPCyOOtITn37D91jlCtz
1OhMBsK/xxxODwzyqa4KS32FJspVDRLaMFmyzNYBdOf9DDC2h0tkq9ldYV2mlJA4NY4mzOUgI7Fs
YH401MlwQXIM81gz75GC3I2YDQmZLW13cZiGM2OAOCnXNY7izn7X/Gvvf0dH7zu/grnDDW06YInO
eVnTFFid2xQKJGIEu/URzzGCTz6twWPTAIbCw/UB3ZdQiWXwv4XDHAZZ1Rh9+H4Cp9mP/wVdfREr
dzJj/hoYDZDFBysEWghV5Tl3x9LNYszGGX1ksnu9YiqdB3xwUkg+pNyL+DhBNR0Pg1wEbASDRM8w
CX6wiRWssuPNNG9FNWXp+HG9HjsCobiP4aT803rFcuGPPCzCOrVSjzGrqOP3oWE/yWMJysyyPyOc
mm/8Y5toczUiOQMGipNqKg1ZPO/YbbKgpIIN6zmB/852PyiGMLGQJdfitGQNhsTtRPZI2h1yo+Sp
hWYKGr5vMBUHbX4uuHHSnhF5rutrDmDiavf65IfKkTXL9j5hEFqiZJXQNY4WmLxPzgR/njnCK7DM
gleeUmGKMfmwz/6c38db2FjJkXFLKF7NfnmBA9YRP19fhvwpj2VwYADL+iNy8/qSKRF0wIJhzJ3E
P9JSosSbWQ8R+WeQFMsWNKS4/Rb3vDdbTw6xRIQBinZz12IfqKl3hR9LSq6kmss2cvA8Sjyojo1B
enNPg+LkqLkZcVj/I3DghufbvgVXYVGr3AAN2z4w32/xlJ9VRQV/GuViMjwMm/HSk0bW3+RseP5/
68fO4sphJifWMGaNLToxQlWVYFehipAFiDXSXe7rbSXf+HgAxUf5Wau77KzbJQu30CILEPRa21Ux
jTTTJM+uvTBxqL+G2Cg2oQpznT1FFWpYTI2tLl69HvqmEXxeF5zRLr89EIMX1C9lFhUFaZvNo415
nkcwbFgd6IopIejbm78Ywp6fuWYXDWV0gs68bA+FRgUs0ko3mRP+dh3kOLb3/124p0yi1qH9rBH7
hpWOdAD/FwxrTBYXtFYWIDJY2Ry7sjZswSLmLFrAJ3Dyz2PCSxxycMnFSOlzFtDhHd3pA6rlaToE
4HKQMGQdVXWausGzMBh1mRVZKCf8wBU3hMoXZziKs7Vjz7ms4E9qrKXLj/u0/m2ZJD54cjQnMGo9
WtwGq4lJ7nI6UHI3uLBhFfSUlrPVR7gS6qsbAorvfK4mIMKfr2SRvwRdhtVM9rHAZlEdKxINNbzQ
llEnd00G4H0ell1/EyJtKOEi/eGHPxW2iaQEu7W61WA9tjZetqTfMdIOdUzUkVC0bnkf/NW03sJX
TvcFndpA9I9Qe44K+dzHLT6EDjxPmBgkDmcqYJ+F6xbcg0aHMzcDwoFSfWmibxaZugv5yuIdyDFN
SX74LEmkGaa7MdryEOPLs4El7pA/ADCyPRsuyPN6DEtnd4/U6r89isvmqCu673SsgizrwY2U9ja/
EH38MBxbF1glxCnKjGikVA41VcFSLGgxd+nFzbBH+MP8+FI7/zkkrJ5eDjfLnsqSRipbP8+8fldF
mPbQqRnT1MJbJyPDE4pf3upRvbNZk8/98jB94Zj6FKYqcz0M4RXfnYp4dKUdg9Zh/iJMwWDbutbN
xDmOrKSyd2HqVjUZUOSCqFlMoPmB0Mo/q4ZdqmzSZhrbJe0mPu7zbSMZWyUUSWwA7LyxMaOW/fcj
jbcrZigvDVGtUT1gxWtiyXcw3ZNY/gkfZSlpG35ct0gY8vZ/3psUOOJ20ocAWiAlgpxAG/+12urw
lsSOYrsfcLjxPEiupCU4Z0CNx9WJqZiAgO291FBlc2Wi9tVytMVKwLqpoDXayEu48OrFDnDdpo74
4LK98TvuFMVa/IhFwR4gGFCT2kqcyWNMb47KVHNgnMNjWLmCv5VF11Jj24T2LkKD9f1oCHvPhKRS
Wb3P1Dv27BMqRV3X4Va2+pFY1jTN2wodzNa8zE0hUPGr4hB6blWfBiBleVQ0n+EO2yxknZ3PLlun
js/wjEO5JFyrkwwi7+WkfvweMJXNexQjlLKt70zgm6sSZzYMCPanQAQdMqacLX66x40iI10F6fOa
cvn6XgnTHQAP9iN0Vnx1BjLu4fiq1DMv3ppMPpLD9NpNtWy5dj+m26Yw8hC79j9F5+Kb4TgUURxM
+3XWDe+lDGJmGGuJaOlhozBHjMX/WnEtbRUZK6q8EpcUPQdm1HrhgbTyxU/T70fV8oaHZh2Bd5Rq
umclY3BxnowpyL36HGDc+SQg1lD3ZxOsCcidMgKykkjgQNTbnOefF9hPOlipKHY45onxqyMvpSak
H3UTPRFtJhP5mrEEvOyvkzs87naEFfJ8vnWQh34fyM4CYQtxI8XX9s3jrGxa3V6bvE2/1cqlw+I1
v9bjuLOgY7cvX+0B1BEriwitlg0vAIqHW5BH+zOTf9ivVH+kcjhE177DgPip2EgNKv7fcgo2Q/lI
+AJgKx1BSRGE5rwJU/NEsxkz0iuPRZtiRWD20KB3NaA4m9Fl11eWaCK1j3abtlH5iTTOYSJegHah
F8jvQ4ydTK2n7UE0zjhjdG5wRcMUaqEPo55lm54Ki2QlzJ0ZhkNykkGXWWUlFnCDW2oJrfhJVjzK
ar8x3LU1wtEg/Gso8dkwecWIcWKvvm6KoWfTkF42ySM7fVGjSCzwrZpJycHmndNb7h5JyXaBbk35
1ZbWCXyGD0q4w7bs7HbfARTzuUPBZnfLkE4YXmfQVjjVg00qXoegL/mKl5PLsbE2+eoDP4fo56Su
pbrqbOQYDZk0+9O8RG++03UmqgNTAtBTz+b4sNaoDAdXRlvgRgPJMUTejR9XqSnjiLwuLaa/5lAV
3vs9dIfRElZ60GinVAKhsBOtFY6PpYEw3/JOjz6518Oev4FKVoFEjrvdAYX9xke1x8FcrYRLe5NE
y8ivlUhnJGEVwJqlvX1uyUNsVChVcppqYzbljwThAsUIiJV/PkcWV7LvH8s09rRi/z4YiL9hvnGd
Y1TmJslxk1TOtgiZhbpFu6otQYe61iCwHlAKbJkXOvpgwAu8YB/TItA8p649MBOkOaGnZ1Urb7kE
8yTnAFubO1grCb9jTMj/tRuDNd26PvT++sX1JfkJoGaZvps3kPTbCL0lfr6VI1jB8lDwJ04BACNP
RwRhFWODmwaDNTrDClKHbMUNa70VsJByai6qOZrrYf4QGGVUJLGdM0EI5KiK4ZFGfM7Sdd+TMTjp
ZT0Rb5WKioM818mPGcDb9xeaaj9P7PqxfOxxnzwoVqRacZdW0UYIh0EMPlgq7e3sZXn0Ze5yMd73
4lAONcfpM9SXP8Hr19gtC/vECzCZQQsO5jhoI8FJ94e1AwNGMjFfRmgLLWkbLlkCtDLtaAIsOaIU
I3+IjppkmqktR2R9zx/ZOdp+Mj2UdcTnPfEn1NPLEy4B0CilO5umrGsjQbG9k9k/iaJS9ja6f36A
LDeKMmQQHR+KIkqXndOTpYYD7VYwMg3SKSnIIGS2eEFtTyskGQ6Rd/D99FhFgvsSsj1DJT/iWRQ7
Leo1+VlmsDAU0HRPTh+kmp3AzaM0jGr3TlZdW1JcuYivq3j7QQ+BDK4aT0HhtwzigU/+4IRnOm5j
WHzlJ27EwMCXtyHP7Opr7wUTugoHDCc2rWmzasRgU3C4D/gMsLAf4bY1v92MgZJIFcjkPlc+Kq6I
JfME/I88Nxzer5xUbKJZacohlgoK9gbnUiERRuKMnK9/5ygGjvBzVS1G4oCUK3HjjLcVsInh5H+5
mE0Q1LFirXfCAo/1bPwebTlnUoAC6Baax6bhyS+j66p1h+fKPOJUozdFqQs5sP75H9D8LWPlisp/
azWZOWOJRAiGWOvjVwoJotCang09YwDEWI3lxyl6C11CsZJxCS4PN9sPhIoo9vBhCV3S+BAc5wsU
8rhUlZoj6i3PegLfX4OCZfC08GSV5ytXGOOBXykUEBkRCQQ/YNH4Mo7PB4PAUOfBJV1cFt+f/3dY
UtyNz8hi+OxUChLRy7qZiyvORPNGt9dudFV3n8I3YoFQy1M3cSjvxv90JOMnmaTNqFt6S2JC6mBM
xXoHxu7/jfyf1qLs0AsJuFxWOqABoI/5it0ipi4yhxbToyfdQdhoxedbQroH8xl8MGDIxoD9kOcj
yH+xIVSPUiaCBEaUNlUKpghWsIOMRbfqNtoe19xbM/PAmQDLZpNZiWCEAJCMbxXJG3avpF7tMXPh
Yp0CJvm15J9ITVrqHwdob7Ymg6GCMoTSc1dNwW3jFIIq6vFBKfLqTXa0/oZ4zJ6HvHTfbczpJn4X
EthPo2rRWCnfSXAmZxvzEXVn1NK/cmnk3lpoPrVIcN+H3X1VJQLbs02HBoHFAL5fPmKAoZmJwVyo
L02KaaAJyaIIAgOl03XWunNedfEVo3gbwR7fNGkEc7PCChfL1MjsFoDyEDKWbMzYMgw1da5aaeFn
pd1GEhfOGG6DwRTzJW0nnFCE9+2Ez5AAVxiUsCfp6D1sTz7grhxza3ItevkYgh3l+EcvuF7ys3vb
qcTBn8NUVyCtuAqdcuOYXXHLF/U+v6JB7mwJ4n36enZs59rtkpOtAQg/7qO2nCpwSL+3HMFYddsZ
+fO+TWB40yrd7afrMiE9voEvu81BKHjqegsL+2HJqT/nn6mDMD9Cco4xIO9niu7FailcqNd7PBMO
AKlIXSU0BSN5102dqUgSpdKMAjdDO1qldWZYJcHAFxfbvh3tiBRoFDp5KJn3QxTcz9lfCDF8HfuV
z99L48xqMZ7rGMnI5WOYvB6+NmbWbzZFhaYPYkNcwnhAoA+OE7zutx1UL2XZ0ffi56NZlVMnzT2Y
jCT19rzOx9aJgamydRXh/wP/hiPvlwiI0cpWzlrIMLo3uxBkzIIW+ZOPROkMUcV8UmNhmGGZN4cw
B7ua81m0AFx62FThBfriKcMmRFbQej0QLzPTh1Pl3QM3grJ+dhXIliksRIWtvNl3J6KMP7UOVKon
yFKJFQlD38lcsjIztaVi4QnJnI7Ni0pGbtVHc7ONvnttB3bnJy+xVykyg3LvJbsJ1lwgPjo+2KqA
b8HhO7unRScA1JUumrfzuktciSKB5eAYi5uUS4mcTtfkCdHR5gzmSMnUOud61/GMhD14zzZzdPix
9BZGMo6cXeCdcuWviJbYn4S908t6OreKym8MumTCVlHUdMysFsAxP6At6wRV9QWw3wspAPCNyqJ0
b99YgTtbjIze60z677UYms8/7dp+YkYKGrpC390Rx4WdWzrkqzeqJzSmVpDkfki3Q3yc8TraxcWU
N9m2LOHjIhBGizun6ICEF4IZY4vPB5oOnBI7Z0xjDLC8E9a1fqxCxxhj81kbNWD/mJk4FnWbZyiM
v/LQRvIUydBwhG/1VqsD/ULQo8IojjaPkNFE/zt7DdXzx1us6CToMIm9y1r+jedBtnpWXteOwqgb
Mb92GlBDZW6iNgNTE5AVPhWGjG9OgZtn+MtBsuL/MmxrmLPtnjlxYoe4GWxVHcE8sPii29fZqaPd
p7VE+3x/1iBtelfx4LHDV/7mGxOQO85hZWIM4o4G4bJeclhJuc/O+t4jL8+pnzvMGRkDiZuJmKsQ
tXE/jJHxl0UOvvoBbfXyERom15dccBdxIgZv6DnkAzH+gOm4rQJ55s3H3NDfGeOkAbW8xK3F7BX/
AQamQIgV4XAE+u19O6G5IO2ZYG5xuOnEYb1F5+OtPRhGLLCuHFZkfe0kzopra1BwXtTLRTmMOs68
x9AULAhzO6fz+7+vFGUvdIln9ZBQDYKpRib/a7+GNd4Yf+DQpqhjgUjyCLhew1HSZlNMMx2PDOqX
aa5NfUi83jo1W8JFy96F3j5F+pIZuOElRISz3UkDe84hwWl5ewrKgihD4mv7GxXv07CMI9yD44Bb
uie4MtgQnW8IZMezlihVdJQQaeW6cYC9TDmyV6sNOy72dSJhZ+jPIsWJWI6JzGTzwy+Zvc3dTIRn
WNqXCOvQ8NZTNz2Kqv8rcqoo19aQ8DOD1hw25smrf98CVGyH2dYRc8zoE7OIlgVwwyGbA9CidHQd
exn8dbsLgYPC/MpRtS24lzzIUai8Tlb7jlSmG7R3qcE0NIKrFSepqEaUKcgb45RW2EyRYBaJv3Ut
Gaa6tZdOyM7YCkddtTkp/vV5XuaJ8sQDdbSGVsoDLQjYtTlaezXJpFMlIYQR47jef8yO0PcwaQ48
Ox66NJ4Q+sde4ZtsUkleGeoVhJ6jE1vrEiy2jtxc37yI547TTgDKRm/QqW9wr21Bw5uWIX6JjAtH
JYXfCA0PvUMDKHMex6tsVMJLXttnty8Hd5wK8l7aoH2VKvkVWcHGeaBiMtJcdAPas7Ic5xLO3Pfv
4uVXJEOsO4TeYfMYYvl9TUqALx3No40Ri1mWlnhpkZyDLiGPAZsgOwAowdtc5qPnDITtBm2i0Kms
aRGIuf+uQOKyHObp7nqkuvdUpFkl7vY/MNte/KgRQFKFSCo5sC7j3F16rAdc5gSsdy36IF33J2A4
h/32TsM2eDqeJ5oHOg6/BkPlQTy0/MnrBKdB6ZPcRR5981iIgd8Tn3xJTjLnu7Fn7w7AWGRVilzn
8AGrCyBAtrLxKxX0LvQs7P+qA0tu8PsTyGtPfBk5q0S99DA8bE2cqRN304VDYvhdVDAT937B9jix
OYv7ICe2VahsnVM/KRCR2We1DjEnGVrfvbB9250Kq4pG7J9zfsm0XpUsS7/RVjnbB+yKyOWKXkrg
MHg0SMvxnRzHQfFCNleFz3fIWBZnyXo2Y37Yz2wAyaBv1+YPcO8M3tAIVDslUdPnh2X3c/52WBPS
V7xrZycVVTxpq5wKMrPmE1UIb049Lj6m6hETPUiC/9yvzMGppUmUvP9H0/+I7CWTV4hJfrk8RxKC
4BHtRQV8cW+OHrj//urOs8zfK4SZLLUXYenn9RFL09VonD1poMOKd/zGuXIEr78pIH8blLhWuPuC
D0nJiAKABKwcSox6GUgrwWjzUW4nnBeSjV/tYJyfyVvxV+2Scltfe3nIiRbKmDy0Hq/TXkUanXcU
7Qy0YzBES71xtKCiIAhs4Rm6JSFLz4r6hnS1MHEdhsXycu4F+dYOi506ZCOb56ZeYSwr5BJZN4wb
VULRj94r0lF4BWpGujie4P9WVO/VAWaltQQUPBLxF4+uOdpe8oNr7Q+TMI/gU/u/sY9ejUQC86Z/
/85yaLPQDvO5By5Ai2S7FdQZswnNzm4Nhc+qUAzyACM2j2fhkrIUS8fxY41UVFqcoTR6/YgSDjR6
0L8WPaOYQA+8nyfg2tIUysapwioUXbIv66RbkV8nyU/xKWyOFff/1MRyWQdajaazEsv1t3GytQP0
PXmKATmj7jh0z3tmKwjelj7RtP5MagZWifMuH5IpjnFTc3Vvxjpgy4Nc9d2Yz3XseOHzQl3oe4ft
Bt9rgDO5Sb31VpHetAJL2m0BkYQL9UP2OvGNTJV04bzFPVUV6IlgYDYTZDDx1KC653vZPlGX9Qc1
E80Nw2EeDqNG8lHYz22IF2j1Gn8iQwjFk2KlNXa9q421YjBuG3s5QVZaQpSjNwBRWZagbvRNbG0M
KO7chCooxqQS3CNswDaG7OyLkwfOnRK7CrNPTfqIoyXOQPbHgpsP/Sr44LgEMiPSOO/MrAvVIQNT
Zn17GvAa+fbToenCkkvpblSaHQSZaX5D7yiW0ION2pBneyZLjxAUGz7Z6PjvvgeLbQrAG+Jyuv8Y
rZiTqZ2DzWbIesVSXQxeeW/OICD5d/kp2PIS4u0TG6K5qWksfzNIhkJTsNtSlZuByiAKbQ820Qc2
djuwDSsROTRuMj1Fo14myB1CwIznLpRtfSVYwmO3mq4WTMVOiGPWdK4xQ42cCyM9Jm2wYxjgznzv
K2M0q7CGdCWhAVbdPOkvWeQQDM8uMy8s74ayCcKqH2Ux22SbuAvyG5RaGoXDvYJ5Mk3DLHwNk7yx
PHaesQIjygzWDDVy0QXsBnAR5K/PVszG6S9GCaj2SOALC0NH7TJUcSV8MKMnmqmUw7SxpkurSp0H
oujO9FoqykkazI/cwdxrxLN5ybfPCnB/+8i++cBUPRWeZaBLDE/ax4lrHOBc6fZ/nh4qmU9jQHoa
xS4kwaBBd2ENR7OtmaYxF1oVFD/GKvD7y3va6Qeh6W0dgnJByf44Ad1OAbchQatsSrF7KAYj32cS
//6hYBDeZJHanIR9adZbC+40bRIkZzVqLMur5+hK4LntXBFpUD9kh2+ubwTaHsGQ1Dlmc9HwuCax
ra3DZd3NFsG9/uFqdiePDVx/4GCCmxvqfG5wKLG1iO1Urw1padTCpeTEsAH5eLgwzjc0av6jBJ3Z
dVB39BOa/Ls8X0WsgNoXMIfGbSbGI/SO4HRfOUwmi6ihcAB5yYKawZH9wQDhcnY5u8aeO07SF7BQ
IKFRgo2SMSqHEh+XhlwIO20jEP5xg7xSNrqRdkWv84KviNvOyz9jerg6D+a2MUIa/Ym20bBQdhUx
SnnmD7Hc5RszcHnOFQ3oXZQyvcDGjT7Ujmueck1FKeGbqd7i+1b0Cz2+WBt8JUEcM2VI4i3rvYe3
EL9d0P7rBNBwZCUlJwRF/ILLNiU0y7Vp4ERa4DUo653rwv0Y97HEWQfL+ztC3xJsEBndHoobMG0X
nGBJgiZW//5siMLL4JraFWwwqvZVUzyZHj1ixixiMjiOJGEgmshuJcKQnVHR0pDh0yhCt0d3kbAx
MRBmmgfQc85sL6k4xdEFZEa+hnZdnypkluqkSdCnDOYTowZkm7X9WFqeQ4yRtBT8R27shvafWSHl
tfQ0RalqYnwScPg8a4F/gJKkN2tTI4aW6FXo9AX+prE4oyAzuAneGngOFskuazie+8jdng9wR43w
5okjSnJGP4Vto6NEQzNg4YYvq3LPDjvAjUlsaidJCaN5W8BpLxCCcS8dBoY0sXsIe8E00sBejMXl
27Gx+Q9txEu0l/d+nu+41EumCMf1zCoq6Mmkb5ap24Ay/jKOiUTNrdyVJl7BJ0ZWkieTYIB9KfYF
D48GpTMF3MQ+v+JE/7Ozgmscw40yBbwlMTJBdtciJ9x2WZcRLy60UBeBrigwi9rXMSvPorWyB0pe
4EQAFblcuFtFwuqaq9HPKKm5h86Uu6jUtMm3TYuRyUh42t6JFASx+1RyJnlutvq6Kaj8RmAiD6U/
yGHdeyPL3hJR0be1b5X/aZm7SkCu9f/NQchjtrWXgyLEI6oVHD4P5xXBrM6E9pF7SS1+qB3mip7R
PQidjTRsj9j8uyLTd2qrp/SkGqMO1KeztI0EeW9SlOka6W+AqvF3r3Jt2yCT/FXcKItsUUGshWxp
33COlqxvVT06noy9OlUetRsIUWpKJYxFxEtptIi3ZcO7+6ZSkz89hLMPBqrzQFIsyANVUhMgq1qs
YhocAebi3NuRQUv4jAuVuihOnRQVpiIY7EHDDtAomNQRKRA2XkoX9LXF6tTJOHoJqM69W4obuZA6
CTaWODSfrB4k7wOCJRYW3nYjuIw1/N7OLmA7NwaWVB8o1+vdSCXTbPX6bv3+kME28x+oUI2hMzmM
82cIlW4GRBo1Q4AQ6G9BAz2O2FS+9m8lrduUIruEmuYbDJ646DDDUNxEUTjqpLyg4mYeO1Ni2cUF
j3DNkPaTFl5miFhyVvuUTC4HsVYSc6G8YZTqB5j/zFwyWmMOZrQVQFQWYUySxdYxs9/oFOQnKCu3
n0pbuM4MbO6aNgVBOAqd6Tm2Nstxq5WHt+f1JM53v69HJ8r1Ecosxp7jXdDlSFlMe4G2S1tvQg+/
pUIveevw+WbjnLWoWiBBR0ynnM1IoFV3XIWjo0siXOu6Im/QNd0QAbHJFJqgCxutHlTeqsXGodNg
IpZPhlA205vRZBxJ1EGEkSNcfRsi2eevo6Ga59vNBfHMSuocAlfnOqEzvrvy2cXQQpdBo2BYJEIe
ICmQ8QwRH+kdQI5DEuA3pBI/jsBgDKeW6pqJBOs3iT7LZnQRxSdwgvmjKolbt1CWtldyWOMuiIy6
MJ4zeffFYAmlBicTSxYtJETAEcBSvtOVA7TztHDIOFmBwViPHQVvdRkW5BFm3BuZE2ldKHYaXoyB
RDk5OuaACc61qwC9W6tfk+B1d//ecCYDAZBuB09SNDHzzGVALHkqUaCCZKvrYeRLiZoWzKEO66tx
rvCVHYfVW2Boj2FisNEouFkAzx/LAMb3qwTQv6Llaa+gUI0SJXTUGqUuuYr8QLXgQgYY5/SO/zt0
VxKsOnqRXr0AQ8/L2TSSrP7/kJMKSqirw2Po7lNr9/R8bjUOQyWgBw9kjITF6+S3xOXIgnT4R2Aq
rx2jMRGPoaYgIz5lrEXDv1T1++0tdJJ0UY6Od6azj/NzAJbKOQc9dG+axfelyTtPJm59ivn7tpy1
pDwJjeOzAL6B5KfjuxsndMT8nZihDeHKYMunmwryieJw8PYqj2hAwsxJqpdvvBVzhtbC9e9cChBM
GTgkzZF/C2X/gyNtoFwwRUlEAK6ZW1whQXs1CxbnvIjuNCvPayA9BMZx0QlBb+SVH+NaZ7HRxhE8
uzLc2BQCk80ptudNgGHB0Oky71ORUqvpNBR/X3A9WM2fDqXHaDOv5mNpuK6cY1NGXfOzud4mMdHc
Oa/v/otVHQ/WkgkF/OFGN/3hedljfpUZ/bJnxdSDYkVRy27z4leV3oAe3b7/Xu95KqX8GhGtDwVH
LT5Blznkp+04bGoyyDsEtifBjf9aHZQVJAWv1HBlhPWjtvajhtrpvjcTaXMtmPJwmsQEJADHTusl
TMuPnzz2K5tNOkF8K88Ajx9DSc4eqltj47blXYjgrWIhBEqGBtvjvaWmVKYyhrA6yW7vTY+qbPNT
kmYFKBrCiiloDViTJ5C60WXFjAI8e8LGjV92C5hy5qgQhTImxuA428X7SP0HJOdtMpqjcEvCgwt8
l79ejbMULNk4jrqnAGG0EwMTf/tUgYxqJrpuDcf5FvGg9qwOV1HgQaZgcmgHvhbqAmcpCL1AJKa9
H2MfOCh95gwbIXcYwoWxD/x/U+wQgu7ntpcEEBWpUqSp0iwE0gNOY974LyGXuXhUBLnxkYFQBFVM
Dm5gcV1+qMWTe/fhWAXPu5H9hKMcK19tq22HnuJVBGo3gXisEEaP62xqLwdimny5rP/+wVyk8j+3
hATVWgDboYxU4fmpYXBQGHN9p2bocg0dWyF5dav8YneDE+DIJK1aacn55AcVxj3N8w0j24ZKaIxm
hdL5bxkrrKnt9ERI+7xWKaRdt6eIJjiKvlGQxGloOuCfpDA9NXnmVcAkENFIrVSYToNEkv9qHw74
B4n93XWnZ3g1qThqsxGZ32gRWfaElSzI638Dzcf1mpA6MbZYqu8eOUM+8zYPxDfu8YORw/oOgxFG
QnM5JztxXF7HXBgxLLMquOj1de0LFyrb5HaahABe2/XmwVcl5IrW8qgYePec/YTmjrztSHry/1Zj
/kDZIZuQ4XAoqNMryU4fMadgebl+RCqWsdsrSJCzRHCDJ7Z285/kd6F1ASzsoFdEXAzHKyx5MOgw
8+l2YAtDNO+aMDjeUNN6uH5iCtOxNqhDiOH/ceqd8pduhv6tO8E6IOLSiHVBmLSjHe3EDiPZTHMq
9NMHkXWvGTgaY1UD9E0i2AOsyW8maXhoN8xNT32dZ0E4xbGef0SHvIPDMUulGBO1rT/+HTLwLyS0
aL04GV7pUjph7r1aSxz0FQDiynHvhRNsj1DKCEIx4xMwcdnzJCaxPlo5NIjtafufIaR6y3tYha14
nGyaOkVZ2Uj3259cgrC31ezl0XtUpsJsFGXOVGfZsVqFJrJvwZkUEIxjcIXaUoK9flw+06jzJ8rV
3P8H4l56pju3w30Ce6P3CeI/MplmLLnzty+m+ViP7qyhgYH/ApH958XUBt8FvyxbLZ+78YmS5cPY
tPvekA8pI3hU2rTcVXNLvqXEvhf43EpHaxdRPhnbln8FT2x0tUpvMi8BS+IsBVZ/98BlVpv18P1V
xWFIM5rl83fCzSjkoXHfNsOSai1ocR0fngFe3GhH76SSWQ4D6kQxKpvK+xZwQ3rgkfCPrT2XChWQ
cDRY9/irv2oVk/VA1xw4k5L39yF9ioq/DeP1ht6TuV6csZEAbfvMqW6MSdbzpZ9/tsgP6onmqD+a
JVy6AIcJCa2SvhJ06JBRuydKitc420JGCMP8CSsLxv2T+cvku3zNVfoHzDq3hEOcfulDSQgoG4AO
TYoDCCCwIjerz+Xb/LAVU4pKxqevbhYSn9LptHNqHSpxg9Q002tFJfrZGHOJ3KlNhhDYlln9gbDh
5poltuRoGqDFkRE654KIiuuGpPeurnQCn0RIsF+0pfKX6bbEia4oFaoC1u27t4BojAY/wz9NJK8x
J0QbHbPkJrYlVI+zPA2nWye0rGdNDX/zoAIsTtDqt/tbReXRACVJkIx5sWodZ73gRpdJzL28VKgl
uz1zsQVnd80zn+7VCUT/3bNJ6Vexn1JXr946L5aj8kljP3qtiAy+3Vv5URe47+8PqaP59lS4J6Js
y9faZbIF4Sayen77Dc2BAZi7nv24v6fFSK9UBJ6duTDuJif7sSOUYEXu/cdKwlD2JnJRBMotaolg
qC93qcWL6z8bmKw723fWKsFON+AQDZAWFM+pcEPvScDbuks0pA7qpDivJG60y/x8WFxumxDSvLZ7
xYWvpSdkjvt1PWI0oZVaPV39zYWgDCxwLgC5leHSYTxpudKsm2YtxoUN1Rd3M4siEqkWRBYD5kaO
kZX9E23Vi7q6zjF1xeDS+ONL90SiYwVo28xeS/Eew5OIgAJeJV7deccMvvpHioWBrcHseqfETtCO
iHoeacBQRi/bGQZhQt7bZU6dMM9l3HHpTG1pXlM9ap8ImQAWwizClWn5gvZL4qVkBXAQFDTFsJ0B
abtMmthyzxoPx+sxHS0vEtFvDeVzcUnMDQs6uqs5rS7Q8FmT9Gc4M2WnyxoFUAQfKxSeTorbMHCv
S2ZIHgE2fc0cye5jvWVb89wmE9Md7RFq149FcyUSZRyW0zOFMgg2aAP9sSV9X7wC8ylYFQl6121/
oKSIvlb9GHkq9GPV+D58Peqw6MHSGE3g5D+NEi4cZG99EdWuPMWf00J6kNrGxBv+IMrc9+HtY/bM
KI95zaqKKRqdkuda3hiKiIZ2Oi1CMJ2/AirYMN9Tn6zGr9hOIROzdaVtvDzhC9sTd5YUaBSu2fqn
FlGFvCTu6Bjjv9lDA4L6EZQLcze0FEf6KWikbCQ5xrcRyIg5xg36xoH0i1kGiE2DY/6sPvXMXplx
h0NMn//qnnVQLtNIVni1UvQtcyBHbP7sZxmAgYwOSsHJi0Pv6PzpDN9LQSWzLp+TBDr+0rPct6Uu
EM4lwiWa2YSd6pc/3CLN6xqZe7C+R6v5HSTIj8WxZZo9fv9zLfLkWhliW94HNSRpTS4pVbu49NFC
n4DzU14zhYG23mnnIUEY2VWc6pGkD8KXAAFNQ/PXext4gOD3a3KoMcANSxUuRzkdTDS7oe1+f0j/
2dvDQjxrZIQQsinti+Pc/fSD0wHhp/i+/oYXgBh7AhBcpcBDat6bSkBszDrZfPDcN3sItZ8T8t0j
ij8PNlIEFf+KrryxXS+U1yBoXYtizU/ucgB34VEF+4Oe1Jc9laTzlyPlUTMgmZEyx9xyZ2C6A7Et
uceRaFAburZQ0iNMnPnAND4Rp/VlpjqVCVkL/zrbm0g03lJdtsSnZC4mgdB5be5F6klVdaVzhz2I
LBH7B/zZ+sDeoDWrmnwFbO8pdEImi6YBBgcVR6a440eA0xx1R/9NBU0THynLPx0YfaR6XRH9CghO
ntPsF2yhXHD6inCgY2HyWPwvGrfumZjRy7pvTzne+GOvOcVW66hjzup+7gwGMX92w31qZEX8DP2W
QLDI2zvo1uhU+sKdpUkZIwEkCmryNIGsSDEhGAwhwuWDwKk1BGsVAD93IyNbxJNIV7sznL/WRfCv
Vqh9N5OGBOsMCz85JmAr731Q4L89rNS7MbVtmG4adF45KVnJGO7VoJVa+9YJw8RaWUyT7oXeWJz1
fZjQfR0Uzse0B214hdAoGvENFn5ZH5NFXXPx9Niiel2K/rjAMFMG+B8+iAO0ha+MQtwqVqUsfKbU
ZMYTDxjisA7DAv2/3tSTWLuCjMEeXKq02enpH79Pajq1NOReH0aSiQCy68yT6ylX3TtERoA+t7P3
DET64ooYQAx80Oa/rht+3gySKnoJ5Uti4nXNSufo30BhoUGb/3yVU2DdMGJsjEcIxcNtPGZN8WXU
auKsTE8et8qCvNKDH20ydkB8Nx6mrSltng/c4/Gn1v0KS9aeNCaJT3SM0m39lOFK9mqMdXl142RC
+Je4bBXJ532i/DxXI0yAgmqT9b02HEudP10ajVv2moiAEEkWy41rvxxz07KKN+K6gOUSrvOlNlLs
SB5uqs/K9ItSapJ0jtUM69Irg71g4W5ImBg/ksfX/Beryuym7EGFWOxBK4IzZvv1bCcCuduQsejx
jmyqU+Kf+kmR+21vip2amppMs1idR0DUix4GRPGTdbOYNH9wOyEdUPBp5zQSjvDbvYGHnMhx7aby
yioAPw/0eJtEZw+eVa2nOCJHn1KCnoNhEtr7mpoozf/vuUlax9Zaq028tQ17AahRk0P2bPlWMrYf
2O4Twh7OXZId8m/ECkQTATgP/wyLS/iscW78kzHnasxnqzOd38KCcWlLfInJmbq4O5GZ4na11W+N
3m91JMWF3n88RY+slflM7ERrKTfcg+LYhrfrsAo9x7WXYX4Weyvzx6GyoreN8IBm9zIgd9bWmVQ4
yUCVQc/mm9QcU7nBvyCXLR0tisQ1Z+9wd/Lwtev0HMPS/jioqCoS/v5D49Te76otlHwPor5dcN8o
R3X6ZUZPsWpW4N+/caYfbkfT1LsWmBZbg18OkpD+V9mbIy6072Fk1ijhvzxSl+lp+IKH2LYCkmqt
VLDB0FnFucavWapc2W/kYEcFEC65/3sPfb1aWb04duFatoakb8KV94YBWvT04J6R7KHuSbGC/Hn7
8AmmdPSLkXv3/cdIIBWlPVjzSKe70nKm73zSdBFau1fC0hD5IOHbSkJE+XOfVVKanb7rfXWJn+Qu
Ef7/U9W9qmpvaRFdv6/axo0g38VGMG9HdVNfa/tQ7lyE5TzWReagJGbyXCtTfbDFNji9fOQRpxj1
BfeTJdUcH4XAvH9cgC3Nq8dXnpOhvzYOzAVTmlHfPXJQl0Qw/nJTQrE3nSaxONTmkFLKrTQyw/Tl
1JWES3DMZEMWSGSnSpsKl3dY9+sigiixbgqsqGTHqtxdhYOWdCP5YkyOK5P+vMfWELQrubjQ4iLU
rFJtF6CF2uZ9Y7bJ5gXLDx3nyzZ5fc2q7Cs+fj+QB9zpm6US9tNaE5n90kbnXBwa35d5eGFamwbR
iB6X72S93+qBGxQuj2sc+nRIaV7DBilGZ5kTA3c7we2lEReQIgLPGA3Jo4i/sc9ncCttWm/7Bemm
7HM1pMeeii1q14VCtxPhkC3Gu2Zpgl2jcfLSnFbK9VGCr34ZeI4RIexRPm5gZ6I+abMo7njG1V7V
oAWPEJFtSBS/Bj5qhB2kO4Mc1V6J1lLHLovMhScE/+mZmDhqeCtXg12m3Mm6BYPyTX1BBpKqoFyZ
7iWRQUZaN5zBWfmwjYYc/glEOKQXCGK7jwAQpMEqkAhPtn878LcvO6R5lIln2EZOHRvPShl2yyOZ
UxKWo0aiC4a4GlC1QHoyTgMfNyv13ctRCAZB5d5vNWavyxO1R7j/7Gl3svZw+GkKYNxKJZFylJQ5
pOpoM0JjLBmVBZqfOEuAg9TwCQVsNLwsb1zE6iYbUnc6rz31d+h37VWtjJWjLy8vanV78H757PML
TUby6qHLmr+R7Pt0TxwiDKEBkAJDfdq8hsDEwbcciHQjPxLkuXqdq1JGNNnq35ZwOYb13CyfpbWG
7JYjA5XTG4JEK6RODFTWGmbucuxXYvPbM4cQpM+jaFWG+xmcvrCiSy0MtE+M5qteHgXghD5MZvbr
TM2ecjWRCxfKwULHsPuk7zvcsQfX8UW7XaejC0REnGA6fzTxh7Y9AWwtG6HIMxnt/gDicDCwW+Io
dlSHivOotjlgKctrMG23Rzrvi9nE5a4Eyhl4t81EDFedRFY0StQdXxZQBgkrvfbVQLqQ+21nsDLI
Jmk8RP/wdIt58dhtSQk6tsIrNJxH0wak/JeYaFszTsJpx1C6Gj1qrxTp78a+QnjiMxYC3iKT7hgU
DsIcFmszmLdBAGl+OUtzsg2meRpVha6RfXRJRjcENWrWH4SrnmLsMikOHNogrc8PqZKH4mfcaxU+
MrfQ3svkQfQbTEu01AZ72SU4coWmWXxZOdLj6haBrzD3rGB8BLfaisN7e1O+LH1s8rtssHwA/f/o
juaAZgKzCbHgm9ga+GZhkGVo8GYWOyuQw89ZdXoY30iN34daHiha2KVfZNw2NshxUDnGs/wt5SPt
onX1297jPNciDGmepwcUp0mo0A2E4lzQKDiwHoVcjvNyix1RCR54I56TdVL3f8ASgJy1/QGTdWcu
B6Exuq+eoGG9Gzmbd6sWsIwDMdCMh66nnEHyGszrxkg6o/b6BS8/SVRH9p0k3jllkVxBxo9zGEDo
OQVRH+3CYKJySnGnHTYsri9EME9XIIozpvKwMIf/Ubc0DkpggvgtZ6h6FlwFMchG3B06jAWAd6y2
oW/CR9Aj5FpSA6TjF/b1eY0hRcLBAQtSLWLkUSe+rYf0xi+nOLp+DsXBn5G6ZnbCVDk4lH5YM8rV
Svcpt0h9BkLhEM24tnKpBAVMgXIQ2GdFlwKlkzTUBsllzGgJ/DrytU2vCGc2CsjWZypuYOPJI2v5
XwnYML80e/D1e8DqCrGvxw0in4vVWi6SOQPYKjNOTrVhuR9FuHZYvj+6z0ZXo2R7NUeY6IyR86Si
pqPNwOlX33nvirJi0KJvro6xGiERcQdi6CkqzWTXGSC+8MmYyyAo8VVZJdgje0FWUka6zRMGsvWf
ZVwpxzD9+OSXGdohLxHyb96ZhUJkMafH62K02+FGi0aQah6ajSZsmBqw0kGFaABF6NNolO9TV0Zf
cRHq2QJHo9fwXL+G3xSIaUWEvvjznpnyKQMNol36i1HU82EqV5Xw4eHR5Smt+KSC+vhtPRJI5phv
KSYT7BAqBRcFT99s/eEuLOMZs4m8qxVLTcvjjX3loDRbQr3zt4Lf4zX3OqzWibrZDSwS7YyFp8W2
6nf4SwRzPdmb1t7GlH2BUfnsA3V+8l9BAjXEMk5BWkY8HrLxBVKHkoNtzmmzuFXsT3qiTvOk5WRT
iPsOLyYV/HRWPuYrzJfiVZLadOMnQmHqZ7CdrugxJgWwKVgyrkHooJX/Yk3yv9+SuogaqkJWXadw
j16gstcrPnKzhhkgLrSe+hMjWKQOTSXP7fnkREWLxffHWAwVFsqbI5zhNjOOXzA1zZatOp/ep29t
SifhZd13Bw9s9kpkpaodi8uIlqD0MpvuP7i0k9tALeHNjOr45/KEA7JZuNN2r8KZTESkMN7j73OR
oXXecrO2miob9HolT3uvWE0cgpznvaOESuRrzgQKq4+QBw8js2fDOpoStLmGWTH1m2Z8NPkH0wxs
CV83Jw4RnvxZudH2VsoLAWMQ1F3N5AifJkd1P9SnZwQbub0M/cyMEhajfrF0N6bDhpZRSdQvjnaA
Wnx907WrXzhaCOh72lTbs094M7q9qletd7lieFwx1EPt4TTBwOpEs4q8dQFrrKobWih6RPs34wcb
B53z8cr3gQq6IgR1IiuKFT/LsfVJj+2TsWsPFOvT0EsHRQhaF2ujfalTDt4atVyoFvPMYBJ+L7t2
W12EGJay0R8ikLH0pfobiLh2CnxwoXOP3/94mZFGtFsjPjwEvQsX8uIYG4gA/w1xLynL9hG7SUU8
Os7T+9123/TrVInE8nvbgb1Bv3pZByxaPRVaqVgmV6UPbabmLI31hNshINld0Qb+VvT51SzNb/ju
dMnILIVP2W1Lg9+53ziaY7KDlr9PonLiSZW0h4tqZmAhN9Lj8qYKga4DdR3iYQFtgwxdi6zWlUuN
vt83Z3enGREGQcWAQf98+qXwsL6Mbbq62MG3qTAq+ygRz+nJo3CEnKwScZhgiqCAiFAilOku3fHI
X0Heq07l0TpGqM4z9zj4Gyrjyl6/kpcJFCMAD380sN5L8lEmtJTiBRNKn1fXxrxfCkUqMfcdiQ8V
Mf0z+u+sUzTXSp/ikiIvQyvFAtzzaYxbAVVL3bfST4HGyWQEregn28HlUzNrLhiiQ+lRvkLnE9fO
9zgV82vt2D/xiBpQB12RWXTiZMPn/Lnd1UCmCuBVN1PupzzRQFCRm0JPVciB7qiKdy0tZIkFqVNq
6tLmQDXXMjuurqxDJmYlB7wYaSCR0tFVdjAYNir1CYBxpIWPdBTTh0j/aC2zkedk/z7n6BCePD5a
J/MTrP7HRmzTRM3jiE8kDYo2zdiF/Xmhmn2Pon8TQ8zVbIR1H74RS2iD3OwBtVsU6Z5VB+MNLaUX
pOQFmcYzWTMRv4rLlW/1HOaSfW7K8mGShnVY1lfshXhRBRFmDIJDOJlZT10jkK1XKbL4S6C9UVWU
oxuobtxyzlSKHgnBqJHW+xXTAX5r7qAnm9y80vihZV+gvHum5h3D9wqU2S12LjSY4ToExEHAnEFz
0ryalGEyxeK0gmhozyrRAQYFGcVLlm9/XYlagWdCdlq+DhhBDWRwm5VFQJLAJhA=
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
