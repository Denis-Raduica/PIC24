VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "aspartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL PC(22:0)
        SIGNAL Clk
        SIGNAL New_PC(22:0)
        SIGNAL PC(5:1)
        SIGNAL Instr(23:0)
        SIGNAL RegDest
        SIGNAL Instr(14:11)
        SIGNAL Instr(18:15)
        SIGNAL XLXN_41(3:0)
        SIGNAL Instr(10:7)
        SIGNAL Instr(3:0)
        SIGNAL XLXN_45(3:0)
        SIGNAL RegSource
        SIGNAL Instr(23:19)
        SIGNAL MemWr
        SIGNAL Mem2Reg
        SIGNAL RegWr
        SIGNAL CE_OVF
        SIGNAL CE_CF
        SIGNAL CE_NF
        SIGNAL CE_ZF
        SIGNAL ALUOP(3:0)
        SIGNAL XLXN_56(15:0)
        SIGNAL XLXN_57(15:0)
        SIGNAL Instr(8:4)
        SIGNAL OUTW0(15:0)
        SIGNAL INW0(15:0)
        SIGNAL INW1(15:0)
        SIGNAL NF
        SIGNAL OVF
        SIGNAL ZF
        SIGNAL CF
        SIGNAL Instr(15:0)
        SIGNAL WrData(15:0)
        SIGNAL Instr(18:16)
        SIGNAL Branch(2:0)
        SIGNAL MemOut(15:0)
        SIGNAL ALU_Out(15:0)
        SIGNAL Instr(13:4)
        SIGNAL XLXN_58(15:0)
        PORT Input Clk
        PORT Output OUTW0(15:0)
        PORT Input INW0(15:0)
        PORT Input INW1(15:0)
        BEGIN BLOCKDEF PC_Update
            TIMESTAMP 2025 1 3 13 21 39
            RECTANGLE N 68 196 68 220 
            LINE N 68 208 68 208 
            RECTANGLE N 0 -124 64 -100 
            LINE N 0 -112 64 -112 
            LINE N 384 160 320 160 
            RECTANGLE N 320 148 384 172 
            RECTANGLE N 320 52 384 76 
            LINE N 384 64 320 64 
            LINE N 64 -48 0 -48 
            RECTANGLE N 68 -132 324 244 
            LINE N 64 224 0 224 
            RECTANGLE N 0 212 64 236 
            LINE N 64 0 0 0 
            LINE N 64 48 0 48 
            LINE N 64 96 0 96 
        END BLOCKDEF
        BEGIN BLOCKDEF ProgCnt
            TIMESTAMP 2024 12 1 16 10 48
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF ROM32x24
            TIMESTAMP 2024 12 6 7 7 46
            RECTANGLE N 64 -64 320 0 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF MUX2V1
            TIMESTAMP 2024 12 6 7 59 26
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF File_Regs
            TIMESTAMP 2025 1 10 15 21 21
            RECTANGLE N 384 20 448 44 
            LINE N 384 32 448 32 
            LINE N 64 -352 0 -352 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 384 -44 448 -20 
            LINE N 384 -32 448 -32 
            RECTANGLE N 384 -124 448 -100 
            LINE N 384 -112 448 -112 
            RECTANGLE N 64 -384 384 64 
        END BLOCKDEF
        BEGIN BLOCKDEF DataMem
            TIMESTAMP 2024 12 18 14 29 18
            RECTANGLE N 64 -384 368 0 
            LINE N 64 -352 0 -352 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 368 -364 432 -340 
            LINE N 368 -352 432 -352 
            RECTANGLE N 368 -44 432 -20 
            LINE N 368 -32 432 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF ALU
            TIMESTAMP 2025 1 10 15 20 56
            RECTANGLE N 0 52 64 76 
            LINE N 64 64 0 64 
            RECTANGLE N 0 4 64 28 
            LINE N 64 16 0 16 
            LINE N 64 -480 0 -480 
            LINE N 64 -416 0 -416 
            LINE N 64 -352 0 -352 
            LINE N 64 -288 0 -288 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -480 384 -480 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
            LINE N 320 -432 384 -432 
            LINE N 320 -336 384 -336 
            LINE N 320 -384 384 -384 
            RECTANGLE N 64 -512 320 96 
        END BLOCKDEF
        BEGIN BLOCKDEF Ctrl
            TIMESTAMP 2025 1 3 13 17 13
            RECTANGLE N 0 20 64 44 
            LINE N 64 32 0 32 
            RECTANGLE N 0 -684 64 -660 
            LINE N 64 -672 0 -672 
            LINE N 320 -672 384 -672 
            LINE N 320 -608 384 -608 
            LINE N 320 -544 384 -544 
            LINE N 320 -480 384 -480 
            LINE N 320 -416 384 -416 
            LINE N 320 -352 384 -352 
            LINE N 320 -288 384 -288 
            LINE N 320 -224 384 -224 
            LINE N 320 -160 384 -160 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
            RECTANGLE N 64 -704 320 64 
            LINE N 320 -96 384 -96 
            RECTANGLE N 320 -108 384 -84 
        END BLOCKDEF
        BEGIN BLOCKDEF MUX2V16
            TIMESTAMP 2025 1 2 12 46 18
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCK U_NewPC PC_Update
            PIN NF NF
            PIN ZF ZF
            PIN OVF OVF
            PIN CF CF
            PIN Branch(2:0) Branch(2:0)
            PIN Offset(15:0) Instr(15:0)
            PIN PC(22:0) PC(22:0)
            PIN New_PC(22:0) New_PC(22:0)
        END BLOCK
        BEGIN BLOCK U_ROM ROM32x24
            PIN Addr(4:0) PC(5:1)
            PIN Data(23:0) Instr(23:0)
        END BLOCK
        BEGIN BLOCK U_FileRegs File_Regs
            PIN Clk Clk
            PIN WrEn RegWr
            PIN RdReg1(3:0) XLXN_41(3:0)
            PIN RdReg2(3:0) Instr(3:0)
            PIN WrReg(3:0) XLXN_45(3:0)
            PIN WrData(15:0) WrData(15:0)
            PIN RdData1(15:0) XLXN_56(15:0)
            PIN RdData2(15:0) XLXN_57(15:0)
            PIN WorkingRegister(15:0) XLXN_58(15:0)
        END BLOCK
        BEGIN BLOCK U_MUX2V1_W MUX2V1
            PIN Y(3:0) XLXN_41(3:0)
            PIN I0(3:0) Instr(18:15)
            PIN Sel RegSource
            PIN I1(3:0) Instr(14:11)
        END BLOCK
        BEGIN BLOCK U_MUX2V1_D MUX2V1
            PIN Y(3:0) XLXN_45(3:0)
            PIN I0(3:0) Instr(10:7)
            PIN Sel RegDest
            PIN I1(3:0) Instr(3:0)
        END BLOCK
        BEGIN BLOCK U_DataMem DataMem
            PIN Clk Clk
            PIN Wr MemWr
            PIN INW0(15:0) INW0(15:0)
            PIN INW1(15:0) INW1(15:0)
            PIN Addr(4:0) Instr(8:4)
            PIN DataIn(15:0) XLXN_57(15:0)
            PIN OUTW0(15:0) OUTW0(15:0)
            PIN DataOut(15:0) MemOut(15:0)
        END BLOCK
        BEGIN BLOCK U_ALU ALU
            PIN CE_NF CE_NF
            PIN CE_OVF CE_OVF
            PIN CE_ZF CE_ZF
            PIN CE_CF CE_CF
            PIN Clk Clk
            PIN RdData1(15:0) XLXN_56(15:0)
            PIN RdData2(15:0) XLXN_57(15:0)
            PIN ALUOP(3:0) ALUOP(3:0)
            PIN TenBitLiteral(9:0) Instr(13:4)
            PIN NF NF
            PIN OVF OVF
            PIN ZF ZF
            PIN CF CF
            PIN Y(15:0) ALU_Out(15:0)
            PIN WorkingRegister(15:0) XLXN_58(15:0)
        END BLOCK
        BEGIN BLOCK U_PC ProgCnt
            PIN Clk Clk
            PIN New_PC(22:0) New_PC(22:0)
            PIN PC(22:0) PC(22:0)
        END BLOCK
        BEGIN BLOCK U_CU Ctrl
            PIN OP(4:0) Instr(23:19)
            PIN MemWr MemWr
            PIN Mem2Reg Mem2Reg
            PIN RegWr RegWr
            PIN RegDest RegDest
            PIN RegSource RegSource
            PIN CE_OVF CE_OVF
            PIN CE_CF CE_CF
            PIN CE_NF CE_NF
            PIN CE_ZF CE_ZF
            PIN ALUOP(3:0) ALUOP(3:0)
            PIN Funct(2:0) Instr(18:16)
            PIN Branch(2:0) Branch(2:0)
        END BLOCK
        BEGIN BLOCK U_MUX_2V16 MUX2V16
            PIN Sel Mem2Reg
            PIN I0(15:0) ALU_Out(15:0)
            PIN I1(15:0) MemOut(15:0)
            PIN Y(15:0) WrData(15:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 7040 5440
        BEGIN INSTANCE U_NewPC 256 240 R0
            BEGIN DISPLAY 0 -204 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH PC(22:0)
            WIRE 640 400 800 400
            WIRE 800 400 800 528
            WIRE 800 528 800 656
            WIRE 800 656 800 768
            WIRE 800 768 800 864
            WIRE 672 656 800 656
            BEGIN DISPLAY 800 528 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH New_PC(22:0)
            WIRE 96 128 256 128
            WIRE 96 128 96 416
            WIRE 96 416 96 720
            WIRE 96 720 288 720
            BEGIN DISPLAY 96 416 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_ROM 1040 800 R0
            BEGIN DISPLAY 0 -184 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BUSTAP 800 768 896 768
        BEGIN BRANCH PC(5:1)
            WIRE 896 768 944 768
            WIRE 944 768 1040 768
            BEGIN DISPLAY 944 768 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(23:0)
            WIRE 1424 768 1552 768
            WIRE 1552 768 1712 768
            WIRE 1712 768 1712 976
            WIRE 1712 976 1712 1040
            WIRE 1712 1040 1712 1312
            WIRE 1712 1312 1712 1376
            WIRE 1712 1376 1712 1520
            WIRE 1712 1520 1712 1632
            WIRE 1712 1632 1712 2336
            WIRE 1712 2336 1712 2528
            WIRE 1712 2528 1712 2640
            WIRE 1712 208 1712 304
            WIRE 1712 304 1712 768
            BEGIN DISPLAY 1552 768 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_FileRegs 2896 1200 R0
            BEGIN DISPLAY 0 -472 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH Clk
            WIRE 2752 848 2816 848
            WIRE 2816 848 2896 848
            BEGIN DISPLAY 2816 848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegWr
            WIRE 2752 912 2816 912
            WIRE 2816 912 2896 912
            BEGIN DISPLAY 2816 912 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegSource
            WIRE 1776 1104 1840 1104
            WIRE 1840 1104 1968 1104
            BEGIN DISPLAY 1840 1104 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(14:11)
            WIRE 1808 1040 1840 1040
            WIRE 1840 1040 1968 1040
            BEGIN DISPLAY 1840 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(18:15)
            WIRE 1808 976 1856 976
            WIRE 1856 976 1968 976
            BEGIN DISPLAY 1856 976 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_MUX2V1_W 1968 1136 R0
            BEGIN DISPLAY 0 -312 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BUSTAP 1712 976 1808 976
        BUSTAP 1712 1040 1808 1040
        BEGIN BRANCH XLXN_41(3:0)
            WIRE 2352 976 2896 976
        END BRANCH
        BEGIN BRANCH Instr(10:7)
            WIRE 1808 1312 1872 1312
            WIRE 1872 1312 1968 1312
            BEGIN DISPLAY 1872 1312 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(3:0)
            WIRE 1808 1376 1856 1376
            WIRE 1856 1376 1952 1376
            WIRE 1952 1376 1968 1376
            WIRE 1952 1200 2560 1200
            WIRE 1952 1200 1952 1376
            WIRE 2560 1040 2896 1040
            WIRE 2560 1040 2560 1200
            BEGIN DISPLAY 1856 1376 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_MUX2V1_D 1968 1472 R0
            BEGIN DISPLAY 0 -312 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH RegDest
            WIRE 1776 1440 1840 1440
            WIRE 1840 1440 1968 1440
            BEGIN DISPLAY 1840 1440 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_45(3:0)
            WIRE 2352 1312 2624 1312
            WIRE 2624 1104 2624 1312
            WIRE 2624 1104 2896 1104
        END BRANCH
        BUSTAP 1712 1312 1808 1312
        BUSTAP 1712 1376 1808 1376
        BEGIN BRANCH Clk
            WIRE 208 656 288 656
        END BRANCH
        IOMARKER 208 656 Clk R180 28
        BEGIN INSTANCE U_PC 288 752 R0
            BEGIN DISPLAY 0 -168 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE U_CU 1968 2304 R0
            BEGIN DISPLAY 0 -744 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BUSTAP 1712 1632 1808 1632
        BEGIN BRANCH Instr(23:19)
            WIRE 1808 1632 1872 1632
            WIRE 1872 1632 1968 1632
            BEGIN DISPLAY 1872 1632 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegDest
            WIRE 2352 1824 2384 1824
            WIRE 2384 1824 2464 1824
            BEGIN DISPLAY 2384 1824 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegSource
            WIRE 2352 1888 2384 1888
            WIRE 2384 1888 2464 1888
            BEGIN DISPLAY 2384 1888 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH MemWr
            WIRE 2352 1632 2368 1632
            WIRE 2368 1632 2464 1632
            BEGIN DISPLAY 2368 1632 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Mem2Reg
            WIRE 2352 1696 2368 1696
            WIRE 2368 1696 2464 1696
            BEGIN DISPLAY 2368 1696 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegWr
            WIRE 2352 1760 2368 1760
            WIRE 2368 1760 2464 1760
            BEGIN DISPLAY 2368 1760 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE_OVF
            WIRE 2352 1952 2368 1952
            WIRE 2368 1952 2464 1952
            BEGIN DISPLAY 2368 1952 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE_CF
            WIRE 2352 2016 2368 2016
            WIRE 2368 2016 2464 2016
            BEGIN DISPLAY 2368 2016 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE_NF
            WIRE 2352 2080 2368 2080
            WIRE 2368 2080 2464 2080
            BEGIN DISPLAY 2368 2080 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE_ZF
            WIRE 2352 2144 2368 2144
            WIRE 2368 2144 2464 2144
            BEGIN DISPLAY 2368 2144 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUOP(3:0)
            WIRE 2352 2272 2432 2272
            WIRE 2432 2272 2528 2272
            BEGIN DISPLAY 2432 2272 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_56(15:0)
            WIRE 3344 1088 3360 1088
            WIRE 3360 1088 3360 1104
            WIRE 3360 1104 3536 1104
        END BRANCH
        BEGIN BRANCH XLXN_57(15:0)
            WIRE 3344 1168 3376 1168
            WIRE 3376 1168 3536 1168
            WIRE 3376 1168 3376 1392
            WIRE 3376 1392 4064 1392
            WIRE 4064 1168 4208 1168
            WIRE 4064 1168 4064 1392
        END BRANCH
        BEGIN INSTANCE U_ALU 3536 1264 R0
            BEGIN DISPLAY 0 -552 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH ALUOP(3:0)
            WIRE 3424 1232 3472 1232
            WIRE 3472 1232 3536 1232
            BEGIN DISPLAY 3472 1232 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Clk
            WIRE 3424 1040 3504 1040
            WIRE 3504 1040 3536 1040
            BEGIN DISPLAY 3504 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE_NF
            WIRE 3424 784 3504 784
            WIRE 3504 784 3536 784
            BEGIN DISPLAY 3504 784 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE_OVF
            WIRE 3424 848 3504 848
            WIRE 3504 848 3536 848
            BEGIN DISPLAY 3504 848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE_ZF
            WIRE 3424 912 3504 912
            WIRE 3504 912 3536 912
            BEGIN DISPLAY 3504 912 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE_CF
            WIRE 3424 976 3504 976
            WIRE 3504 976 3536 976
            BEGIN DISPLAY 3504 976 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_DataMem 4208 1200 R0
            BEGIN DISPLAY 0 -504 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH Clk
            WIRE 4160 848 4192 848
            WIRE 4192 848 4208 848
            BEGIN DISPLAY 4192 848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1712 1520 1808 1520
        BEGIN BRANCH Instr(8:4)
            WIRE 1808 1520 3088 1520
            WIRE 3088 1520 4096 1520
            WIRE 4096 1104 4208 1104
            WIRE 4096 1104 4096 1520
            BEGIN DISPLAY 3088 1520 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH MemWr
            WIRE 4160 912 4192 912
            WIRE 4192 912 4208 912
            BEGIN DISPLAY 4192 912 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH OUTW0(15:0)
            WIRE 4640 848 4672 848
        END BRANCH
        IOMARKER 4672 848 OUTW0(15:0) R0 28
        BEGIN BRANCH INW0(15:0)
            WIRE 4176 976 4208 976
        END BRANCH
        IOMARKER 4176 976 INW0(15:0) R180 28
        BEGIN BRANCH INW1(15:0)
            WIRE 4176 1040 4208 1040
        END BRANCH
        IOMARKER 4176 1040 INW1(15:0) R180 28
        BEGIN BRANCH NF
            WIRE 3920 784 3936 784
            WIRE 3936 784 3984 784
            BEGIN DISPLAY 3936 784 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH OVF
            WIRE 3920 832 3936 832
            WIRE 3936 832 3984 832
            BEGIN DISPLAY 3936 832 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ZF
            WIRE 3920 880 3936 880
            WIRE 3936 880 3984 880
            BEGIN DISPLAY 3936 880 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CF
            WIRE 3920 928 3936 928
            WIRE 3936 928 3984 928
            BEGIN DISPLAY 3936 928 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH NF
            WIRE 192 192 224 192
            WIRE 224 192 256 192
            BEGIN DISPLAY 224 192 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(15:0)
            WIRE 640 304 1152 304
            WIRE 1152 304 1616 304
            BEGIN DISPLAY 1152 304 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1712 304 1616 304
        BEGIN INSTANCE U_MUX_2V16 4912 1264 R0
            BEGIN DISPLAY 0 -312 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH Mem2Reg
            WIRE 4832 1104 4880 1104
            WIRE 4880 1104 4912 1104
            BEGIN DISPLAY 4880 1104 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH WrData(15:0)
            WIRE 2848 1168 2896 1168
            WIRE 2848 1168 2848 1664
            WIRE 2848 1664 4320 1664
            WIRE 4320 1664 5376 1664
            WIRE 5296 1104 5376 1104
            WIRE 5376 1104 5376 1664
            BEGIN DISPLAY 4320 1664 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1712 2336 1808 2336
        BEGIN BRANCH Instr(18:16)
            WIRE 1808 2336 1856 2336
            WIRE 1856 2336 1968 2336
            BEGIN DISPLAY 1856 2336 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Branch(2:0)
            WIRE 2352 2208 2400 2208
            WIRE 2400 2208 2528 2208
            BEGIN DISPLAY 2400 2208 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ZF
            WIRE 192 240 224 240
            WIRE 224 240 256 240
            BEGIN DISPLAY 224 240 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH OVF
            WIRE 192 288 224 288
            WIRE 224 288 256 288
            BEGIN DISPLAY 224 288 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CF
            WIRE 192 336 224 336
            WIRE 224 336 256 336
            BEGIN DISPLAY 224 336 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Branch(2:0)
            WIRE 160 464 224 464
            WIRE 224 464 256 464
            BEGIN DISPLAY 224 464 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH MemOut(15:0)
            WIRE 4640 1168 4672 1168
            WIRE 4672 1168 4672 1232
            WIRE 4672 1232 4768 1232
            WIRE 4768 1232 4912 1232
            BEGIN DISPLAY 4768 1232 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALU_Out(15:0)
            WIRE 3920 1232 3920 1264
            WIRE 3920 1264 4320 1264
            WIRE 4320 1264 4544 1264
            WIRE 4544 1264 4544 1296
            WIRE 4544 1296 4864 1296
            WIRE 4864 1168 4912 1168
            WIRE 4864 1168 4864 1296
            BEGIN DISPLAY 4320 1264 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1712 2528 1808 2528
        BEGIN BRANCH Instr(13:4)
            WIRE 1808 2528 2432 2528
            WIRE 2432 2528 2544 2528
            WIRE 2544 2528 3200 2528
            WIRE 3200 1280 3536 1280
            WIRE 3200 1280 3200 2528
            BEGIN DISPLAY 2544 2528 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_58(15:0)
            WIRE 3344 1232 3408 1232
            WIRE 3408 1232 3408 1328
            WIRE 3408 1328 3536 1328
        END BRANCH
    END SHEET
END SCHEMATIC
