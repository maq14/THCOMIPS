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
static const char *ng0 = "C:/project/CPU/ctrl.vhd";



static void work_a_2934098902_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    unsigned char t20;
    unsigned int t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned char t30;
    unsigned char t31;
    char *t32;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;

LAB0:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 592U);
    t3 = *((char **)t2);
    t4 = (15 - 15);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t2 = (t3 + t6);
    t7 = (t0 + 2732);
    t9 = 1;
    if (5U == 5U)
        goto LAB8;

LAB9:    t9 = 0;

LAB10:    if (t9 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:    t2 = (t0 + 592U);
    t3 = *((char **)t2);
    t4 = (15 - 15);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t2 = (t3 + t6);
    t7 = (t0 + 2774);
    t9 = 1;
    if (5U == 5U)
        goto LAB28;

LAB29:    t9 = 0;

LAB30:    if (t9 == 1)
        goto LAB25;

LAB26:    t1 = (unsigned char)0;

LAB27:    if (t1 != 0)
        goto LAB23;

LAB24:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 2816);
    t7 = (t0 + 1676);
    t8 = (t7 + 32U);
    t11 = *((char **)t8);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    memcpy(t13, t2, 16U);
    xsi_driver_first_trans_fast_port(t7);

LAB3:    t2 = (t0 + 1632);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(44, ng0);
    t24 = (t0 + 684U);
    t25 = *((char **)t24);
    t26 = (3 - 3);
    t27 = (t26 * -1);
    t28 = (1U * t27);
    t29 = (0 + t28);
    t24 = (t25 + t29);
    t30 = *((unsigned char *)t24);
    t31 = (t30 == (unsigned char)3);
    if (t31 != 0)
        goto LAB20;

LAB22:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 2758);
    t7 = (t0 + 1676);
    t8 = (t7 + 32U);
    t11 = *((char **)t8);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    memcpy(t13, t2, 16U);
    xsi_driver_first_trans_fast_port(t7);

LAB21:    goto LAB3;

LAB5:    t13 = (t0 + 592U);
    t14 = *((char **)t13);
    t15 = (15 - 4);
    t16 = (t15 * 1U);
    t17 = (0 + t16);
    t13 = (t14 + t17);
    t18 = (t0 + 2737);
    t20 = 1;
    if (5U == 5U)
        goto LAB14;

LAB15:    t20 = 0;

LAB16:    t1 = t20;
    goto LAB7;

LAB8:    t10 = 0;

LAB11:    if (t10 < 5U)
        goto LAB12;
    else
        goto LAB10;

LAB12:    t11 = (t2 + t10);
    t12 = (t7 + t10);
    if (*((unsigned char *)t11) != *((unsigned char *)t12))
        goto LAB9;

LAB13:    t10 = (t10 + 1);
    goto LAB11;

LAB14:    t21 = 0;

LAB17:    if (t21 < 5U)
        goto LAB18;
    else
        goto LAB16;

LAB18:    t22 = (t13 + t21);
    t23 = (t18 + t21);
    if (*((unsigned char *)t22) != *((unsigned char *)t23))
        goto LAB15;

LAB19:    t21 = (t21 + 1);
    goto LAB17;

LAB20:    xsi_set_current_line(45, ng0);
    t32 = (t0 + 2742);
    t34 = (t0 + 1676);
    t35 = (t34 + 32U);
    t36 = *((char **)t35);
    t37 = (t36 + 40U);
    t38 = *((char **)t37);
    memcpy(t38, t32, 16U);
    xsi_driver_first_trans_fast_port(t34);
    goto LAB21;

LAB23:    xsi_set_current_line(50, ng0);
    t24 = (t0 + 684U);
    t25 = *((char **)t24);
    t26 = (2 - 3);
    t27 = (t26 * -1);
    t28 = (1U * t27);
    t29 = (0 + t28);
    t24 = (t25 + t29);
    t30 = *((unsigned char *)t24);
    t31 = (t30 == (unsigned char)3);
    if (t31 != 0)
        goto LAB40;

LAB42:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 2800);
    t7 = (t0 + 1676);
    t8 = (t7 + 32U);
    t11 = *((char **)t8);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    memcpy(t13, t2, 16U);
    xsi_driver_first_trans_fast_port(t7);

LAB41:    goto LAB3;

LAB25:    t13 = (t0 + 592U);
    t14 = *((char **)t13);
    t15 = (15 - 4);
    t16 = (t15 * 1U);
    t17 = (0 + t16);
    t13 = (t14 + t17);
    t18 = (t0 + 2779);
    t20 = 1;
    if (5U == 5U)
        goto LAB34;

LAB35:    t20 = 0;

LAB36:    t1 = t20;
    goto LAB27;

LAB28:    t10 = 0;

LAB31:    if (t10 < 5U)
        goto LAB32;
    else
        goto LAB30;

LAB32:    t11 = (t2 + t10);
    t12 = (t7 + t10);
    if (*((unsigned char *)t11) != *((unsigned char *)t12))
        goto LAB29;

LAB33:    t10 = (t10 + 1);
    goto LAB31;

LAB34:    t21 = 0;

LAB37:    if (t21 < 5U)
        goto LAB38;
    else
        goto LAB36;

LAB38:    t22 = (t13 + t21);
    t23 = (t18 + t21);
    if (*((unsigned char *)t22) != *((unsigned char *)t23))
        goto LAB35;

LAB39:    t21 = (t21 + 1);
    goto LAB37;

LAB40:    xsi_set_current_line(51, ng0);
    t32 = (t0 + 2784);
    t34 = (t0 + 1676);
    t35 = (t34 + 32U);
    t36 = *((char **)t35);
    t37 = (t36 + 40U);
    t38 = *((char **)t37);
    memcpy(t38, t32, 16U);
    xsi_driver_first_trans_fast_port(t34);
    goto LAB41;

}


extern void work_a_2934098902_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2934098902_3212880686_p_0};
	xsi_register_didat("work_a_2934098902_3212880686", "isim/test_cpu_isim_beh.exe.sim/work/a_2934098902_3212880686.didat");
	xsi_register_executes(pe);
}
