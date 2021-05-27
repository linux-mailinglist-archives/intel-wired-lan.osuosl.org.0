Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 958F2392DCD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 May 2021 14:16:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0BE78608D1;
	Thu, 27 May 2021 12:16:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FKxNfF94XAJ6; Thu, 27 May 2021 12:16:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E17FD608B4;
	Thu, 27 May 2021 12:16:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B96291BF418
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 May 2021 12:16:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B463640288
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 May 2021 12:16:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TlsuC9fM7Jup for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 May 2021 12:16:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6DCA740160
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 May 2021 12:16:30 +0000 (UTC)
IronPort-SDR: mEgyc0YKiV2/Y6Y6DQ1rm9Kw3QOJr9JoYASr8FTHe7BfGDCBHZC9U9BgdUpGmXay0okpMyR00N
 WBA1Ybf4OA3Q==
X-IronPort-AV: E=McAfee;i="6200,9189,9996"; a="190089562"
X-IronPort-AV: E=Sophos;i="5.82,334,1613462400"; d="scan'208";a="190089562"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2021 05:16:27 -0700
IronPort-SDR: alcuhG2KYvp/fySxatDnjpHLoIJnAsol4mNYMYyLG0HQpj+eOozORgoqfx/yWZtmxF/WhI6i5l
 bqxPo/9d2CBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,334,1613462400"; d="scan'208";a="547594556"
Received: from lkp-server02.sh.intel.com (HELO 1ec8406c5392) ([10.239.97.151])
 by orsmga004.jf.intel.com with ESMTP; 27 May 2021 05:16:26 -0700
Received: from kbuild by 1ec8406c5392 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lmEw5-0002km-Up; Thu, 27 May 2021 12:16:25 +0000
Date: Thu, 27 May 2021 20:16:20 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <60af8d94.MDOyQiecfOZORgyP%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:master] BUILD SUCCESS
 c7a551b2e44a65170b5dceaca0afbd59f3715f11
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git master
branch HEAD: c7a551b2e44a65170b5dceaca0afbd59f3715f11  nfc: st-nci: remove unnecessary labels

elapsed time: 953m

configs tested: 165
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
m68k                         amcore_defconfig
mips                        jmr3927_defconfig
powerpc                      ppc44x_defconfig
mips                        nlm_xlp_defconfig
powerpc                  iss476-smp_defconfig
powerpc                    sam440ep_defconfig
sh                        edosk7760_defconfig
arm                          iop32x_defconfig
arm                         lpc32xx_defconfig
arm                          ixp4xx_defconfig
sh                          lboxre2_defconfig
powerpc                       maple_defconfig
sh                          sdk7780_defconfig
mips                      malta_kvm_defconfig
arm                         palmz72_defconfig
mips                       bmips_be_defconfig
arm                           sunxi_defconfig
powerpc                     tqm8560_defconfig
powerpc                     skiroot_defconfig
m68k                        m5307c3_defconfig
sh                           se7712_defconfig
arm                        keystone_defconfig
m68k                       m5475evb_defconfig
m68k                         apollo_defconfig
mips                  maltasmvp_eva_defconfig
arm                      footbridge_defconfig
mips                  decstation_64_defconfig
openrisc                 simple_smp_defconfig
um                               allyesconfig
powerpc                 mpc8313_rdb_defconfig
arc                     nsimosci_hs_defconfig
mips                         tb0287_defconfig
arm64                            alldefconfig
mips                        bcm47xx_defconfig
h8300                               defconfig
sh                     sh7710voipgw_defconfig
mips                           ip22_defconfig
powerpc                    amigaone_defconfig
mips                    maltaup_xpa_defconfig
powerpc                 xes_mpc85xx_defconfig
powerpc                       ebony_defconfig
mips                        vocore2_defconfig
mips                        workpad_defconfig
arm                          moxart_defconfig
mips                          malta_defconfig
powerpc                     pseries_defconfig
powerpc                 mpc834x_mds_defconfig
mips                          rm200_defconfig
riscv                    nommu_virt_defconfig
arm                          ep93xx_defconfig
sh                           se7343_defconfig
ia64                             allyesconfig
powerpc                   lite5200b_defconfig
powerpc                mpc7448_hpc2_defconfig
powerpc                     tqm8548_defconfig
arm                        multi_v5_defconfig
mips                            e55_defconfig
alpha                               defconfig
mips                        omega2p_defconfig
arm                        mini2440_defconfig
arm                          badge4_defconfig
ia64                             alldefconfig
powerpc                 mpc836x_mds_defconfig
arm                      jornada720_defconfig
powerpc                      mgcoge_defconfig
openrisc                            defconfig
mips                     loongson1c_defconfig
m68k                             allmodconfig
nios2                         3c120_defconfig
sh                          kfr2r09_defconfig
arc                      axs103_smp_defconfig
arm                        cerfcube_defconfig
mips                           ci20_defconfig
xtensa                  cadence_csp_defconfig
arm                       omap2plus_defconfig
arc                    vdk_hs38_smp_defconfig
powerpc                     mpc83xx_defconfig
microblaze                          defconfig
arm                            qcom_defconfig
arm                       cns3420vb_defconfig
arc                        nsim_700_defconfig
mips                        nlm_xlr_defconfig
mips                         rt305x_defconfig
arm                        mvebu_v5_defconfig
powerpc                      bamboo_defconfig
sparc64                          alldefconfig
mips                      maltaaprp_defconfig
x86_64                            allnoconfig
ia64                             allmodconfig
ia64                                defconfig
m68k                                defconfig
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
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a005-20210526
x86_64               randconfig-a001-20210526
x86_64               randconfig-a006-20210526
x86_64               randconfig-a003-20210526
x86_64               randconfig-a004-20210526
x86_64               randconfig-a002-20210526
i386                 randconfig-a001-20210526
i386                 randconfig-a002-20210526
i386                 randconfig-a005-20210526
i386                 randconfig-a004-20210526
i386                 randconfig-a003-20210526
i386                 randconfig-a006-20210526
i386                 randconfig-a011-20210526
i386                 randconfig-a016-20210526
i386                 randconfig-a015-20210526
i386                 randconfig-a012-20210526
i386                 randconfig-a014-20210526
i386                 randconfig-a013-20210526
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
um                            kunit_defconfig
um                               allmodconfig
um                                allnoconfig
um                                  defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-b001-20210526
x86_64               randconfig-a013-20210526
x86_64               randconfig-a012-20210526
x86_64               randconfig-a014-20210526
x86_64               randconfig-a016-20210526
x86_64               randconfig-a015-20210526
x86_64               randconfig-a011-20210526

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
