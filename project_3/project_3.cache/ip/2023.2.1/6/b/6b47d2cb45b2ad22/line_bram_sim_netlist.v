// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2.1 (win64) Build 4081461 Thu Dec 14 12:24:51 MST 2023
// Date        : Fri Mar  8 00:08:02 2024
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
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
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
