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

char *IEEE_P_3620187407;
char *WORK_P_2026212780;
char *IEEE_P_1242562249;
char *STD_STANDARD;
char *IEEE_P_2592010699;
char *IEEE_P_0774719531;
char *WORK_P_0468683640;
char *IEEE_P_3564397177;
char *STD_TEXTIO;
char *IEEE_P_3499444699;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_0774719531_init();
    ieee_p_1242562249_init();
    work_p_2026212780_init();
    std_textio_init();
    ieee_p_3564397177_init();
    work_a_1130845995_0831356973_init();
    work_a_3720894149_0831356973_init();
    work_p_0468683640_init();
    work_a_3002075066_3212880686_init();
    work_a_4084620457_3212880686_init();
    work_a_1208337864_3212880686_init();
    ieee_p_3620187407_init();
    work_a_2251915414_3212880686_init();
    work_a_2990855777_3212880686_init();
    work_a_3193934710_3212880686_init();
    work_a_0305289373_3212880686_init();
    work_a_0832606739_3212880686_init();
    work_a_1153420228_3212880686_init();
    work_a_2110357975_3212880686_init();
    work_a_0737135909_3212880686_init();
    work_a_1016387942_3212880686_init();
    work_a_0532180842_3212880686_init();
    work_a_2399776393_3212880686_init();
    work_a_1430113433_3212880686_init();
    work_a_1774854872_3212880686_init();
    work_a_1949178628_4042999134_init();


    xsi_register_tops("work_a_1949178628_4042999134");

    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    WORK_P_2026212780 = xsi_get_engine_memory("work_p_2026212780");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    IEEE_P_0774719531 = xsi_get_engine_memory("ieee_p_0774719531");
    WORK_P_0468683640 = xsi_get_engine_memory("work_p_0468683640");
    IEEE_P_3564397177 = xsi_get_engine_memory("ieee_p_3564397177");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");

    return xsi_run_simulation(argc, argv);

}
