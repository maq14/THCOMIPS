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
static const char *ng0 = "C:/project/CPU/extend.vhd";



static void work_a_0424165756_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned char t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t1 = (t0 + 1584);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 11U);
    xsi_driver_first_trans_delta(t1, 5U, 11U, 0LL);
    xsi_set_current_line(45, ng0);
    t1 = xsi_get_transient_memory(5U);
    memset(t1, 0, 5U);
    t2 = t1;
    t3 = (t0 + 592U);
    t4 = *((char **)t3);
    t7 = (10 - 10);
    t8 = (t7 * -1);
    t9 = (1U * t8);
    t10 = (0 + t9);
    t3 = (t4 + t10);
    t11 = *((unsigned char *)t3);
    memset(t2, t11, 5U);
    t5 = (t0 + 1584);
    t6 = (t5 + 32U);
    t12 = *((char **)t6);
    t13 = (t12 + 40U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 5U);
    xsi_driver_first_trans_delta(t5, 0U, 5U, 0LL);
    t1 = (t0 + 1540);
    *((int *)t1) = 1;

LAB1:    return;
}


extern void work_a_0424165756_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0424165756_3212880686_p_0};
	xsi_register_didat("work_a_0424165756_3212880686", "isim/test_cpu_isim_beh.exe.sim/work/a_0424165756_3212880686.didat");
	xsi_register_executes(pe);
}
