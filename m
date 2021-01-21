Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 110D82FECE2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Jan 2021 15:30:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C68942152E;
	Thu, 21 Jan 2021 14:30:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ediJk-+UH6W1; Thu, 21 Jan 2021 14:30:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 626D62152A;
	Thu, 21 Jan 2021 14:30:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1AC541BF363
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jan 2021 14:30:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1625F8629B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jan 2021 14:30:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dNrcFVeZ17w2 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Jan 2021 14:30:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 60D3384A43
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jan 2021 14:30:22 +0000 (UTC)
IronPort-SDR: 8l5nm9I99SJBgoDBQTXkbhNc0o1MxeDrx1XEGcnybKkiaz3YYV4iadzABd2qzmhJRK1fCgE/gj
 O1JehXFxsaUw==
X-IronPort-AV: E=McAfee;i="6000,8403,9870"; a="159054455"
X-IronPort-AV: E=Sophos;i="5.79,364,1602572400"; d="scan'208";a="159054455"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 06:30:20 -0800
IronPort-SDR: d0z43vC951TiZlnf6k13hbAiE+vLb/NXwIWT0fGS8KdWqmjvne/NSamiRRsL9RgjbR0cxGny8V
 DIhmXHEO40EQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,364,1602572400"; d="scan'208";a="574237744"
Received: from lkp-server01.sh.intel.com (HELO 260eafd5ecd0) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 21 Jan 2021 06:30:19 -0800
Received: from kbuild by 260eafd5ecd0 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1l2ayY-0006Z0-Nn; Thu, 21 Jan 2021 14:30:18 +0000
Date: Thu, 21 Jan 2021 22:29:47 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <60098fdb.cJyQ8Rpv+jmOq1hv%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 4dda12058f1f2f770db826de50be74c68bc113cc
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 4dda12058f1f2f770db826de50be74c68bc113cc  ice: Fix MSI-X vector fallback logic

elapsed time: 725m

configs tested: 154
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arc                          axs101_defconfig
sh                   sh7770_generic_defconfig
c6x                              alldefconfig
arm                       aspeed_g4_defconfig
mips                         bigsur_defconfig
sh                               j2_defconfig
mips                        bcm47xx_defconfig
arm                       multi_v4t_defconfig
arm                     davinci_all_defconfig
mips                        omega2p_defconfig
sh                        dreamcast_defconfig
powerpc                     ppa8548_defconfig
sh                           se7780_defconfig
arm                       aspeed_g5_defconfig
powerpc                       holly_defconfig
powerpc                 mpc836x_mds_defconfig
sh                 kfr2r09-romimage_defconfig
mips                    maltaup_xpa_defconfig
arc                           tb10x_defconfig
powerpc                         wii_defconfig
mips                        vocore2_defconfig
arm                          moxart_defconfig
powerpc                      acadia_defconfig
powerpc                       eiger_defconfig
arm                          pxa910_defconfig
m68k                        stmark2_defconfig
arm                        multi_v7_defconfig
sh                      rts7751r2d1_defconfig
nios2                         3c120_defconfig
m68k                            q40_defconfig
powerpc                      cm5200_defconfig
mips                            e55_defconfig
arm                    vt8500_v6_v7_defconfig
arm                         cm_x300_defconfig
arm                             pxa_defconfig
powerpc                    amigaone_defconfig
openrisc                            defconfig
powerpc                 mpc832x_mds_defconfig
arm                       imx_v4_v5_defconfig
mips                malta_qemu_32r6_defconfig
arm                        clps711x_defconfig
mips                      malta_kvm_defconfig
m68k                        mvme16x_defconfig
mips                       lemote2f_defconfig
arm                          pcm027_defconfig
arc                        nsim_700_defconfig
m68k                           sun3_defconfig
sh                  sh7785lcr_32bit_defconfig
mips                   sb1250_swarm_defconfig
sh                   secureedge5410_defconfig
sparc                       sparc64_defconfig
sh                        sh7757lcr_defconfig
mips                           ip27_defconfig
arm                       spear13xx_defconfig
m68k                          multi_defconfig
xtensa                  nommu_kc705_defconfig
powerpc                 mpc834x_itx_defconfig
mips                            ar7_defconfig
ia64                        generic_defconfig
mips                        jmr3927_defconfig
c6x                         dsk6455_defconfig
powerpc                     pseries_defconfig
mips                           rs90_defconfig
mips                       bmips_be_defconfig
sh                        edosk7705_defconfig
xtensa                         virt_defconfig
i386                             alldefconfig
powerpc                  storcenter_defconfig
arm                           sunxi_defconfig
sh                          rsk7264_defconfig
powerpc                      pasemi_defconfig
sh                          kfr2r09_defconfig
powerpc                    socrates_defconfig
sh                          r7785rp_defconfig
powerpc                      arches_defconfig
powerpc                       ppc64_defconfig
mips                      pistachio_defconfig
powerpc                 mpc837x_mds_defconfig
arm                        oxnas_v6_defconfig
mips                           gcw0_defconfig
xtensa                generic_kc705_defconfig
sh                        sh7763rdp_defconfig
powerpc                      ppc6xx_defconfig
mips                           ip22_defconfig
ia64                                defconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
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
x86_64               randconfig-a002-20210121
x86_64               randconfig-a003-20210121
x86_64               randconfig-a001-20210121
x86_64               randconfig-a005-20210121
x86_64               randconfig-a006-20210121
x86_64               randconfig-a004-20210121
i386                 randconfig-a001-20210121
i386                 randconfig-a002-20210121
i386                 randconfig-a004-20210121
i386                 randconfig-a006-20210121
i386                 randconfig-a005-20210121
i386                 randconfig-a003-20210121
i386                 randconfig-a013-20210121
i386                 randconfig-a011-20210121
i386                 randconfig-a012-20210121
i386                 randconfig-a014-20210121
i386                 randconfig-a015-20210121
i386                 randconfig-a016-20210121
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

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
