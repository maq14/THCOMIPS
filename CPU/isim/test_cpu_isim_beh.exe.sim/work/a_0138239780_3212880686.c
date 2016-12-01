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
static const char *ng0 = "C:/project/CPU/bypass.vhd";



static void work_a_0138239780_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    unsigned char t21;
    unsigned char t22;
    char *t23;

LAB0:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 776U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 4119);
    t6 = (t0 + 2504);
    t9 = (t6 + 32U);
    t10 = *((char **)t9);
    t13 = (t10 + 40U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 2U);
    xsi_driver_first_trans_fast_port(t6);

LAB3:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 868U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB28;

LAB30:    xsi_set_current_line(86, ng0);
    t1 = (t0 + 4141);
    t6 = (t0 + 2576);
    t9 = (t6 + 32U);
    t10 = *((char **)t9);
    t13 = (t10 + 40U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 2U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(87, ng0);
    t1 = (t0 + 4143);
    t6 = (t0 + 2540);
    t9 = (t6 + 32U);
    t10 = *((char **)t9);
    t13 = (t10 + 40U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 2U);
    xsi_driver_first_trans_fast_port(t6);

LAB29:    t1 = (t0 + 2460);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 960U);
    t6 = *((char **)t1);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)3);
    if (t8 == 1)
        goto LAB8;

LAB9:    t5 = (unsigned char)0;

LAB10:    if (t5 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 1052U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB19;

LAB20:    t3 = (unsigned char)0;

LAB21:    if (t3 != 0)
        goto LAB17;

LAB18:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 4117);
    t6 = (t0 + 2504);
    t9 = (t6 + 32U);
    t10 = *((char **)t9);
    t13 = (t10 + 40U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 2U);
    xsi_driver_first_trans_fast_port(t6);

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(55, ng0);
    t14 = (t0 + 4113);
    t16 = (t0 + 2504);
    t17 = (t16 + 32U);
    t18 = *((char **)t17);
    t19 = (t18 + 40U);
    t20 = *((char **)t19);
    memcpy(t20, t14, 2U);
    xsi_driver_first_trans_fast_port(t16);
    goto LAB6;

LAB8:    t1 = (t0 + 592U);
    t9 = *((char **)t1);
    t1 = (t0 + 1144U);
    t10 = *((char **)t1);
    t11 = 1;
    if (4U == 4U)
        goto LAB11;

LAB12:    t11 = 0;

LAB13:    t5 = t11;
    goto LAB10;

LAB11:    t12 = 0;

LAB14:    if (t12 < 4U)
        goto LAB15;
    else
        goto LAB13;

LAB15:    t1 = (t9 + t12);
    t13 = (t10 + t12);
    if (*((unsigned char *)t1) != *((unsigned char *)t13))
        goto LAB12;

LAB16:    t12 = (t12 + 1);
    goto LAB14;

LAB17:    xsi_set_current_line(57, ng0);
    t13 = (t0 + 4115);
    t15 = (t0 + 2504);
    t16 = (t15 + 32U);
    t17 = *((char **)t16);
    t18 = (t17 + 40U);
    t19 = *((char **)t18);
    memcpy(t19, t13, 2U);
    xsi_driver_first_trans_fast_port(t15);
    goto LAB6;

LAB19:    t1 = (t0 + 592U);
    t6 = *((char **)t1);
    t1 = (t0 + 1236U);
    t9 = *((char **)t1);
    t7 = 1;
    if (4U == 4U)
        goto LAB22;

LAB23:    t7 = 0;

LAB24:    t3 = t7;
    goto LAB21;

LAB22:    t12 = 0;

LAB25:    if (t12 < 4U)
        goto LAB26;
    else
        goto LAB24;

LAB26:    t1 = (t6 + t12);
    t10 = (t9 + t12);
    if (*((unsigned char *)t1) != *((unsigned char *)t10))
        goto LAB23;

LAB27:    t12 = (t12 + 1);
    goto LAB25;

LAB28:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 960U);
    t6 = *((char **)t1);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)3);
    if (t8 == 1)
        goto LAB34;

LAB35:    t5 = (unsigned char)0;

LAB36:    if (t5 != 0)
        goto LAB31;

LAB33:    t1 = (t0 + 1052U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB48;

LAB49:    t3 = (unsigned char)0;

LAB50:    if (t3 != 0)
        goto LAB46;

LAB47:    xsi_set_current_line(82, ng0);
    t1 = (t0 + 4137);
    t6 = (t0 + 2576);
    t9 = (t6 + 32U);
    t10 = *((char **)t9);
    t13 = (t10 + 40U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 2U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(83, ng0);
    t1 = (t0 + 4139);
    t6 = (t0 + 2540);
    t9 = (t6 + 32U);
    t10 = *((char **)t9);
    t13 = (t10 + 40U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 2U);
    xsi_driver_first_trans_fast_port(t6);

LAB32:    goto LAB29;

LAB31:    xsi_set_current_line(66, ng0);
    t14 = (t0 + 1328U);
    t15 = *((char **)t14);
    t21 = *((unsigned char *)t15);
    t22 = (t21 == (unsigned char)3);
    if (t22 != 0)
        goto LAB43;

LAB45:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 4125);
    t6 = (t0 + 2576);
    t9 = (t6 + 32U);
    t10 = *((char **)t9);
    t13 = (t10 + 40U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 2U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(71, ng0);
    t1 = (t0 + 4127);
    t6 = (t0 + 2540);
    t9 = (t6 + 32U);
    t10 = *((char **)t9);
    t13 = (t10 + 40U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 2U);
    xsi_driver_first_trans_fast_port(t6);

LAB44:    goto LAB32;

LAB34:    t1 = (t0 + 684U);
    t9 = *((char **)t1);
    t1 = (t0 + 1144U);
    t10 = *((char **)t1);
    t11 = 1;
    if (4U == 4U)
        goto LAB37;

LAB38:    t11 = 0;

LAB39:    t5 = t11;
    goto LAB36;

LAB37:    t12 = 0;

LAB40:    if (t12 < 4U)
        goto LAB41;
    else
        goto LAB39;

LAB41:    t1 = (t9 + t12);
    t13 = (t10 + t12);
    if (*((unsigned char *)t1) != *((unsigned char *)t13))
        goto LAB38;

LAB42:    t12 = (t12 + 1);
    goto LAB40;

LAB43:    xsi_set_current_line(67, ng0);
    t14 = (t0 + 4121);
    t17 = (t0 + 2540);
    t18 = (t17 + 32U);
    t19 = *((char **)t18);
    t20 = (t19 + 40U);
    t23 = *((char **)t20);
    memcpy(t23, t14, 2U);
    xsi_driver_first_trans_fast_port(t17);
    xsi_set_current_line(68, ng0);
    t1 = (t0 + 4123);
    t6 = (t0 + 2576);
    t9 = (t6 + 32U);
    t10 = *((char **)t9);
    t13 = (t10 + 40U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 2U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB44;

LAB46:    xsi_set_current_line(74, ng0);
    t13 = (t0 + 1328U);
    t14 = *((char **)t13);
    t8 = *((unsigned char *)t14);
    t11 = (t8 == (unsigned char)3);
    if (t11 != 0)
        goto LAB57;

LAB59:    xsi_set_current_line(78, ng0);
    t1 = (t0 + 4133);
    t6 = (t0 + 2576);
    t9 = (t6 + 32U);
    t10 = *((char **)t9);
    t13 = (t10 + 40U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 2U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(79, ng0);
    t1 = (t0 + 4135);
    t6 = (t0 + 2540);
    t9 = (t6 + 32U);
    t10 = *((char **)t9);
    t13 = (t10 + 40U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 2U);
    xsi_driver_first_trans_fast_port(t6);

LAB58:    goto LAB32;

LAB48:    t1 = (t0 + 684U);
    t6 = *((char **)t1);
    t1 = (t0 + 1236U);
    t9 = *((char **)t1);
    t7 = 1;
    if (4U == 4U)
        goto LAB51;

LAB52:    t7 = 0;

LAB53:    t3 = t7;
    goto LAB50;

LAB51:    t12 = 0;

LAB54:    if (t12 < 4U)
        goto LAB55;
    else
        goto LAB53;

LAB55:    t1 = (t6 + t12);
    t10 = (t9 + t12);
    if (*((unsigned char *)t1) != *((unsigned char *)t10))
        goto LAB52;

LAB56:    t12 = (t12 + 1);
    goto LAB54;

LAB57:    xsi_set_current_line(75, ng0);
    t13 = (t0 + 4129);
    t16 = (t0 + 2540);
    t17 = (t16 + 32U);
    t18 = *((char **)t17);
    t19 = (t18 + 40U);
    t20 = *((char **)t19);
    memcpy(t20, t13, 2U);
    xsi_driver_first_trans_fast_port(t16);
    xsi_set_current_line(76, ng0);
    t1 = (t0 + 4131);
    t6 = (t0 + 2576);
    t9 = (t6 + 32U);
    t10 = *((char **)t9);
    t13 = (t10 + 40U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 2U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB58;

}


extern void work_a_0138239780_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0138239780_3212880686_p_0};
	xsi_register_didat("work_a_0138239780_3212880686", "isim/test_cpu_isim_beh.exe.sim/work/a_0138239780_3212880686.didat");
	xsi_register_executes(pe);
}
