// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2.1 (win64) Build 4081461 Thu Dec 14 12:24:51 MST 2023
// Date        : Fri Mar  8 19:39:46 2024
// Host        : LAPTOP-D2TRK901 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ line_bram_sim_netlist.v
// Design      : line_bram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "line_bram,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_7 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21600)
`pragma protect data_block
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
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
