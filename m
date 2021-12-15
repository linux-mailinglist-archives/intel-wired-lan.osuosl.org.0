Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4C2C475837
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Dec 2021 12:55:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 50F5E40985;
	Wed, 15 Dec 2021 11:55:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oyxSbyevUGJY; Wed, 15 Dec 2021 11:55:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BFAD840133;
	Wed, 15 Dec 2021 11:55:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 016B71BF2F5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Dec 2021 11:55:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DF28D40939
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Dec 2021 11:55:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ytKgmVrlgeGy for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Dec 2021 11:55:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8F6FD40133
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Dec 2021 11:55:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639569301; x=1671105301;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=DO35L+RGYGNLmPJRXfslBc6QzM2JLTsdl/GjewoCv7Q=;
 b=WpBq81WGhHddwXRSFmdczS2m1iNZnWFiW26cKBgjuaiGd728I1h+ADA9
 HZmwz7WT5wOqA2J8khaAHh5Oxj8E6QCWGJ56HgPYtxIPXgK7PrPXE4HP/
 GgBza2xJGQP+TauU4iKSXRztBq1XwxtFSaK+AldTrWj6N4Zb8rGUGglJI
 RUiRCuBMF4tDDr+pBZi8UnoNtZuYwxLJNokCjs2DPro49zb3n53lLQv63
 AUnKhkxyW6S2Lb5XfhmJ8pnaZb4gySBmY0IQp1fVaiZZWiFq76k4vYP+N
 a5El3bbJ93Xu0/DWHwUzkqx/ngOvzz8Xl57kH9jVY7ODPS1lfSvPCqLce g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10198"; a="263359591"
X-IronPort-AV: E=Sophos;i="5.88,207,1635231600"; d="scan'208";a="263359591"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2021 03:55:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,207,1635231600"; d="scan'208";a="464240715"
Received: from lkp-server02.sh.intel.com (HELO 9f38c0981d9f) ([10.239.97.151])
 by orsmga003.jf.intel.com with ESMTP; 15 Dec 2021 03:54:58 -0800
Received: from kbuild by 9f38c0981d9f with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mxSs6-0001i8-7l; Wed, 15 Dec 2021 11:54:58 +0000
Date: Wed, 15 Dec 2021 19:54:15 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <61b9d767.7u90hg+CwEJ4WFLM%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 f8a3bcceb4224494ac4fa2b7e9428ac1bbdd6d52
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: f8a3bcceb4224494ac4fa2b7e9428ac1bbdd6d52  ice: Remove unused ICE_FLOW_SEG_HDRS_L2_MASK

elapsed time: 723m

configs tested: 191
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20211214
mips                 randconfig-c004-20211214
sh                 kfr2r09-romimage_defconfig
xtensa                    xip_kc705_defconfig
powerpc                    klondike_defconfig
arm                      tct_hammer_defconfig
m68k                          amiga_defconfig
arm                          pcm027_defconfig
sh                        apsh4ad0a_defconfig
arm                         lpc32xx_defconfig
powerpc                      tqm8xx_defconfig
arm                          gemini_defconfig
csky                             alldefconfig
arm                        cerfcube_defconfig
powerpc                        cell_defconfig
powerpc                   motionpro_defconfig
powerpc                 mpc834x_itx_defconfig
sh                               alldefconfig
arm                             mxs_defconfig
nds32                             allnoconfig
powerpc                      pasemi_defconfig
powerpc                    gamecube_defconfig
powerpc64                        alldefconfig
s390                                defconfig
mips                  cavium_octeon_defconfig
arm                     eseries_pxa_defconfig
arm                      footbridge_defconfig
arm                          pxa168_defconfig
riscv                            allmodconfig
powerpc                          allyesconfig
m68k                          sun3x_defconfig
arm                         s5pv210_defconfig
mips                         tb0226_defconfig
powerpc                   lite5200b_defconfig
powerpc                      acadia_defconfig
arc                     nsimosci_hs_defconfig
powerpc                 mpc85xx_cds_defconfig
um                             i386_defconfig
powerpc                        fsp2_defconfig
mips                         mpc30x_defconfig
arm                            dove_defconfig
arm                        oxnas_v6_defconfig
sh                          polaris_defconfig
mips                     loongson2k_defconfig
arc                 nsimosci_hs_smp_defconfig
powerpc                 mpc834x_mds_defconfig
powerpc                 mpc836x_mds_defconfig
arm                         hackkit_defconfig
mips                      malta_kvm_defconfig
mips                           ci20_defconfig
sh                          r7780mp_defconfig
arm                   milbeaut_m10v_defconfig
arm                  colibri_pxa270_defconfig
powerpc                      makalu_defconfig
arm                      jornada720_defconfig
sh                          urquell_defconfig
arm                           sama5_defconfig
mips                            ar7_defconfig
arm                       aspeed_g5_defconfig
riscv             nommu_k210_sdcard_defconfig
arm                       imx_v4_v5_defconfig
powerpc                 mpc832x_rdb_defconfig
arm                          lpd270_defconfig
powerpc                     ppa8548_defconfig
mips                      maltaaprp_defconfig
arm                          imote2_defconfig
sparc                               defconfig
sh                         microdev_defconfig
powerpc                     stx_gp3_defconfig
i386                             alldefconfig
mips                      bmips_stb_defconfig
mips                           rs90_defconfig
mips                    maltaup_xpa_defconfig
sparc                       sparc32_defconfig
h8300                               defconfig
sh                      rts7751r2d1_defconfig
openrisc                            defconfig
powerpc                       ppc64_defconfig
powerpc                      pmac32_defconfig
m68k                             alldefconfig
arm                            qcom_defconfig
sh                           se7724_defconfig
sparc64                             defconfig
h8300                    h8300h-sim_defconfig
arm                         socfpga_defconfig
powerpc                      bamboo_defconfig
ia64                         bigsur_defconfig
arm                        multi_v5_defconfig
mips                        workpad_defconfig
mips                           jazz_defconfig
arm                            mmp2_defconfig
arm                         s3c2410_defconfig
sh                                  defconfig
powerpc                    mvme5100_defconfig
arm                          moxart_defconfig
sparc                            alldefconfig
powerpc                     pseries_defconfig
arm                      pxa255-idp_defconfig
m68k                       bvme6000_defconfig
powerpc                          g5_defconfig
arm                           sama7_defconfig
arm                  randconfig-c002-20211214
arm                  randconfig-c002-20211215
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
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
i386                             allyesconfig
sparc                            allyesconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a006-20211214
x86_64               randconfig-a005-20211214
x86_64               randconfig-a001-20211214
x86_64               randconfig-a002-20211214
x86_64               randconfig-a003-20211214
x86_64               randconfig-a004-20211214
i386                 randconfig-a001-20211214
i386                 randconfig-a002-20211214
i386                 randconfig-a005-20211214
i386                 randconfig-a003-20211214
i386                 randconfig-a006-20211214
i386                 randconfig-a004-20211214
x86_64               randconfig-a011-20211215
x86_64               randconfig-a014-20211215
x86_64               randconfig-a012-20211215
x86_64               randconfig-a013-20211215
x86_64               randconfig-a016-20211215
x86_64               randconfig-a015-20211215
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
arm                  randconfig-c002-20211214
x86_64               randconfig-c007-20211214
riscv                randconfig-c006-20211214
mips                 randconfig-c004-20211214
i386                 randconfig-c001-20211214
s390                 randconfig-c005-20211214
powerpc              randconfig-c003-20211214
x86_64               randconfig-a011-20211214
x86_64               randconfig-a014-20211214
x86_64               randconfig-a012-20211214
x86_64               randconfig-a013-20211214
x86_64               randconfig-a016-20211214
x86_64               randconfig-a015-20211214
i386                 randconfig-a013-20211214
i386                 randconfig-a011-20211214
i386                 randconfig-a016-20211214
i386                 randconfig-a014-20211214
i386                 randconfig-a015-20211214
i386                 randconfig-a012-20211214
hexagon              randconfig-r045-20211214
s390                 randconfig-r044-20211214
riscv                randconfig-r042-20211214
hexagon              randconfig-r041-20211214
hexagon              randconfig-r045-20211215
hexagon              randconfig-r041-20211215

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
