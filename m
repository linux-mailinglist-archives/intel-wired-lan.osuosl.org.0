Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 13AC52E2805
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Dec 2020 17:15:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2BCFC203BE;
	Thu, 24 Dec 2020 16:15:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tViwOZ-CZ43l; Thu, 24 Dec 2020 16:15:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B06722044C;
	Thu, 24 Dec 2020 16:15:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8BB5A1BF3B9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Dec 2020 16:15:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8721985F18
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Dec 2020 16:15:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I7yKy5cKEho2 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Dec 2020 16:15:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A9B5385C52
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Dec 2020 16:15:30 +0000 (UTC)
IronPort-SDR: CmbgW6zp+AUv63gd3vIpXWfaY697WqC8ZDtaK592f8FCQiTsVc5gYNUt+YHJrbPi3HF/hCGnr8
 mobh3E+xn2Ig==
X-IronPort-AV: E=McAfee;i="6000,8403,9845"; a="240243895"
X-IronPort-AV: E=Sophos;i="5.78,444,1599548400"; d="scan'208";a="240243895"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Dec 2020 08:15:29 -0800
IronPort-SDR: aJUOhdNrqXlHDYVzvhqJm/kFNvaQPEM8swfd1vNhTmSVnl4iCIG92dRDWHnDFBK8lToMLIpZaQ
 Zms9ZNzPeDJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,444,1599548400"; d="scan'208";a="398781183"
Received: from lkp-server02.sh.intel.com (HELO 4242b19f17ef) ([10.239.97.151])
 by FMSMGA003.fm.intel.com with ESMTP; 24 Dec 2020 08:15:28 -0800
Received: from kbuild by 4242b19f17ef with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1ksTGx-000142-CE; Thu, 24 Dec 2020 16:15:27 +0000
Date: Fri, 25 Dec 2020 00:14:27 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5fe4be63.FNT4ryGSsdmQtBsz%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 1f45dc22066797479072978feeada0852502e180
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git  master
branch HEAD: 1f45dc22066797479072978feeada0852502e180  ibmvnic: continue fatal error reset after passive init

elapsed time: 1146m

configs tested: 134
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
nds32                             allnoconfig
m68k                        m5407c3_defconfig
openrisc                            defconfig
sh                           se7343_defconfig
mips                      maltasmvp_defconfig
arm                  colibri_pxa300_defconfig
arm                         hackkit_defconfig
sh                               alldefconfig
arm                        keystone_defconfig
arc                     nsimosci_hs_defconfig
arm                      jornada720_defconfig
mips                       capcella_defconfig
powerpc                   currituck_defconfig
powerpc                    ge_imp3a_defconfig
arm                           corgi_defconfig
powerpc                 xes_mpc85xx_defconfig
powerpc                      ppc40x_defconfig
c6x                        evmc6474_defconfig
parisc                              defconfig
c6x                                 defconfig
sh                             shx3_defconfig
mips                      loongson3_defconfig
powerpc                 mpc8315_rdb_defconfig
arc                        vdk_hs38_defconfig
arm                          pcm027_defconfig
arm                         mv78xx0_defconfig
arm                        trizeps4_defconfig
arm                          prima2_defconfig
sparc                            alldefconfig
mips                       bmips_be_defconfig
powerpc                mpc7448_hpc2_defconfig
microblaze                      mmu_defconfig
sh                  sh7785lcr_32bit_defconfig
arm                        clps711x_defconfig
sh                         ap325rxa_defconfig
xtensa                       common_defconfig
arm                       multi_v4t_defconfig
xtensa                           alldefconfig
mips                        nlm_xlp_defconfig
arm                              zx_defconfig
powerpc                     taishan_defconfig
powerpc                     mpc83xx_defconfig
h8300                            alldefconfig
powerpc                 mpc834x_mds_defconfig
sh                           se7705_defconfig
arm                          pxa3xx_defconfig
m68k                        mvme16x_defconfig
sh                        sh7763rdp_defconfig
sh                             espt_defconfig
arm                             pxa_defconfig
mips                     loongson1b_defconfig
sparc64                             defconfig
alpha                               defconfig
arm                           tegra_defconfig
mips                  decstation_64_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
c6x                              allyesconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
s390                             allyesconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                               tinyconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a001-20201223
x86_64               randconfig-a006-20201223
x86_64               randconfig-a002-20201223
x86_64               randconfig-a004-20201223
x86_64               randconfig-a003-20201223
x86_64               randconfig-a005-20201223
i386                 randconfig-a005-20201224
i386                 randconfig-a002-20201224
i386                 randconfig-a006-20201224
i386                 randconfig-a004-20201224
i386                 randconfig-a003-20201224
i386                 randconfig-a001-20201224
i386                 randconfig-a002-20201223
i386                 randconfig-a005-20201223
i386                 randconfig-a006-20201223
i386                 randconfig-a004-20201223
i386                 randconfig-a003-20201223
i386                 randconfig-a001-20201223
i386                 randconfig-a011-20201223
i386                 randconfig-a016-20201223
i386                 randconfig-a014-20201223
i386                 randconfig-a012-20201223
i386                 randconfig-a015-20201223
i386                 randconfig-a013-20201223
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a015-20201223
x86_64               randconfig-a014-20201223
x86_64               randconfig-a016-20201223
x86_64               randconfig-a012-20201223
x86_64               randconfig-a013-20201223
x86_64               randconfig-a011-20201223

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
