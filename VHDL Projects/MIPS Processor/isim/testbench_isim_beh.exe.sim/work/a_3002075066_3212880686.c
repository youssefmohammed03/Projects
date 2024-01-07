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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/yusuf/subjects/Sophomore semester 4/Computer organization and architecture/Major Task/Group7_21P0144/project/aludec.vhd";



static void work_a_3002075066_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    int t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    int t15;
    int t16;
    int t17;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5028);
    t4 = xsi_mem_cmp(t1, t2, 2U);
    if (t4 == 1)
        goto LAB3;

LAB6:    t5 = (t0 + 5030);
    t7 = xsi_mem_cmp(t5, t2, 2U);
    if (t7 == 1)
        goto LAB4;

LAB7:
LAB5:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5040);
    t4 = xsi_mem_cmp(t1, t2, 6U);
    if (t4 == 1)
        goto LAB10;

LAB16:    t5 = (t0 + 5046);
    t7 = xsi_mem_cmp(t5, t2, 6U);
    if (t7 == 1)
        goto LAB11;

LAB17:    t8 = (t0 + 5052);
    t15 = xsi_mem_cmp(t8, t2, 6U);
    if (t15 == 1)
        goto LAB12;

LAB18:    t10 = (t0 + 5058);
    t16 = xsi_mem_cmp(t10, t2, 6U);
    if (t16 == 1)
        goto LAB13;

LAB19:    t12 = (t0 + 5064);
    t17 = xsi_mem_cmp(t12, t2, 6U);
    if (t17 == 1)
        goto LAB14;

LAB20:
LAB15:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 5090);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);

LAB9:
LAB2:    t1 = (t0 + 2832);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(43, ng0);
    t8 = (t0 + 5032);
    t10 = (t0 + 2912);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t8, 4U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB2;

LAB4:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 5036);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB8:;
LAB10:    xsi_set_current_line(47, ng0);
    t14 = (t0 + 5070);
    t19 = (t0 + 2912);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t14, 4U);
    xsi_driver_first_trans_fast_port(t19);
    goto LAB9;

LAB11:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 5074);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB9;

LAB12:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 5078);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB9;

LAB13:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 5082);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB9;

LAB14:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 5086);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB9;

LAB21:;
}


extern void work_a_3002075066_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3002075066_3212880686_p_0};
	xsi_register_didat("work_a_3002075066_3212880686", "isim/testbench_isim_beh.exe.sim/work/a_3002075066_3212880686.didat");
	xsi_register_executes(pe);
}
