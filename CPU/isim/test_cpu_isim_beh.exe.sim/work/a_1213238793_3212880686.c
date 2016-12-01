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
static const char *ng0 = "C:/project/CPU/mulmux.vhd";



static void work_a_1213238793_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    int t11;
    char *t12;
    char *t13;
    int t14;
    char *t15;
    char *t16;
    int t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    unsigned char t24;
    unsigned char t25;
    unsigned char t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned char t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned char t36;
    unsigned int t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;

LAB0:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t3 = (15 - 15);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 3165);
    t8 = xsi_mem_cmp(t6, t1, 5U);
    if (t8 == 1)
        goto LAB3;

LAB8:    t9 = (t0 + 3170);
    t11 = xsi_mem_cmp(t9, t1, 5U);
    if (t11 == 1)
        goto LAB4;

LAB9:    t12 = (t0 + 3175);
    t14 = xsi_mem_cmp(t12, t1, 5U);
    if (t14 == 1)
        goto LAB5;

LAB10:    t15 = (t0 + 3180);
    t17 = xsi_mem_cmp(t15, t1, 5U);
    if (t17 == 1)
        goto LAB6;

LAB11:
LAB7:    xsi_set_current_line(75, ng0);
    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t3 = (15 - 15);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 3241);
    t24 = 1;
    if (8U == 8U)
        goto LAB61;

LAB62:    t24 = 0;

LAB63:    if (t24 != 0)
        goto LAB58;

LAB60:    xsi_set_current_line(84, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t1 = (t0 + 1860);
    t6 = (t1 + 32U);
    t7 = *((char **)t6);
    t9 = (t7 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(85, ng0);
    t1 = (t0 + 1896);
    t2 = (t1 + 32U);
    t6 = *((char **)t2);
    t7 = (t6 + 40U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB59:
LAB2:    t1 = (t0 + 1816);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(48, ng0);
    t18 = (t0 + 684U);
    t19 = *((char **)t18);
    t18 = (t0 + 1860);
    t20 = (t18 + 32U);
    t21 = *((char **)t20);
    t22 = (t21 + 40U);
    t23 = *((char **)t22);
    memcpy(t23, t19, 16U);
    xsi_driver_first_trans_fast_port(t18);
    xsi_set_current_line(49, ng0);
    t1 = (t0 + 1896);
    t2 = (t1 + 32U);
    t6 = *((char **)t2);
    t7 = (t6 + 40U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB4:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 776U);
    t2 = *((char **)t1);
    t1 = (t0 + 3185);
    t24 = 1;
    if (16U == 16U)
        goto LAB16;

LAB17:    t24 = 0;

LAB18:    if (t24 != 0)
        goto LAB13;

LAB15:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t1 = (t0 + 1860);
    t6 = (t1 + 32U);
    t7 = *((char **)t6);
    t9 = (t7 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(56, ng0);
    t1 = (t0 + 1896);
    t2 = (t1 + 32U);
    t6 = *((char **)t2);
    t7 = (t6 + 40U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB14:    goto LAB2;

LAB5:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 776U);
    t2 = *((char **)t1);
    t1 = (t0 + 3201);
    t24 = 1;
    if (16U == 16U)
        goto LAB25;

LAB26:    t24 = 0;

LAB27:    if ((!(t24)) != 0)
        goto LAB22;

LAB24:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t1 = (t0 + 1860);
    t6 = (t1 + 32U);
    t7 = *((char **)t6);
    t9 = (t7 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 1896);
    t2 = (t1 + 32U);
    t6 = *((char **)t2);
    t7 = (t6 + 40U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB23:    goto LAB2;

LAB6:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t3 = (15 - 7);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 3217);
    t26 = 1;
    if (8U == 8U)
        goto LAB40;

LAB41:    t26 = 0;

LAB42:    if (t26 == 1)
        goto LAB37;

LAB38:    t12 = (t0 + 592U);
    t13 = *((char **)t12);
    t28 = (15 - 7);
    t29 = (t28 * 1U);
    t30 = (0 + t29);
    t12 = (t13 + t30);
    t15 = (t0 + 3225);
    t31 = 1;
    if (8U == 8U)
        goto LAB46;

LAB47:    t31 = 0;

LAB48:    t25 = t31;

LAB39:    if (t25 == 1)
        goto LAB34;

LAB35:    t20 = (t0 + 592U);
    t21 = *((char **)t20);
    t33 = (15 - 7);
    t34 = (t33 * 1U);
    t35 = (0 + t34);
    t20 = (t21 + t35);
    t22 = (t0 + 3233);
    t36 = 1;
    if (8U == 8U)
        goto LAB52;

LAB53:    t36 = 0;

LAB54:    t24 = t36;

LAB36:    if (t24 != 0)
        goto LAB31;

LAB33:    xsi_set_current_line(71, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t1 = (t0 + 1860);
    t6 = (t1 + 32U);
    t7 = *((char **)t6);
    t9 = (t7 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(72, ng0);
    t1 = (t0 + 1896);
    t2 = (t1 + 32U);
    t6 = *((char **)t2);
    t7 = (t6 + 40U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB32:    goto LAB2;

LAB12:;
LAB13:    xsi_set_current_line(52, ng0);
    t10 = (t0 + 684U);
    t12 = *((char **)t10);
    t10 = (t0 + 1860);
    t13 = (t10 + 32U);
    t15 = *((char **)t13);
    t16 = (t15 + 40U);
    t18 = *((char **)t16);
    memcpy(t18, t12, 16U);
    xsi_driver_first_trans_fast_port(t10);
    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1896);
    t2 = (t1 + 32U);
    t6 = *((char **)t2);
    t7 = (t6 + 40U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB14;

LAB16:    t3 = 0;

LAB19:    if (t3 < 16U)
        goto LAB20;
    else
        goto LAB18;

LAB20:    t7 = (t2 + t3);
    t9 = (t1 + t3);
    if (*((unsigned char *)t7) != *((unsigned char *)t9))
        goto LAB17;

LAB21:    t3 = (t3 + 1);
    goto LAB19;

LAB22:    xsi_set_current_line(60, ng0);
    t10 = (t0 + 684U);
    t12 = *((char **)t10);
    t10 = (t0 + 1860);
    t13 = (t10 + 32U);
    t15 = *((char **)t13);
    t16 = (t15 + 40U);
    t18 = *((char **)t16);
    memcpy(t18, t12, 16U);
    xsi_driver_first_trans_fast_port(t10);
    xsi_set_current_line(61, ng0);
    t1 = (t0 + 1896);
    t2 = (t1 + 32U);
    t6 = *((char **)t2);
    t7 = (t6 + 40U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB23;

LAB25:    t3 = 0;

LAB28:    if (t3 < 16U)
        goto LAB29;
    else
        goto LAB27;

LAB29:    t7 = (t2 + t3);
    t9 = (t1 + t3);
    if (*((unsigned char *)t7) != *((unsigned char *)t9))
        goto LAB26;

LAB30:    t3 = (t3 + 1);
    goto LAB28;

LAB31:    xsi_set_current_line(68, ng0);
    t40 = (t0 + 776U);
    t41 = *((char **)t40);
    t40 = (t0 + 1860);
    t42 = (t40 + 32U);
    t43 = *((char **)t42);
    t44 = (t43 + 40U);
    t45 = *((char **)t44);
    memcpy(t45, t41, 16U);
    xsi_driver_first_trans_fast_port(t40);
    xsi_set_current_line(69, ng0);
    t1 = (t0 + 1896);
    t2 = (t1 + 32U);
    t6 = *((char **)t2);
    t7 = (t6 + 40U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB32;

LAB34:    t24 = (unsigned char)1;
    goto LAB36;

LAB37:    t25 = (unsigned char)1;
    goto LAB39;

LAB40:    t27 = 0;

LAB43:    if (t27 < 8U)
        goto LAB44;
    else
        goto LAB42;

LAB44:    t9 = (t1 + t27);
    t10 = (t6 + t27);
    if (*((unsigned char *)t9) != *((unsigned char *)t10))
        goto LAB41;

LAB45:    t27 = (t27 + 1);
    goto LAB43;

LAB46:    t32 = 0;

LAB49:    if (t32 < 8U)
        goto LAB50;
    else
        goto LAB48;

LAB50:    t18 = (t12 + t32);
    t19 = (t15 + t32);
    if (*((unsigned char *)t18) != *((unsigned char *)t19))
        goto LAB47;

LAB51:    t32 = (t32 + 1);
    goto LAB49;

LAB52:    t37 = 0;

LAB55:    if (t37 < 8U)
        goto LAB56;
    else
        goto LAB54;

LAB56:    t38 = (t20 + t37);
    t39 = (t22 + t37);
    if (*((unsigned char *)t38) != *((unsigned char *)t39))
        goto LAB53;

LAB57:    t37 = (t37 + 1);
    goto LAB55;

LAB58:    xsi_set_current_line(76, ng0);
    t12 = (t0 + 776U);
    t13 = *((char **)t12);
    t12 = (t0 + 3249);
    t25 = 1;
    if (16U == 16U)
        goto LAB70;

LAB71:    t25 = 0;

LAB72:    if (t25 != 0)
        goto LAB67;

LAB69:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t1 = (t0 + 1860);
    t6 = (t1 + 32U);
    t7 = *((char **)t6);
    t9 = (t7 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(81, ng0);
    t1 = (t0 + 1896);
    t2 = (t1 + 32U);
    t6 = *((char **)t2);
    t7 = (t6 + 40U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB68:    goto LAB59;

LAB61:    t27 = 0;

LAB64:    if (t27 < 8U)
        goto LAB65;
    else
        goto LAB63;

LAB65:    t9 = (t1 + t27);
    t10 = (t6 + t27);
    if (*((unsigned char *)t9) != *((unsigned char *)t10))
        goto LAB62;

LAB66:    t27 = (t27 + 1);
    goto LAB64;

LAB67:    xsi_set_current_line(77, ng0);
    t19 = (t0 + 684U);
    t20 = *((char **)t19);
    t19 = (t0 + 1860);
    t21 = (t19 + 32U);
    t22 = *((char **)t21);
    t23 = (t22 + 40U);
    t38 = *((char **)t23);
    memcpy(t38, t20, 16U);
    xsi_driver_first_trans_fast_port(t19);
    xsi_set_current_line(78, ng0);
    t1 = (t0 + 1896);
    t2 = (t1 + 32U);
    t6 = *((char **)t2);
    t7 = (t6 + 40U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB68;

LAB70:    t28 = 0;

LAB73:    if (t28 < 16U)
        goto LAB74;
    else
        goto LAB72;

LAB74:    t16 = (t13 + t28);
    t18 = (t12 + t28);
    if (*((unsigned char *)t16) != *((unsigned char *)t18))
        goto LAB71;

LAB75:    t28 = (t28 + 1);
    goto LAB73;

}


extern void work_a_1213238793_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1213238793_3212880686_p_0};
	xsi_register_didat("work_a_1213238793_3212880686", "isim/test_cpu_isim_beh.exe.sim/work/a_1213238793_3212880686.didat");
	xsi_register_executes(pe);
}
