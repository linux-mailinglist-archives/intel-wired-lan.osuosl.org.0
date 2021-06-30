Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 290383B802F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Jun 2021 11:40:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A0F0C4065C;
	Wed, 30 Jun 2021 09:40:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6OaXZ1xeYfUF; Wed, 30 Jun 2021 09:40:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 219B1405EE;
	Wed, 30 Jun 2021 09:40:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BDBF41BF387
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jun 2021 09:40:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AB78683886
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jun 2021 09:40:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CqfPLUe9RhQ8 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Jun 2021 09:40:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AC7C6836D5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jun 2021 09:40:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10030"; a="269453841"
X-IronPort-AV: E=Sophos;i="5.83,311,1616482800"; d="scan'208";a="269453841"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2021 02:40:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,311,1616482800"; d="scan'208";a="457150471"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 30 Jun 2021 02:40:23 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lyWhi-0009hK-La; Wed, 30 Jun 2021 09:40:22 +0000
Date: Wed, 30 Jun 2021 17:39:35 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <60dc3bd7.5BugYCxqqMrhHhmA%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD REGRESSION
 fff3ea006287fec848383b6144935cba5ded41a6
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: fff3ea006287fec848383b6144935cba5ded41a6  igc: Export LEDs

Error/Warning in current branch:

drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c:180:35: error: 'struct pci_dev' has no member named 'physfn'; did you mean 'is_physfn'?

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
`-- alpha-randconfig-r032-20210628
    `-- drivers-net-ethernet-intel-i40e-i40e_virtchnl_pf.c:error:struct-pci_dev-has-no-member-named-physfn

elapsed time: 723m

configs tested: 116
configs skipped: 2

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
xtensa                           allyesconfig
arm                         at91_dt_defconfig
arm                       imx_v6_v7_defconfig
ia64                         bigsur_defconfig
powerpc                     mpc512x_defconfig
arm                  colibri_pxa300_defconfig
powerpc64                           defconfig
mips                            gpr_defconfig
powerpc                      ppc44x_defconfig
arm                         hackkit_defconfig
m68k                        m5307c3_defconfig
powerpc                      mgcoge_defconfig
powerpc                     skiroot_defconfig
arm                      integrator_defconfig
powerpc                      chrp32_defconfig
arm                            mmp2_defconfig
arm                         palmz72_defconfig
powerpc                     stx_gp3_defconfig
parisc                              defconfig
powerpc                  mpc885_ads_defconfig
arm                            zeus_defconfig
riscv                    nommu_k210_defconfig
arc                         haps_hs_defconfig
arm                      pxa255-idp_defconfig
powerpc                     tqm8540_defconfig
mips                     cu1830-neo_defconfig
arm                         socfpga_defconfig
powerpc                 mpc8540_ads_defconfig
sh                               j2_defconfig
arm                           u8500_defconfig
arc                          axs101_defconfig
mips                            ar7_defconfig
sh                          sdk7786_defconfig
arm                       mainstone_defconfig
openrisc                            defconfig
arm                           tegra_defconfig
mips                      loongson3_defconfig
ia64                             allmodconfig
powerpc                     asp8347_defconfig
powerpc                       holly_defconfig
powerpc                       eiger_defconfig
x86_64                            allnoconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a001-20210628
i386                 randconfig-a002-20210628
i386                 randconfig-a003-20210628
i386                 randconfig-a006-20210628
i386                 randconfig-a005-20210628
i386                 randconfig-a004-20210628
x86_64               randconfig-a012-20210628
x86_64               randconfig-a016-20210628
x86_64               randconfig-a015-20210628
x86_64               randconfig-a013-20210628
x86_64               randconfig-a014-20210628
x86_64               randconfig-a011-20210628
i386                 randconfig-a011-20210628
i386                 randconfig-a014-20210628
i386                 randconfig-a013-20210628
i386                 randconfig-a015-20210628
i386                 randconfig-a016-20210628
i386                 randconfig-a012-20210628
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
um                            kunit_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-b001-20210628
x86_64               randconfig-a002-20210628
x86_64               randconfig-a005-20210628
x86_64               randconfig-a001-20210628
x86_64               randconfig-a003-20210628
x86_64               randconfig-a004-20210628
x86_64               randconfig-a006-20210628

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
