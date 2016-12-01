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
static const char *ng0 = "C:/project/CPU/hazard.vhd";



static void work_a_4183448815_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    char *t11;
    unsigned char t12;
    unsigned int t13;
    char *t14;
    unsigned char t15;
    char *t16;
    char *t17;
    unsigned char t18;
    unsigned char t19;
    char *t20;
    char *t21;
    unsigned char t22;
    unsigned int t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;

LAB0:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 1052U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1144U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB29;

LAB30:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 2504);
    t2 = (t1 + 32U);
    t7 = *((char **)t2);
    t10 = (t7 + 40U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(67, ng0);
    t1 = (t0 + 2540);
    t2 = (t1 + 32U);
    t7 = *((char **)t2);
    t10 = (t7 + 40U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(68, ng0);
    t1 = (t0 + 2576);
    t2 = (t1 + 32U);
    t7 = *((char **)t2);
    t10 = (t7 + 40U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(69, ng0);
    t1 = (t0 + 2612);
    t2 = (t1 + 32U);
    t7 = *((char **)t2);
    t10 = (t7 + 40U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(70, ng0);
    t1 = (t0 + 2648);
    t2 = (t1 + 32U);
    t7 = *((char **)t2);
    t10 = (t7 + 40U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB3:    t1 = (t0 + 2460);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 684U);
    t7 = *((char **)t1);
    t8 = *((unsigned char *)t7);
    t9 = (t8 == (unsigned char)3);
    if (t9 == 1)
        goto LAB11;

LAB12:    t6 = (unsigned char)0;

LAB13:    if (t6 == 1)
        goto LAB8;

LAB9:    t16 = (t0 + 776U);
    t17 = *((char **)t16);
    t18 = *((unsigned char *)t17);
    t19 = (t18 == (unsigned char)3);
    if (t19 == 1)
        goto LAB20;

LAB21:    t15 = (unsigned char)0;

LAB22:    t5 = t15;

LAB10:    if (t5 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(53, ng0);
    t25 = (t0 + 2504);
    t26 = (t25 + 32U);
    t27 = *((char **)t26);
    t28 = (t27 + 40U);
    t29 = *((char **)t28);
    *((unsigned char *)t29) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t25);
    xsi_set_current_line(54, ng0);
    t1 = (t0 + 2540);
    t2 = (t1 + 32U);
    t7 = *((char **)t2);
    t10 = (t7 + 40U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(55, ng0);
    t1 = (t0 + 2576);
    t2 = (t1 + 32U);
    t7 = *((char **)t2);
    t10 = (t7 + 40U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(56, ng0);
    t1 = (t0 + 2612);
    t2 = (t1 + 32U);
    t7 = *((char **)t2);
    t10 = (t7 + 40U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(57, ng0);
    t1 = (t0 + 2648);
    t2 = (t1 + 32U);
    t7 = *((char **)t2);
    t10 = (t7 + 40U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB6;

LAB8:    t5 = (unsigned char)1;
    goto LAB10;

LAB11:    t1 = (t0 + 868U);
    t10 = *((char **)t1);
    t1 = (t0 + 592U);
    t11 = *((char **)t1);
    t12 = 1;
    if (4U == 4U)
        goto LAB14;

LAB15:    t12 = 0;

LAB16:    t6 = t12;
    goto LAB13;

LAB14:    t13 = 0;

LAB17:    if (t13 < 4U)
        goto LAB18;
    else
        goto LAB16;

LAB18:    t1 = (t10 + t13);
    t14 = (t11 + t13);
    if (*((unsigned char *)t1) != *((unsigned char *)t14))
        goto LAB15;

LAB19:    t13 = (t13 + 1);
    goto LAB17;

LAB20:    t16 = (t0 + 960U);
    t20 = *((char **)t16);
    t16 = (t0 + 592U);
    t21 = *((char **)t16);
    t22 = 1;
    if (4U == 4U)
        goto LAB23;

LAB24:    t22 = 0;

LAB25:    t15 = t22;
    goto LAB22;

LAB23:    t23 = 0;

LAB26:    if (t23 < 4U)
        goto LAB27;
    else
        goto LAB25;

LAB27:    t16 = (t20 + t23);
    t24 = (t21 + t23);
    if (*((unsigned char *)t16) != *((unsigned char *)t24))
        goto LAB24;

LAB28:    t23 = (t23 + 1);
    goto LAB26;

LAB29:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 2504);
    t7 = (t1 + 32U);
    t10 = *((char **)t7);
    t11 = (t10 + 40U);
    t14 = *((char **)t11);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(61, ng0);
    t1 = (t0 + 2540);
    t2 = (t1 + 32U);
    t7 = *((char **)t2);
    t10 = (t7 + 40U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(62, ng0);
    t1 = (t0 + 2576);
    t2 = (t1 + 32U);
    t7 = *((char **)t2);
    t10 = (t7 + 40U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(63, ng0);
    t1 = (t0 + 2612);
    t2 = (t1 + 32U);
    t7 = *((char **)t2);
    t10 = (t7 + 40U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 2648);
    t2 = (t1 + 32U);
    t7 = *((char **)t2);
    t10 = (t7 + 40U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

}


extern void work_a_4183448815_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4183448815_3212880686_p_0};
	xsi_register_didat("work_a_4183448815_3212880686", "isim/test_cpu_isim_beh.exe.sim/work/a_4183448815_3212880686.didat");
	xsi_register_executes(pe);
}
