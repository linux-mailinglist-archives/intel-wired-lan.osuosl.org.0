Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 697E534A5CF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Mar 2021 11:51:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0990B40257;
	Fri, 26 Mar 2021 10:50:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TwYmIXAp4ghw; Fri, 26 Mar 2021 10:50:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E581D40192;
	Fri, 26 Mar 2021 10:50:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7F0661C1189
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Mar 2021 10:50:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6DF7B40257
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Mar 2021 10:50:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YMekbndkhBbs for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Mar 2021 10:50:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 560E140192
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Mar 2021 10:50:49 +0000 (UTC)
IronPort-SDR: VFpvbSfnOmn82sNXZ8gz2xF4w79egzDtIzb2NosDcpzOatOPB86KG4Iawb/DTvC/JfNISivJjR
 cxSJfzeGVGmA==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="178243548"
X-IronPort-AV: E=Sophos;i="5.81,280,1610438400"; d="scan'208";a="178243548"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2021 03:50:48 -0700
IronPort-SDR: t32NfXgWnf70ZbrJhTOVu1nQMDrxWdxsoooReb1etJ6P04mpT5R3+MwAkTT56dqldNRhgYJigZ
 jr7qh6Rc+a7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,280,1610438400"; d="scan'208";a="525997312"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 26 Mar 2021 03:50:47 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lPk3C-0002g3-Fx; Fri, 26 Mar 2021 10:50:46 +0000
Date: Fri, 26 Mar 2021 18:50:03 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <605dbc5b.uKrSkHd7MPyhLQdX%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:40GbE] BUILD SUCCESS
 f2916ae9a1bc80aa8e9e8a00b75682f5df6fd59c
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 40GbE
branch HEAD: f2916ae9a1bc80aa8e9e8a00b75682f5df6fd59c  i40e: Fix oops at i40e_rebuild()

elapsed time: 733m

configs tested: 193
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
riscv                            allmodconfig
x86_64                           allyesconfig
i386                             allyesconfig
riscv                            allyesconfig
mips                           ip28_defconfig
powerpc                   lite5200b_defconfig
arm                         s5pv210_defconfig
powerpc                   currituck_defconfig
h8300                            alldefconfig
powerpc                     ksi8560_defconfig
powerpc                       maple_defconfig
powerpc                      obs600_defconfig
sparc64                             defconfig
arm                         assabet_defconfig
xtensa                              defconfig
sh                         ecovec24_defconfig
powerpc                    ge_imp3a_defconfig
arm                        shmobile_defconfig
powerpc                      cm5200_defconfig
powerpc                         wii_defconfig
arm                      jornada720_defconfig
sh                               alldefconfig
m68k                       m5475evb_defconfig
sh                   secureedge5410_defconfig
arm                        cerfcube_defconfig
powerpc                 mpc836x_rdk_defconfig
mips                           gcw0_defconfig
arc                         haps_hs_defconfig
um                             i386_defconfig
arm                          badge4_defconfig
sh                           se7780_defconfig
um                                allnoconfig
powerpc64                           defconfig
mips                      bmips_stb_defconfig
mips                        maltaup_defconfig
arm                        mvebu_v7_defconfig
parisc                           alldefconfig
arm                            pleb_defconfig
sh                   sh7770_generic_defconfig
powerpc                       ppc64_defconfig
arm                           spitz_defconfig
arm                        keystone_defconfig
arm                          lpd270_defconfig
mips                      maltaaprp_defconfig
arm                        spear3xx_defconfig
sh                          rsk7264_defconfig
arm                       imx_v6_v7_defconfig
mips                     loongson1c_defconfig
powerpc                     sequoia_defconfig
powerpc                      katmai_defconfig
arm                        multi_v7_defconfig
sh                ecovec24-romimage_defconfig
arm                      pxa255-idp_defconfig
arm                            mps2_defconfig
powerpc                      makalu_defconfig
powerpc                      pcm030_defconfig
mips                            ar7_defconfig
openrisc                            defconfig
xtensa                  audio_kc705_defconfig
arm                          pxa168_defconfig
arm                           sunxi_defconfig
powerpc                   motionpro_defconfig
arm                         lpc18xx_defconfig
mips                     decstation_defconfig
sh                             espt_defconfig
mips                        bcm63xx_defconfig
m68k                                defconfig
arm                           corgi_defconfig
powerpc                    amigaone_defconfig
m68k                       m5208evb_defconfig
mips                  cavium_octeon_defconfig
powerpc                 xes_mpc85xx_defconfig
sh                          sdk7780_defconfig
powerpc                      acadia_defconfig
nds32                            alldefconfig
powerpc                      ep88xc_defconfig
xtensa                    xip_kc705_defconfig
mips                        omega2p_defconfig
sh                     magicpanelr2_defconfig
riscv                    nommu_k210_defconfig
m68k                          amiga_defconfig
arc                            hsdk_defconfig
xtensa                  cadence_csp_defconfig
arm                          imote2_defconfig
sh                           se7712_defconfig
arc                    vdk_hs38_smp_defconfig
arm                        multi_v5_defconfig
mips                         cobalt_defconfig
powerpc                        icon_defconfig
arm                         axm55xx_defconfig
ia64                        generic_defconfig
mips                        qi_lb60_defconfig
m68k                            mac_defconfig
arm                          pxa3xx_defconfig
powerpc                     tqm8548_defconfig
sh                          polaris_defconfig
mips                       lemote2f_defconfig
arm                          gemini_defconfig
arm                         at91_dt_defconfig
sh                        sh7757lcr_defconfig
arm                     eseries_pxa_defconfig
sh                         apsh4a3a_defconfig
powerpc                     sbc8548_defconfig
arc                           tb10x_defconfig
h8300                               defconfig
arm                              alldefconfig
arm                            mmp2_defconfig
powerpc64                        alldefconfig
arc                        nsimosci_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
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
powerpc                           allnoconfig
x86_64               randconfig-a002-20210325
x86_64               randconfig-a003-20210325
x86_64               randconfig-a006-20210325
x86_64               randconfig-a001-20210325
x86_64               randconfig-a005-20210325
x86_64               randconfig-a004-20210325
i386                 randconfig-a003-20210325
i386                 randconfig-a004-20210325
i386                 randconfig-a001-20210325
i386                 randconfig-a002-20210325
i386                 randconfig-a006-20210325
i386                 randconfig-a005-20210325
x86_64               randconfig-a012-20210326
x86_64               randconfig-a015-20210326
x86_64               randconfig-a014-20210326
x86_64               randconfig-a013-20210326
x86_64               randconfig-a016-20210326
x86_64               randconfig-a011-20210326
i386                 randconfig-a014-20210325
i386                 randconfig-a011-20210325
i386                 randconfig-a015-20210325
i386                 randconfig-a016-20210325
i386                 randconfig-a013-20210325
i386                 randconfig-a012-20210325
i386                 randconfig-a014-20210326
i386                 randconfig-a011-20210326
i386                 randconfig-a015-20210326
i386                 randconfig-a016-20210326
i386                 randconfig-a012-20210326
i386                 randconfig-a013-20210326
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
um                               allmodconfig
um                               allyesconfig
um                                  defconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a012-20210325
x86_64               randconfig-a015-20210325
x86_64               randconfig-a014-20210325
x86_64               randconfig-a013-20210325
x86_64               randconfig-a011-20210325
x86_64               randconfig-a016-20210325

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
