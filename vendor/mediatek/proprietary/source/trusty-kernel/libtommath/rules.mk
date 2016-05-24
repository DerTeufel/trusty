LOCAL_DIR:= $(GET_LOCAL_DIR)

#Additional flags already in android-config.mk
MODULE_CFLAGS += -Wall -W -Wshadow -Wsign-compare -funroll-loops \
          -DMTK_TEE_SUPPORT \
          -DMP_LOW_MEM \
          -DLTC_NO_WCHAR

MODULE_CFLAGS += -DMP_64BIT

MODULE := $(LOCAL_DIR)

GLOBAL_INCLUDES += \
            $(LOCAL_DIR)

MODULE_SRCS += \
        $(LOCAL_DIR)/bn_error.c                            \
        $(LOCAL_DIR)/bn_fast_mp_invmod.c                   \
        $(LOCAL_DIR)/bn_fast_mp_montgomery_reduce.c        \
        $(LOCAL_DIR)/bn_fast_s_mp_mul_digs.c               \
        $(LOCAL_DIR)/bn_fast_s_mp_mul_high_digs.c          \
        $(LOCAL_DIR)/bn_fast_s_mp_sqr.c                    \
        $(LOCAL_DIR)/bn_mp_2expt.c                         \
        $(LOCAL_DIR)/bn_mp_abs.c                           \
        $(LOCAL_DIR)/bn_mp_add.c                           \
        $(LOCAL_DIR)/bn_mp_add_d.c                         \
        $(LOCAL_DIR)/bn_mp_and.c                           \
        $(LOCAL_DIR)/bn_mp_clamp.c                         \
        $(LOCAL_DIR)/bn_mp_clear.c                         \
        $(LOCAL_DIR)/bn_mp_clear_multi.c                   \
        $(LOCAL_DIR)/bn_mp_cmp.c                           \
        $(LOCAL_DIR)/bn_mp_cmp_d.c                         \
        $(LOCAL_DIR)/bn_mp_cmp_mag.c                       \
        $(LOCAL_DIR)/bn_mp_cnt_lsb.c                       \
        $(LOCAL_DIR)/bn_mp_copy.c                          \
        $(LOCAL_DIR)/bn_mp_count_bits.c                    \
        $(LOCAL_DIR)/bn_mp_div.c                           \
        $(LOCAL_DIR)/bn_mp_div_2.c                         \
        $(LOCAL_DIR)/bn_mp_div_2d.c                        \
        $(LOCAL_DIR)/bn_mp_div_3.c                         \
        $(LOCAL_DIR)/bn_mp_div_d.c                         \
        $(LOCAL_DIR)/bn_mp_dr_is_modulus.c                 \
        $(LOCAL_DIR)/bn_mp_dr_reduce.c                     \
        $(LOCAL_DIR)/bn_mp_dr_setup.c                      \
        $(LOCAL_DIR)/bn_mp_exch.c                          \
        $(LOCAL_DIR)/bn_mp_expt_d.c                        \
        $(LOCAL_DIR)/bn_mp_exptmod.c                       \
        $(LOCAL_DIR)/bn_mp_exptmod_fast.c                  \
        $(LOCAL_DIR)/bn_mp_exteuclid.c                     \
        $(LOCAL_DIR)/bn_mp_fread.c                         \
        $(LOCAL_DIR)/bn_mp_fwrite.c                        \
        $(LOCAL_DIR)/bn_mp_gcd.c                           \
        $(LOCAL_DIR)/bn_mp_get_int.c                       \
        $(LOCAL_DIR)/bn_mp_grow.c                          \
        $(LOCAL_DIR)/bn_mp_init.c                          \
        $(LOCAL_DIR)/bn_mp_init_copy.c                     \
        $(LOCAL_DIR)/bn_mp_init_multi.c                    \
        $(LOCAL_DIR)/bn_mp_init_set.c                      \
        $(LOCAL_DIR)/bn_mp_init_set_int.c                  \
        $(LOCAL_DIR)/bn_mp_init_size.c                     \
        $(LOCAL_DIR)/bn_mp_invmod.c                        \
        $(LOCAL_DIR)/bn_mp_invmod_slow.c                   \
        $(LOCAL_DIR)/bn_mp_is_square.c                     \
        $(LOCAL_DIR)/bn_mp_jacobi.c                        \
        $(LOCAL_DIR)/bn_mp_karatsuba_mul.c                 \
        $(LOCAL_DIR)/bn_mp_karatsuba_sqr.c                 \
        $(LOCAL_DIR)/bn_mp_lcm.c                           \
        $(LOCAL_DIR)/bn_mp_lshd.c                          \
        $(LOCAL_DIR)/bn_mp_mod.c                           \
        $(LOCAL_DIR)/bn_mp_mod_2d.c                        \
        $(LOCAL_DIR)/bn_mp_mod_d.c                         \
        $(LOCAL_DIR)/bn_mp_montgomery_calc_normalization.c \
        $(LOCAL_DIR)/bn_mp_montgomery_reduce.c             \
        $(LOCAL_DIR)/bn_mp_montgomery_setup.c              \
        $(LOCAL_DIR)/bn_mp_mul.c                           \
        $(LOCAL_DIR)/bn_mp_mul_2.c                         \
        $(LOCAL_DIR)/bn_mp_mul_2d.c                        \
        $(LOCAL_DIR)/bn_mp_mul_d.c                         \
        $(LOCAL_DIR)/bn_mp_mulmod.c                        \
        $(LOCAL_DIR)/bn_mp_n_root.c                        \
        $(LOCAL_DIR)/bn_mp_neg.c                           \
        $(LOCAL_DIR)/bn_mp_or.c                            \
        $(LOCAL_DIR)/bn_mp_prime_fermat.c                  \
        $(LOCAL_DIR)/bn_mp_prime_is_divisible.c            \
        $(LOCAL_DIR)/bn_mp_prime_is_prime.c                \
        $(LOCAL_DIR)/bn_mp_prime_miller_rabin.c            \
        $(LOCAL_DIR)/bn_mp_prime_next_prime.c              \
        $(LOCAL_DIR)/bn_mp_prime_rabin_miller_trials.c     \
        $(LOCAL_DIR)/bn_mp_prime_random_ex.c               \
        $(LOCAL_DIR)/bn_mp_radix_size.c                    \
        $(LOCAL_DIR)/bn_mp_radix_smap.c                    \
        $(LOCAL_DIR)/bn_mp_rand.c                          \
        $(LOCAL_DIR)/bn_mp_read_radix.c                    \
        $(LOCAL_DIR)/bn_mp_read_signed_bin.c               \
        $(LOCAL_DIR)/bn_mp_read_unsigned_bin.c             \
        $(LOCAL_DIR)/bn_mp_reduce.c                        \
        $(LOCAL_DIR)/bn_mp_reduce_2k.c                     \
        $(LOCAL_DIR)/bn_mp_reduce_2k_l.c                   \
        $(LOCAL_DIR)/bn_mp_reduce_2k_setup.c               \
        $(LOCAL_DIR)/bn_mp_reduce_2k_setup_l.c             \
        $(LOCAL_DIR)/bn_mp_reduce_is_2k.c                  \
        $(LOCAL_DIR)/bn_mp_reduce_is_2k_l.c                \
        $(LOCAL_DIR)/bn_mp_reduce_setup.c                  \
        $(LOCAL_DIR)/bn_mp_rshd.c                          \
        $(LOCAL_DIR)/bn_mp_set.c                           \
        $(LOCAL_DIR)/bn_mp_set_int.c                       \
        $(LOCAL_DIR)/bn_mp_shrink.c                        \
        $(LOCAL_DIR)/bn_mp_signed_bin_size.c               \
        $(LOCAL_DIR)/bn_mp_sqr.c                           \
        $(LOCAL_DIR)/bn_mp_sqrmod.c                        \
        $(LOCAL_DIR)/bn_mp_sqrt.c                          \
        $(LOCAL_DIR)/bn_mp_sub.c                           \
        $(LOCAL_DIR)/bn_mp_sub_d.c                         \
        $(LOCAL_DIR)/bn_mp_submod.c                        \
        $(LOCAL_DIR)/bn_mp_to_signed_bin.c                 \
        $(LOCAL_DIR)/bn_mp_to_signed_bin_n.c               \
        $(LOCAL_DIR)/bn_mp_to_unsigned_bin.c               \
        $(LOCAL_DIR)/bn_mp_to_unsigned_bin_n.c             \
        $(LOCAL_DIR)/bn_mp_toom_mul.c                      \
        $(LOCAL_DIR)/bn_mp_toom_sqr.c                      \
        $(LOCAL_DIR)/bn_mp_toradix.c                       \
        $(LOCAL_DIR)/bn_mp_toradix_n.c                     \
        $(LOCAL_DIR)/bn_mp_unsigned_bin_size.c             \
        $(LOCAL_DIR)/bn_mp_xor.c                           \
        $(LOCAL_DIR)/bn_mp_zero.c                          \
        $(LOCAL_DIR)/bn_prime_tab.c                        \
        $(LOCAL_DIR)/bn_reverse.c                          \
        $(LOCAL_DIR)/bn_s_mp_add.c                         \
        $(LOCAL_DIR)/bn_s_mp_exptmod.c                     \
        $(LOCAL_DIR)/bn_s_mp_mul_digs.c                    \
        $(LOCAL_DIR)/bn_s_mp_mul_high_digs.c               \
        $(LOCAL_DIR)/bn_s_mp_sqr.c                         \
        $(LOCAL_DIR)/bn_s_mp_sub.c                         \
        $(LOCAL_DIR)/bncore.c                              \
        $(LOCAL_DIR)/bn_mp_addmod.c

include make/module.mk
