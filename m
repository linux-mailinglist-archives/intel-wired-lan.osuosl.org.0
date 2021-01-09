Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7B4E2EFE4F
	for <lists+intel-wired-lan@lfdr.de>; Sat,  9 Jan 2021 08:45:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4B49587584;
	Sat,  9 Jan 2021 07:45:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N7OanYnZWRgJ; Sat,  9 Jan 2021 07:45:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6965687418;
	Sat,  9 Jan 2021 07:45:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9EFAB1BF47E
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Jan 2021 07:44:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9A9F28689A
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Jan 2021 07:44:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VKuMrZsnamow for <intel-wired-lan@lists.osuosl.org>;
 Sat,  9 Jan 2021 07:44:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BA53786890
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Jan 2021 07:44:58 +0000 (UTC)
IronPort-SDR: AIe3L4UCP6JI1Gc5FB3PmDtCdAuBcb5KLUE7Jyy3FPWjY77qhhqHQ6k6M6L9Nqlc8Fy5LWI/RD
 JuG9pU87af4w==
X-IronPort-AV: E=McAfee;i="6000,8403,9858"; a="262467702"
X-IronPort-AV: E=Sophos;i="5.79,333,1602572400"; d="scan'208";a="262467702"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 23:44:58 -0800
IronPort-SDR: HIZp4TlmdZiIzxZNj6HsLXBdXDjppODSgdMDgVL/z88GGe5OYBR5OS2HVjBUjjpj+qZKtbjc4O
 36zGIuh5PCbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,333,1602572400"; d="scan'208";a="498068130"
Received: from lkp-server01.sh.intel.com (HELO 412602b27703) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 08 Jan 2021 23:44:57 -0800
Received: from kbuild by 412602b27703 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1ky8vg-0000xW-IJ; Sat, 09 Jan 2021 07:44:56 +0000
Date: Sat, 09 Jan 2021 15:44:16 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5ff95ed0.WLGKTjkhYKoZrAha%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:master] BUILD SUCCESS
 7cd1de76c95f1c36cf761fd53dec35b13c1e8f70
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git  master
branch HEAD: 7cd1de76c95f1c36cf761fd53dec35b13c1e8f70  Merge branch 'dwmac-meson8b-picosecond-precision-rx-delay-support'

elapsed time: 1647m

configs tested: 187
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                              allmodconfig
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
powerpc                 xes_mpc85xx_defconfig
powerpc                 mpc832x_rdb_defconfig
arm                       imx_v6_v7_defconfig
x86_64                              defconfig
nios2                            allyesconfig
powerpc                    mvme5100_defconfig
mips                          ath25_defconfig
sh                             shx3_defconfig
m68k                          multi_defconfig
sh                          lboxre2_defconfig
m68k                          amiga_defconfig
powerpc                       holly_defconfig
m68k                       bvme6000_defconfig
mips                          rb532_defconfig
arm                        trizeps4_defconfig
powerpc                      mgcoge_defconfig
mips                      malta_kvm_defconfig
m68k                        mvme16x_defconfig
powerpc                         wii_defconfig
riscv                          rv32_defconfig
m68k                             alldefconfig
openrisc                  or1klitex_defconfig
parisc                generic-32bit_defconfig
powerpc                        warp_defconfig
arm                       imx_v4_v5_defconfig
sh                         ap325rxa_defconfig
m68k                         amcore_defconfig
ia64                             alldefconfig
sh                        sh7785lcr_defconfig
arm                         socfpga_defconfig
powerpc                       ebony_defconfig
mips                         bigsur_defconfig
arm                        realview_defconfig
sh                            migor_defconfig
arm                           h3600_defconfig
m68k                          atari_defconfig
sparc                       sparc64_defconfig
c6x                        evmc6472_defconfig
arm                         at91_dt_defconfig
parisc                           alldefconfig
mips                  maltasmvp_eva_defconfig
powerpc               mpc834x_itxgp_defconfig
sh                        sh7763rdp_defconfig
sh                         ecovec24_defconfig
xtensa                generic_kc705_defconfig
mips                  decstation_64_defconfig
powerpc                    sam440ep_defconfig
mips                         tb0219_defconfig
mips                      bmips_stb_defconfig
powerpc                      ppc6xx_defconfig
mips                        workpad_defconfig
mips                        omega2p_defconfig
sh                            titan_defconfig
powerpc                      ppc64e_defconfig
sh                        dreamcast_defconfig
powerpc                           allnoconfig
arm                         lpc18xx_defconfig
arm                        mvebu_v7_defconfig
microblaze                          defconfig
arm                        oxnas_v6_defconfig
m68k                                defconfig
arc                     haps_hs_smp_defconfig
mips                           jazz_defconfig
powerpc                        fsp2_defconfig
mips                        nlm_xlr_defconfig
m68k                           sun3_defconfig
sh                           se7780_defconfig
m68k                         apollo_defconfig
powerpc64                           defconfig
arm                       cns3420vb_defconfig
m68k                        mvme147_defconfig
sh                            shmin_defconfig
powerpc                  iss476-smp_defconfig
m68k                          hp300_defconfig
sh                          polaris_defconfig
mips                           ip27_defconfig
mips                     loongson1c_defconfig
ia64                        generic_defconfig
sh                      rts7751r2d1_defconfig
arm                       omap2plus_defconfig
mips                     cu1830-neo_defconfig
alpha                            alldefconfig
mips                           ci20_defconfig
sh                             sh03_defconfig
arm                           spitz_defconfig
powerpc                      ppc40x_defconfig
arm                      jornada720_defconfig
arm                          pxa3xx_defconfig
sh                           se7619_defconfig
mips                           ip22_defconfig
riscv                    nommu_virt_defconfig
riscv                            allmodconfig
ia64                            zx1_defconfig
powerpc                     ppa8548_defconfig
openrisc                    or1ksim_defconfig
powerpc                  mpc885_ads_defconfig
mips                malta_kvm_guest_defconfig
i386                             allyesconfig
powerpc                       ppc64_defconfig
powerpc                     tqm8560_defconfig
mips                         cobalt_defconfig
powerpc                     pseries_defconfig
arm                         lpc32xx_defconfig
powerpc                     kilauea_defconfig
arm                       aspeed_g5_defconfig
m68k                       m5249evb_defconfig
mips                      maltaaprp_defconfig
arc                          axs103_defconfig
arm                     eseries_pxa_defconfig
sh                          r7780mp_defconfig
riscv                            allyesconfig
powerpc                      acadia_defconfig
arc                          axs101_defconfig
mips                           gcw0_defconfig
mips                      pic32mzda_defconfig
powerpc                mpc7448_hpc2_defconfig
mips                      pistachio_defconfig
arm                    vt8500_v6_v7_defconfig
powerpc                      chrp32_defconfig
arm                          lpd270_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
nds32                               defconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
parisc                           allyesconfig
s390                                defconfig
sparc                            allyesconfig
sparc                               defconfig
i386                               tinyconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
x86_64               randconfig-a004-20210108
x86_64               randconfig-a006-20210108
x86_64               randconfig-a001-20210108
x86_64               randconfig-a002-20210108
x86_64               randconfig-a003-20210108
x86_64               randconfig-a005-20210108
i386                 randconfig-a005-20210108
i386                 randconfig-a002-20210108
i386                 randconfig-a001-20210108
i386                 randconfig-a003-20210108
i386                 randconfig-a006-20210108
i386                 randconfig-a004-20210108
i386                 randconfig-a016-20210108
i386                 randconfig-a011-20210108
i386                 randconfig-a014-20210108
i386                 randconfig-a015-20210108
i386                 randconfig-a013-20210108
i386                 randconfig-a012-20210108
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
riscv                               defconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a013-20210108
x86_64               randconfig-a011-20210108
x86_64               randconfig-a012-20210108
x86_64               randconfig-a016-20210108
x86_64               randconfig-a014-20210108
x86_64               randconfig-a015-20210108

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
