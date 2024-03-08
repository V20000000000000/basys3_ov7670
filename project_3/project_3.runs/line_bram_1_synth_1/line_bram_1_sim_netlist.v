// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2.1 (win64) Build 4081461 Thu Dec 14 12:24:51 MST 2023
// Date        : Fri Mar  8 19:40:03 2024
// Host        : LAPTOP-D2TRK901 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ line_bram_1_sim_netlist.v
// Design      : line_bram_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "line_bram_1,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2.1" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21616)
`pragma protect data_block
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
NxctsGVfLkS4n9Nbhw==
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
