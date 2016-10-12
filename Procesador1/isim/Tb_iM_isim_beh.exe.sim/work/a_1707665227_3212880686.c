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
extern char *STD_TEXTIO;
static const char *ng1 = "fila";
extern char *STD_STANDARD;
extern char *IEEE_P_2592010699;
static const char *ng4 = "C:/Users/Juli/Desktop/Procesador1/iM.vhd";
extern char *IEEE_P_3620187407;

char *ieee_p_2592010699_sub_393209765_503743352(char *, char *, char *, char *);
int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


char *work_a_1707665227_3212880686_sub_3205739798_3057020925(char *t1, char *t2, char *t3)
{
    char t4[328];
    char t5[24];
    char t17[32];
    char t26[1024];
    char t32[16];
    char t38[32];
    char t49[16];
    char *t0;
    char *t6;
    char *t7;
    unsigned int t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t18;
    char *t19;
    int t20;
    unsigned int t21;
    char *t22;
    int t23;
    char *t24;
    char *t25;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t33;
    char *t34;
    int t35;
    char *t36;
    char *t37;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    unsigned char t43;
    char *t44;
    int t45;
    int t46;
    char *t47;
    char *t48;
    unsigned int t50;
    unsigned int t51;

LAB0:    t6 = ((STD_TEXTIO) + 3440);
    t7 = (t3 + 12U);
    t8 = *((unsigned int *)t7);
    t8 = (t8 * 1U);
    t9 = (t4 + 4U);
    t10 = xsi_create_file_variable_in_buffer(0, ng1, t6, t2, t8, 1);
    *((char **)t9) = t10;
    t11 = (t4 + 12U);
    t12 = ((STD_TEXTIO) + 3280);
    t13 = (t11 + 56U);
    *((char **)t13) = t12;
    t14 = (t11 + 40U);
    *((char **)t14) = 0;
    t15 = (t11 + 64U);
    *((int *)t15) = 1;
    t16 = (t11 + 48U);
    *((char **)t16) = 0;
    t18 = (t17 + 0U);
    t19 = (t18 + 0U);
    *((int *)t19) = 0;
    t19 = (t18 + 4U);
    *((int *)t19) = 31;
    t19 = (t18 + 8U);
    *((int *)t19) = 1;
    t20 = (31 - 0);
    t21 = (t20 * 1);
    t21 = (t21 + 1);
    t19 = (t18 + 12U);
    *((unsigned int *)t19) = t21;
    t19 = (t17 + 16U);
    t22 = (t19 + 0U);
    *((int *)t22) = 31;
    t22 = (t19 + 4U);
    *((int *)t22) = 0;
    t22 = (t19 + 8U);
    *((int *)t22) = -1;
    t23 = (0 - 31);
    t21 = (t23 * -1);
    t21 = (t21 + 1);
    t22 = (t19 + 12U);
    *((unsigned int *)t22) = t21;
    t22 = (t4 + 84U);
    t24 = (t1 + 3568);
    t25 = (t22 + 88U);
    *((char **)t25) = t24;
    t27 = (t22 + 56U);
    *((char **)t27) = t26;
    xsi_type_set_default_value(t24, t26, 0);
    t28 = (t22 + 64U);
    t29 = (t24 + 80U);
    t30 = *((char **)t29);
    *((char **)t28) = t30;
    t31 = (t22 + 80U);
    *((unsigned int *)t31) = 1024U;
    t33 = (t32 + 0U);
    t34 = (t33 + 0U);
    *((int *)t34) = 31;
    t34 = (t33 + 4U);
    *((int *)t34) = 0;
    t34 = (t33 + 8U);
    *((int *)t34) = -1;
    t35 = (0 - 31);
    t21 = (t35 * -1);
    t21 = (t21 + 1);
    t34 = (t33 + 12U);
    *((unsigned int *)t34) = t21;
    t34 = (t4 + 204U);
    t36 = ((STD_STANDARD) + 1112);
    t37 = (t34 + 88U);
    *((char **)t37) = t36;
    t39 = (t34 + 56U);
    *((char **)t39) = t38;
    xsi_type_set_default_value(t36, t38, t32);
    t40 = (t34 + 64U);
    *((char **)t40) = t32;
    t41 = (t34 + 80U);
    *((unsigned int *)t41) = 32U;
    t42 = (t5 + 4U);
    t43 = (t2 != 0);
    if (t43 == 1)
        goto LAB3;

LAB2:    t44 = (t5 + 12U);
    *((char **)t44) = t3;
    t45 = 0;
    t46 = 31;

LAB4:    if (t45 <= t46)
        goto LAB5;

LAB7:    t6 = (t22 + 56U);
    t7 = *((char **)t6);
    t43 = (1024U != 1024U);
    if (t43 == 1)
        goto LAB9;

LAB10:    t0 = xsi_get_transient_memory(1024U);
    memcpy(t0, t7, 1024U);

LAB1:    xsi_access_variable_delete(t11);
    t6 = (t4 + 4U);
    t7 = *((char **)t6);
    xsi_delete_file_variable(t7);
    return t0;
LAB3:    *((char **)t42) = t2;
    goto LAB2;

LAB5:    t47 = (t4 + 4U);
    t48 = *((char **)t47);
    std_textio_readline(STD_TEXTIO, (char *)0, t48, t11);
    t6 = (t34 + 56U);
    t7 = *((char **)t6);
    std_textio_read4(STD_TEXTIO, (char *)0, t11, t7, t32);
    t6 = (t34 + 56U);
    t7 = *((char **)t6);
    t6 = ieee_p_2592010699_sub_393209765_503743352(IEEE_P_2592010699, t49, t7, t32);
    t9 = (t22 + 56U);
    t10 = *((char **)t9);
    t20 = (t45 - 0);
    t8 = (t20 * 1);
    xsi_vhdl_check_range_of_index(0, 31, 1, t45);
    t21 = (32U * t8);
    t50 = (0 + t21);
    t9 = (t10 + t50);
    t12 = (t49 + 12U);
    t51 = *((unsigned int *)t12);
    t51 = (t51 * 1U);
    memcpy(t9, t6, t51);

LAB6:    if (t45 == t46)
        goto LAB7;

LAB8:    t20 = (t45 + 1);
    t45 = t20;
    goto LAB4;

LAB9:    xsi_size_not_matching(1024U, 1024U, 0);
    goto LAB10;

LAB11:;
}

static void work_a_1707665227_3212880686_p_0(char *t0)
{
    char t14[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    int t15;
    unsigned int t16;
    int t17;
    int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(67, ng4);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(70, ng4);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 1032U);
    t5 = *((char **)t1);
    t11 = (31 - 4);
    t12 = (t11 * 1U);
    t13 = (0 + t12);
    t1 = (t5 + t13);
    t6 = (t14 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 4;
    t7 = (t6 + 4U);
    *((int *)t7) = 0;
    t7 = (t6 + 8U);
    *((int *)t7) = -1;
    t15 = (0 - 4);
    t16 = (t15 * -1);
    t16 = (t16 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t16;
    t17 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t1, t14);
    t18 = (t17 - 0);
    t16 = (t18 * 1);
    xsi_vhdl_check_range_of_index(0, 31, 1, t17);
    t19 = (32U * t16);
    t20 = (0 + t19);
    t7 = (t2 + t20);
    t8 = (t0 + 3072);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t21 = (t10 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t7, 32U);
    xsi_driver_first_trans_fast_port(t8);

LAB3:    t1 = (t0 + 2992);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(68, ng4);
    t1 = xsi_get_transient_memory(32U);
    memset(t1, 0, 32U);
    t5 = t1;
    memset(t5, (unsigned char)2, 32U);
    t6 = (t0 + 3072);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 32U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB3;

}


extern void work_a_1707665227_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1707665227_3212880686_p_0};
	static char *se[] = {(void *)work_a_1707665227_3212880686_sub_3205739798_3057020925};
	xsi_register_didat("work_a_1707665227_3212880686", "isim/Tb_iM_isim_beh.exe.sim/work/a_1707665227_3212880686.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
