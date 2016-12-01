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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_3499444699;
char *IEEE_P_3620187407;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    work_a_1666094283_3212880686_init();
    work_a_0542871219_3212880686_init();
    work_a_1991350011_3212880686_init();
    work_a_0011093257_3212880686_init();
    work_a_2717587577_3212880686_init();
    work_a_1009422619_3212880686_init();
    work_a_2263464102_3212880686_init();
    work_a_1350853198_3212880686_init();
    work_a_0424165756_3212880686_init();
    work_a_4183448815_3212880686_init();
    work_a_1231574378_3212880686_init();
    work_a_1016387942_3212880686_init();
    work_a_0832606739_3212880686_init();
    work_a_1153420228_3212880686_init();
    work_a_1213238793_3212880686_init();
    work_a_0138239780_3212880686_init();
    work_a_1386378629_3212880686_init();
    work_a_2934098902_3212880686_init();
    work_a_0720342707_3212880686_init();
    work_a_1492497583_3212880686_init();
    work_a_1415465652_3212880686_init();
    work_a_1966753845_2372691052_init();


    xsi_register_tops("work_a_1966753845_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");

    return xsi_run_simulation(argc, argv);

}
