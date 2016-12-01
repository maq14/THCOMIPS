/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/project/CPU/alu.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_2592010699;

char *ieee_p_2592010699_sub_1697423399_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1735675855_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1837678034_503743352(char *, char *, char *, char *);
char *ieee_p_2592010699_sub_3293060193_503743352(char *, char *, char *, char *, unsigned char );
char *ieee_p_2592010699_sub_393209765_503743352(char *, char *, char *, char *);
char *ieee_p_2592010699_sub_795620321_503743352(char *, char *, char *, char *, char *, char *);
int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);
char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_767740470_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_0832606739_3212880686_p_0(char *t0)
{
    char t29[16];
    char t41[16];
    char t42[16];
    char *t1;
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    int t7;
    char *t8;
    char *t9;
    int t10;
    char *t11;
    char *t12;
    int t13;
    char *t14;
    char *t15;
    int t16;
    char *t17;
    char *t18;
    int t19;
    char *t20;
    int t22;
    char *t23;
    int t25;
    char *t26;
    int t28;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    unsigned int t38;
    unsigned int t39;
    unsigned char t40;
    unsigned int t43;

LAB0:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 776U);
    t2 = *((char **)t1);
    t1 = (t0 + 3276);
    t4 = xsi_mem_cmp(t1, t2, 4U);
    if (t4 == 1)
        goto LAB3;

LAB13:    t5 = (t0 + 3280);
    t7 = xsi_mem_cmp(t5, t2, 4U);
    if (t7 == 1)
        goto LAB4;

LAB14:    t8 = (t0 + 3284);
    t10 = xsi_mem_cmp(t8, t2, 4U);
    if (t10 == 1)
        goto LAB5;

LAB15:    t11 = (t0 + 3288);
    t13 = xsi_mem_cmp(t11, t2, 4U);
    if (t13 == 1)
        goto LAB6;

LAB16:    t14 = (t0 + 3292);
    t16 = xsi_mem_cmp(t14, t2, 4U);
    if (t16 == 1)
        goto LAB7;

LAB17:    t17 = (t0 + 3296);
    t19 = xsi_mem_cmp(t17, t2, 4U);
    if (t19 == 1)
        goto LAB8;

LAB18:    t20 = (t0 + 3300);
    t22 = xsi_mem_cmp(t20, t2, 4U);
    if (t22 == 1)
        goto LAB9;

LAB19:    t23 = (t0 + 3304);
    t25 = xsi_mem_cmp(t23, t2, 4U);
    if (t25 == 1)
        goto LAB10;

LAB20:    t26 = (t0 + 3308);
    t28 = xsi_mem_cmp(t26, t2, 4U);
    if (t28 == 1)
        goto LAB11;

LAB21:
LAB12:    xsi_set_current_line(80, ng0);

LAB2:    xsi_set_current_line(82, ng0);
    t1 = (t0 + 1132U);
    t2 = *((char **)t1);
    t1 = (t0 + 1928);
    t3 = (t1 + 32U);
    t5 = *((char **)t3);
    t6 = (t5 + 40U);
    t8 = *((char **)t6);
    memcpy(t8, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(83, ng0);
    t1 = (t0 + 1132U);
    t2 = *((char **)t1);
    t1 = (t0 + 3200U);
    t3 = (t0 + 3360);
    t6 = (t29 + 0U);
    t8 = (t6 + 0U);
    *((int *)t8) = 0;
    t8 = (t6 + 4U);
    *((int *)t8) = 15;
    t8 = (t6 + 8U);
    *((int *)t8) = 1;
    t4 = (15 - 0);
    t38 = (t4 * 1);
    t38 = (t38 + 1);
    t8 = (t6 + 12U);
    *((unsigned int *)t8) = t38;
    t40 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t29);
    if (t40 != 0)
        goto LAB32;

LAB34:    xsi_set_current_line(86, ng0);
    t1 = (t0 + 1964);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t5 = (t3 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 0U, 1, 0LL);

LAB33:    xsi_set_current_line(88, ng0);
    t1 = (t0 + 1132U);
    t2 = *((char **)t1);
    t4 = (15 - 15);
    t38 = (t4 * -1);
    t39 = (1U * t38);
    t43 = (0 + t39);
    t1 = (t2 + t43);
    t40 = *((unsigned char *)t1);
    t3 = (t0 + 1964);
    t5 = (t3 + 32U);
    t6 = *((char **)t5);
    t8 = (t6 + 40U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t40;
    xsi_driver_first_trans_delta(t3, 1U, 1, 0LL);
    xsi_set_current_line(89, ng0);
    t1 = (t0 + 3376);
    t40 = (2U != 2U);
    if (t40 == 1)
        goto LAB35;

LAB36:    t3 = (t0 + 1964);
    t5 = (t3 + 32U);
    t6 = *((char **)t5);
    t8 = (t6 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_delta(t3, 2U, 2U, 0LL);
    t1 = (t0 + 1884);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(50, ng0);
    t30 = (t0 + 592U);
    t31 = *((char **)t30);
    t30 = (t0 + 3120U);
    t32 = (t0 + 684U);
    t33 = *((char **)t32);
    t32 = (t0 + 3136U);
    t34 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t29, t31, t30, t33, t32);
    t35 = (t0 + 1132U);
    t36 = *((char **)t35);
    t35 = (t36 + 0);
    t37 = (t29 + 12U);
    t38 = *((unsigned int *)t37);
    t39 = (1U * t38);
    memcpy(t35, t34, t39);
    goto LAB2;

LAB4:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t1 = (t0 + 3120U);
    t3 = (t0 + 684U);
    t5 = *((char **)t3);
    t3 = (t0 + 3136U);
    t6 = ieee_p_3620187407_sub_767740470_3965413181(IEEE_P_3620187407, t29, t2, t1, t5, t3);
    t8 = (t0 + 1132U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t11 = (t29 + 12U);
    t38 = *((unsigned int *)t11);
    t39 = (1U * t38);
    memcpy(t8, t6, t39);
    goto LAB2;

LAB5:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t1 = (t0 + 3120U);
    t3 = (t0 + 684U);
    t5 = *((char **)t3);
    t3 = (t0 + 3136U);
    t6 = ieee_p_2592010699_sub_795620321_503743352(IEEE_P_2592010699, t29, t2, t1, t5, t3);
    t8 = (t0 + 1132U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t11 = (t29 + 12U);
    t38 = *((unsigned int *)t11);
    t39 = (1U * t38);
    memcpy(t8, t6, t39);
    goto LAB2;

LAB6:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t1 = (t0 + 3120U);
    t3 = (t0 + 684U);
    t5 = *((char **)t3);
    t3 = (t0 + 3136U);
    t6 = ieee_p_2592010699_sub_1735675855_503743352(IEEE_P_2592010699, t29, t2, t1, t5, t3);
    t8 = (t0 + 1132U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t11 = (t29 + 12U);
    t38 = *((unsigned int *)t11);
    t39 = (1U * t38);
    memcpy(t8, t6, t39);
    goto LAB2;

LAB7:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t1 = (t0 + 3120U);
    t3 = (t0 + 684U);
    t5 = *((char **)t3);
    t3 = (t0 + 3136U);
    t6 = ieee_p_2592010699_sub_1697423399_503743352(IEEE_P_2592010699, t29, t2, t1, t5, t3);
    t8 = (t0 + 1132U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t11 = (t29 + 12U);
    t38 = *((unsigned int *)t11);
    t39 = (1U * t38);
    memcpy(t8, t6, t39);
    goto LAB2;

LAB8:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t1 = (t0 + 3120U);
    t3 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t29, t2, t1);
    t5 = (t0 + 1132U);
    t6 = *((char **)t5);
    t5 = (t6 + 0);
    t8 = (t29 + 12U);
    t38 = *((unsigned int *)t8);
    t39 = (1U * t38);
    memcpy(t5, t3, t39);
    goto LAB2;

LAB9:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t1 = (t0 + 3136U);
    t3 = (t0 + 3312);
    t6 = (t29 + 0U);
    t8 = (t6 + 0U);
    *((int *)t8) = 0;
    t8 = (t6 + 4U);
    *((int *)t8) = 15;
    t8 = (t6 + 8U);
    *((int *)t8) = 1;
    t4 = (15 - 0);
    t38 = (t4 * 1);
    t38 = (t38 + 1);
    t8 = (t6 + 12U);
    *((unsigned int *)t8) = t38;
    t40 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t29);
    if (t40 != 0)
        goto LAB23;

LAB25:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t1 = (t0 + 3120U);
    t3 = ieee_p_2592010699_sub_3293060193_503743352(IEEE_P_2592010699, t41, t2, t1, (unsigned char)0);
    t5 = (t41 + 12U);
    t38 = *((unsigned int *)t5);
    t38 = (t38 * 1U);
    t6 = (t0 + 684U);
    t8 = *((char **)t6);
    t6 = (t0 + 3136U);
    t4 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t8, t6);
    t9 = xsi_vhdl_bitvec_sll(t9, t3, t38, t4);
    t11 = ieee_p_2592010699_sub_393209765_503743352(IEEE_P_2592010699, t29, t9, t41);
    t12 = (t0 + 1132U);
    t14 = *((char **)t12);
    t12 = (t14 + 0);
    t15 = (t29 + 12U);
    t39 = *((unsigned int *)t15);
    t39 = (t39 * 1U);
    memcpy(t12, t11, t39);

LAB24:    goto LAB2;

LAB10:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t1 = (t0 + 3136U);
    t3 = (t0 + 3328);
    t6 = (t29 + 0U);
    t8 = (t6 + 0U);
    *((int *)t8) = 0;
    t8 = (t6 + 4U);
    *((int *)t8) = 15;
    t8 = (t6 + 8U);
    *((int *)t8) = 1;
    t4 = (15 - 0);
    t38 = (t4 * 1);
    t38 = (t38 + 1);
    t8 = (t6 + 12U);
    *((unsigned int *)t8) = t38;
    t40 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t29);
    if (t40 != 0)
        goto LAB26;

LAB28:    xsi_set_current_line(71, ng0);
    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t1 = (t0 + 3120U);
    t3 = ieee_p_2592010699_sub_3293060193_503743352(IEEE_P_2592010699, t41, t2, t1, (unsigned char)0);
    t5 = (t41 + 12U);
    t38 = *((unsigned int *)t5);
    t38 = (t38 * 1U);
    t6 = (t0 + 684U);
    t8 = *((char **)t6);
    t6 = (t0 + 3136U);
    t4 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t8, t6);
    t9 = xsi_vhdl_bitvec_srl(t9, t3, t38, t4);
    t11 = ieee_p_2592010699_sub_393209765_503743352(IEEE_P_2592010699, t29, t9, t41);
    t12 = (t0 + 1132U);
    t14 = *((char **)t12);
    t12 = (t14 + 0);
    t15 = (t29 + 12U);
    t39 = *((unsigned int *)t15);
    t39 = (t39 * 1U);
    memcpy(t12, t11, t39);

LAB27:    goto LAB2;

LAB11:    xsi_set_current_line(74, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t1 = (t0 + 3136U);
    t3 = (t0 + 3344);
    t6 = (t29 + 0U);
    t8 = (t6 + 0U);
    *((int *)t8) = 0;
    t8 = (t6 + 4U);
    *((int *)t8) = 15;
    t8 = (t6 + 8U);
    *((int *)t8) = 1;
    t4 = (15 - 0);
    t38 = (t4 * 1);
    t38 = (t38 + 1);
    t8 = (t6 + 12U);
    *((unsigned int *)t8) = t38;
    t40 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t29);
    if (t40 != 0)
        goto LAB29;

LAB31:    xsi_set_current_line(77, ng0);
    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t1 = (t0 + 3120U);
    t3 = ieee_p_2592010699_sub_3293060193_503743352(IEEE_P_2592010699, t41, t2, t1, (unsigned char)0);
    t5 = (t41 + 12U);
    t38 = *((unsigned int *)t5);
    t38 = (t38 * 1U);
    t6 = (t0 + 684U);
    t8 = *((char **)t6);
    t6 = (t0 + 3136U);
    t4 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t8, t6);
    t9 = xsi_vhdl_bitvec_sra(t9, t3, t38, t4);
    t11 = ieee_p_2592010699_sub_393209765_503743352(IEEE_P_2592010699, t29, t9, t41);
    t12 = (t0 + 1132U);
    t14 = *((char **)t12);
    t12 = (t14 + 0);
    t15 = (t29 + 12U);
    t39 = *((unsigned int *)t15);
    t39 = (t39 * 1U);
    memcpy(t12, t11, t39);

LAB30:    goto LAB2;

LAB22:;
LAB23:    xsi_set_current_line(63, ng0);
    t8 = (t0 + 592U);
    t9 = *((char **)t8);
    t8 = (t0 + 3120U);
    t11 = ieee_p_2592010699_sub_3293060193_503743352(IEEE_P_2592010699, t42, t9, t8, (unsigned char)0);
    t12 = (t42 + 12U);
    t38 = *((unsigned int *)t12);
    t38 = (t38 * 1U);
    t14 = xsi_vhdl_bitvec_sll(t14, t11, t38, 8);
    t15 = ieee_p_2592010699_sub_393209765_503743352(IEEE_P_2592010699, t41, t14, t42);
    t17 = (t0 + 1132U);
    t18 = *((char **)t17);
    t17 = (t18 + 0);
    t20 = (t41 + 12U);
    t39 = *((unsigned int *)t20);
    t39 = (t39 * 1U);
    memcpy(t17, t15, t39);
    goto LAB24;

LAB26:    xsi_set_current_line(69, ng0);
    t8 = (t0 + 592U);
    t9 = *((char **)t8);
    t8 = (t0 + 3120U);
    t11 = ieee_p_2592010699_sub_3293060193_503743352(IEEE_P_2592010699, t42, t9, t8, (unsigned char)0);
    t12 = (t42 + 12U);
    t38 = *((unsigned int *)t12);
    t38 = (t38 * 1U);
    t14 = xsi_vhdl_bitvec_srl(t14, t11, t38, 8);
    t15 = ieee_p_2592010699_sub_393209765_503743352(IEEE_P_2592010699, t41, t14, t42);
    t17 = (t0 + 1132U);
    t18 = *((char **)t17);
    t17 = (t18 + 0);
    t20 = (t41 + 12U);
    t39 = *((unsigned int *)t20);
    t39 = (t39 * 1U);
    memcpy(t17, t15, t39);
    goto LAB27;

LAB29:    xsi_set_current_line(75, ng0);
    t8 = (t0 + 592U);
    t9 = *((char **)t8);
    t8 = (t0 + 3120U);
    t11 = ieee_p_2592010699_sub_3293060193_503743352(IEEE_P_2592010699, t42, t9, t8, (unsigned char)0);
    t12 = (t42 + 12U);
    t38 = *((unsigned int *)t12);
    t38 = (t38 * 1U);
    t14 = xsi_vhdl_bitvec_sra(t14, t11, t38, 8);
    t15 = ieee_p_2592010699_sub_393209765_503743352(IEEE_P_2592010699, t41, t14, t42);
    t17 = (t0 + 1132U);
    t18 = *((char **)t17);
    t17 = (t18 + 0);
    t20 = (t41 + 12U);
    t39 = *((unsigned int *)t20);
    t39 = (t39 * 1U);
    memcpy(t17, t15, t39);
    goto LAB30;

LAB32:    xsi_set_current_line(84, ng0);
    t8 = (t0 + 1964);
    t9 = (t8 + 32U);
    t11 = *((char **)t9);
    t12 = (t11 + 40U);
    t14 = *((char **)t12);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_delta(t8, 0U, 1, 0LL);
    goto LAB33;

LAB35:    xsi_size_not_matching(2U, 2U, 0);
    goto LAB36;

}


extern void work_a_0832606739_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0832606739_3212880686_p_0};
	xsi_register_didat("work_a_0832606739_3212880686", "isim/test_cpu_isim_beh.exe.sim/work/a_0832606739_3212880686.didat");
	xsi_register_executes(pe);
}
