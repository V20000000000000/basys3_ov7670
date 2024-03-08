// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2.1 (win64) Build 4081461 Thu Dec 14 12:24:51 MST 2023
// Date        : Fri Mar  8 19:38:32 2024
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.7099 mW" *) 
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
  (* C_WRITE_MODE_A = "READ_FIRST" *) 
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
