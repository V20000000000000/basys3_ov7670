// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2.1 (win64) Build 4081461 Thu Dec 14 12:24:51 MST 2023
// Date        : Fri Mar  8 19:40:14 2024
// Host        : LAPTOP-D2TRK901 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ line_bram_2_sim_netlist.v
// Design      : line_bram_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "line_bram_2,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2.1" *) 
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
kNspDMmW2RG6c1q0ew==
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
