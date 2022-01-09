Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3466848894F
	for <lists+intel-wired-lan@lfdr.de>; Sun,  9 Jan 2022 13:17:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E1D0081516;
	Sun,  9 Jan 2022 12:17:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vKzBNP59KcNu; Sun,  9 Jan 2022 12:17:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CF54D81347;
	Sun,  9 Jan 2022 12:17:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9701A1BF969
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jan 2022 12:17:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 808AE60B24
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jan 2022 12:17:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N2BkZ7ZNDu6Q for <intel-wired-lan@lists.osuosl.org>;
 Sun,  9 Jan 2022 12:17:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9011260792
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jan 2022 12:17:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641730654; x=1673266654;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=Y5I8+B7CfJYqS0qLyzN7m1G62EEQbDs5LaaOJU9L7ZY=;
 b=lpOwq4kjRGGEgZB2O2snLcSlTwt8XyvhKropSc9pRyZmiD2K2LSMrFKf
 ZHQNbXNiWA6Hut/tPIkyJAwXIeIb5JYUIzEQuQfDSvPzoDvHiYucKidLi
 j3eAFY8Y7+TMGGj6fRrALQRw91CeHe7HgYZmE/7DjLXi3UO8CkcieYEMj
 HpLhO5IFYdESJepSoCjCBlvqQFgusCWp50yg4Yj49kWlPNdIvfm744U7/
 5gGsfa5W/M9LYA+V1hxsrHLU87E02yp/gknU6RTVAUTWGn3WVh7/7nuc/
 0qEwQ5TWeZvSEjLZbORe1Tub1jO6Ouj2VW/kL1QRejUC/QnO1+F8o001w w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10221"; a="223781172"
X-IronPort-AV: E=Sophos;i="5.88,274,1635231600"; d="scan'208";a="223781172"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2022 04:17:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,274,1635231600"; d="scan'208";a="612607136"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 09 Jan 2022 04:17:33 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1n6X8e-0001Zj-Hi; Sun, 09 Jan 2022 12:17:32 +0000
Date: Sun, 09 Jan 2022 20:16:52 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <61dad234.NnFcRsDRK1M844d/%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 cf7f67acd75edf730854e51ecfd41713bbd651f1
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
branch HEAD: cf7f67acd75edf730854e51ecfd41713bbd651f1  i40e: Remove unused RX realloc stat

elapsed time: 728m

configs tested: 141
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                            zeus_defconfig
nios2                         10m50_defconfig
mips                         db1xxx_defconfig
m68k                        m5272c3_defconfig
riscv                            allmodconfig
mips                            ar7_defconfig
powerpc                     taishan_defconfig
powerpc                        warp_defconfig
sh                        dreamcast_defconfig
m68k                             alldefconfig
powerpc                 mpc8540_ads_defconfig
um                                  defconfig
um                             i386_defconfig
powerpc                      ppc6xx_defconfig
m68k                            mac_defconfig
sh                            migor_defconfig
nds32                            alldefconfig
arc                          axs101_defconfig
arc                     nsimosci_hs_defconfig
openrisc                  or1klitex_defconfig
sh                            hp6xx_defconfig
arm                        multi_v7_defconfig
powerpc                     tqm8541_defconfig
i386                             alldefconfig
alpha                               defconfig
powerpc                mpc7448_hpc2_defconfig
m68k                        stmark2_defconfig
sh                           sh2007_defconfig
sh                           se7619_defconfig
arm                        oxnas_v6_defconfig
sh                      rts7751r2d1_defconfig
m68k                       m5475evb_defconfig
arm                            mps2_defconfig
sh                                  defconfig
nios2                            alldefconfig
powerpc                      bamboo_defconfig
powerpc                 mpc85xx_cds_defconfig
sh                          kfr2r09_defconfig
sh                     sh7710voipgw_defconfig
m68k                                defconfig
arm                         lpc18xx_defconfig
sh                          landisk_defconfig
arm                            qcom_defconfig
arm                          exynos_defconfig
powerpc                      makalu_defconfig
sh                           se7780_defconfig
powerpc                 mpc834x_itx_defconfig
powerpc                      cm5200_defconfig
x86_64                           alldefconfig
sh                        sh7757lcr_defconfig
powerpc                      chrp32_defconfig
m68k                            q40_defconfig
sh                         ecovec24_defconfig
sh                          rsk7264_defconfig
mips                         bigsur_defconfig
arm                  randconfig-c002-20220109
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
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a005-20220109
x86_64               randconfig-a001-20220109
x86_64               randconfig-a004-20220109
x86_64               randconfig-a006-20220109
x86_64               randconfig-a003-20220109
x86_64               randconfig-a002-20220109
i386                 randconfig-a003-20220109
i386                 randconfig-a005-20220109
i386                 randconfig-a006-20220109
i386                 randconfig-a004-20220109
i386                 randconfig-a001-20220109
i386                 randconfig-a002-20220109
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
um                           x86_64_defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
arm                  randconfig-c002-20220109
mips                 randconfig-c004-20220109
i386                 randconfig-c001-20220109
riscv                randconfig-c006-20220109
powerpc              randconfig-c003-20220109
x86_64               randconfig-c007-20220109
powerpc                     ppa8548_defconfig
mips                      maltaaprp_defconfig
powerpc                          allyesconfig
powerpc                     ksi8560_defconfig
x86_64               randconfig-a015-20220109
x86_64               randconfig-a012-20220109
x86_64               randconfig-a014-20220109
x86_64               randconfig-a013-20220109
x86_64               randconfig-a011-20220109
x86_64               randconfig-a016-20220109
i386                 randconfig-a012-20220109
i386                 randconfig-a016-20220109
i386                 randconfig-a015-20220109
i386                 randconfig-a014-20220109
i386                 randconfig-a011-20220109
i386                 randconfig-a013-20220109
hexagon              randconfig-r041-20220109
riscv                randconfig-r042-20220109
hexagon              randconfig-r045-20220109

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
