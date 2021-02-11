Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 557B3318848
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Feb 2021 11:36:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 982EB8756F;
	Thu, 11 Feb 2021 10:36:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5qc-GP5mlb4A; Thu, 11 Feb 2021 10:36:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BEBF88756D;
	Thu, 11 Feb 2021 10:36:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B5F491BF4D5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Feb 2021 10:36:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B143B8354A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Feb 2021 10:36:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j7MmPxw3-hqh for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Feb 2021 10:36:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C6AD6834F0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Feb 2021 10:36:13 +0000 (UTC)
IronPort-SDR: KhOPUKOc8z9vcJS8FFwb0J0vwVewiFF/5gQgKrcVy6eWu6wSzQSkYmbAYzYSkOc3Irlu9k/cbk
 rQYOKEt7RVww==
X-IronPort-AV: E=McAfee;i="6000,8403,9891"; a="243712739"
X-IronPort-AV: E=Sophos;i="5.81,170,1610438400"; d="scan'208";a="243712739"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2021 02:36:09 -0800
IronPort-SDR: OLd41YfIPHrEE/y+tWN34vykprTUqAWbOhzyaeV1DvmHC6UXV3jV5vegIl7ui0/Lo2PTUknXP4
 SGzXb3V47rTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,170,1610438400"; d="scan'208";a="437072703"
Received: from lkp-server02.sh.intel.com (HELO cd560a204411) ([10.239.97.151])
 by orsmga001.jf.intel.com with ESMTP; 11 Feb 2021 02:36:07 -0800
Received: from kbuild by cd560a204411 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lA9KQ-0003hU-RS; Thu, 11 Feb 2021 10:36:06 +0000
Date: Thu, 11 Feb 2021 18:35:43 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6025087f.jlSvPcme0J5zbeFy%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 1a7c9d6706327d616b023efabdc333ee5df57976
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
branch HEAD: 1a7c9d6706327d616b023efabdc333ee5df57976  ice: fix napi work done reporting in xsk path

elapsed time: 727m

configs tested: 150
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                           sama5_defconfig
m68k                        mvme147_defconfig
arm                          badge4_defconfig
sh                        dreamcast_defconfig
openrisc                         alldefconfig
arm                         bcm2835_defconfig
powerpc                    klondike_defconfig
c6x                         dsk6455_defconfig
mips                          malta_defconfig
powerpc                        cell_defconfig
m68k                       m5249evb_defconfig
powerpc                     sbc8548_defconfig
sh                            shmin_defconfig
arm                          pxa168_defconfig
openrisc                  or1klitex_defconfig
powerpc                      obs600_defconfig
powerpc                mpc7448_hpc2_defconfig
arc                     haps_hs_smp_defconfig
mips                         bigsur_defconfig
arc                        nsimosci_defconfig
mips                      maltaaprp_defconfig
arc                          axs103_defconfig
powerpc               mpc834x_itxgp_defconfig
powerpc64                           defconfig
mips                           xway_defconfig
mips                            e55_defconfig
sh                  sh7785lcr_32bit_defconfig
mips                        nlm_xlp_defconfig
xtensa                         virt_defconfig
arm                        magician_defconfig
mips                           ip32_defconfig
powerpc                     tqm8540_defconfig
sh                          kfr2r09_defconfig
nios2                         10m50_defconfig
mips                 decstation_r4k_defconfig
powerpc                  mpc885_ads_defconfig
arc                         haps_hs_defconfig
arm                          prima2_defconfig
powerpc                          g5_defconfig
arm                          gemini_defconfig
powerpc                     taishan_defconfig
mips                         tb0287_defconfig
powerpc                    socrates_defconfig
mips                            ar7_defconfig
powerpc                     tqm8555_defconfig
powerpc                          allmodconfig
powerpc                         ps3_defconfig
powerpc                      walnut_defconfig
powerpc                    mvme5100_defconfig
sh                         microdev_defconfig
mips                     loongson1c_defconfig
powerpc                 xes_mpc85xx_defconfig
m68k                        m5407c3_defconfig
sh                         apsh4a3a_defconfig
powerpc                     ep8248e_defconfig
mips                        omega2p_defconfig
powerpc                          allyesconfig
nios2                            alldefconfig
mips                           ip27_defconfig
powerpc                      katmai_defconfig
arm                           tegra_defconfig
xtensa                       common_defconfig
riscv                            alldefconfig
arm                        vexpress_defconfig
m68k                            mac_defconfig
m68k                             alldefconfig
m68k                         apollo_defconfig
m68k                       bvme6000_defconfig
mips                           ci20_defconfig
m68k                                defconfig
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
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                               tinyconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a006-20210209
x86_64               randconfig-a001-20210209
x86_64               randconfig-a005-20210209
x86_64               randconfig-a004-20210209
x86_64               randconfig-a002-20210209
x86_64               randconfig-a003-20210209
i386                 randconfig-a001-20210209
i386                 randconfig-a005-20210209
i386                 randconfig-a003-20210209
i386                 randconfig-a002-20210209
i386                 randconfig-a006-20210209
i386                 randconfig-a004-20210209
x86_64               randconfig-a016-20210211
x86_64               randconfig-a013-20210211
x86_64               randconfig-a012-20210211
x86_64               randconfig-a015-20210211
x86_64               randconfig-a014-20210211
x86_64               randconfig-a011-20210211
i386                 randconfig-a016-20210209
i386                 randconfig-a013-20210209
i386                 randconfig-a012-20210209
i386                 randconfig-a014-20210209
i386                 randconfig-a011-20210209
i386                 randconfig-a015-20210209
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
x86_64               randconfig-a013-20210209
x86_64               randconfig-a014-20210209
x86_64               randconfig-a015-20210209
x86_64               randconfig-a012-20210209
x86_64               randconfig-a016-20210209
x86_64               randconfig-a011-20210209

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
