Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E4DB72136
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jul 2019 23:02:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4520D20504;
	Tue, 23 Jul 2019 21:02:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6TGOA20F4+Hi; Tue, 23 Jul 2019 21:02:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E753420459;
	Tue, 23 Jul 2019 21:01:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 132511BF29E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 21:01:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0C70586CAC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 21:01:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1rOb0Ryu1xUp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jul 2019 21:01:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C0C9286BE2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 21:01:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jul 2019 14:01:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,300,1559545200"; d="scan'208";a="368564486"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 23 Jul 2019 14:01:50 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hq1ux-0008Lo-5k; Wed, 24 Jul 2019 05:01:51 +0800
Date: Wed, 24 Jul 2019 05:00:56 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5d377588.g4yAMsV8NFmfkiBN%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue] BUILD SUCCESS
 72161eca746339b558cafc0e3db3cfeb8d66ea12
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

tree/branch: https://kernel.googlesource.com/pub/scm/linux/kernel/git/jkirsher/next-queue.git  dev-queue
branch HEAD: 72161eca746339b558cafc0e3db3cfeb8d66ea12  igb: Use dev_get_drvdata where possible

elapsed time: 290m

configs tested: 208

The following configs have been built successfully.
More configs may be tested in the coming days.

powerpc                             defconfig
powerpc                       ppc64_defconfig
powerpc                           allnoconfig
x86_64                              defconfig
i386                             allyesconfig
riscv                             allnoconfig
riscv                               defconfig
nds32                               defconfig
alpha                               defconfig
nds32                             allnoconfig
x86_64                 randconfig-h001-201929
x86_64                 randconfig-h002-201929
x86_64                 randconfig-h003-201929
x86_64                 randconfig-h004-201929
i386                   randconfig-h001-201929
i386                   randconfig-h002-201929
i386                   randconfig-h003-201929
i386                   randconfig-h004-201929
sh                               allmodconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                             defconfig
i386                              allnoconfig
i386                                defconfig
i386                             alldefconfig
riscv                              tinyconfig
i386                               tinyconfig
h8300                     edosk2674_defconfig
h8300                    h8300h-sim_defconfig
h8300                       h8s-sim_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
arm                              allmodconfig
arm                         at91_dt_defconfig
arm64                               defconfig
arm                        multi_v5_defconfig
arm64                            allyesconfig
arm                               allnoconfig
arm                           efm32_defconfig
arm                           sunxi_defconfig
arm64                             allnoconfig
arm64                            allmodconfig
arm                          exynos_defconfig
arm                        shmobile_defconfig
arm                        multi_v7_defconfig
parisc                            allnoconfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
c6x                              allyesconfig
c6x                        evmc6678_defconfig
nios2                         10m50_defconfig
nios2                         3c120_defconfig
openrisc                    or1ksim_defconfig
openrisc                 simple_smp_defconfig
mips                             allmodconfig
mips                      malta_kvm_defconfig
mips                              allnoconfig
mips                      fuloong2e_defconfig
x86_64                 randconfig-c001-201929
x86_64                 randconfig-c002-201929
x86_64                 randconfig-c003-201929
x86_64                 randconfig-c004-201929
i386                   randconfig-c001-201929
i386                   randconfig-c002-201929
i386                   randconfig-c003-201929
i386                   randconfig-c004-201929
um                                  defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                 randconfig-b001-201929
x86_64                 randconfig-b002-201929
x86_64                 randconfig-b003-201929
x86_64                 randconfig-b004-201929
i386                   randconfig-b001-201929
i386                   randconfig-b002-201929
i386                   randconfig-b003-201929
i386                   randconfig-b004-201929
x86_64                 randconfig-f001-201929
x86_64                 randconfig-f002-201929
x86_64                 randconfig-f003-201929
x86_64                 randconfig-f004-201929
i386                   randconfig-f001-201929
i386                   randconfig-f002-201929
i386                   randconfig-f003-201929
i386                   randconfig-f004-201929
arc                              allyesconfig
microblaze                    nommu_defconfig
microblaze                      mmu_defconfig
arc                                 defconfig
s390                             allmodconfig
s390                              allnoconfig
s390                          debug_defconfig
s390                                defconfig
x86_64                           allyesconfig
i386                             allmodconfig
x86_64                                    lkp
x86_64                                   rhel
x86_64                               rhel-7.6
x86_64                              fedora-25
x86_64                                  kexec
x86_64                             acpi-redef
x86_64                           allyesdebian
x86_64                                nfsroot
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                                   jz4740
mips                                     txx9
x86_64                 randconfig-e001-201929
x86_64                 randconfig-e002-201929
x86_64                 randconfig-e003-201929
x86_64                 randconfig-e004-201929
i386                   randconfig-e001-201929
i386                   randconfig-e002-201929
i386                   randconfig-e003-201929
i386                   randconfig-e004-201929
x86_64                           allmodconfig
arm                         mv78xx0_defconfig
powerpc64                        allyesconfig
arm                         lpc32xx_defconfig
xtensa                         virt_defconfig
mips                 pnx8335_stb225_defconfig
sh                        sh7757lcr_defconfig
powerpc                    mvme5100_defconfig
arc                              alldefconfig
arm                          iop33x_defconfig
arm                              alldefconfig
arm                              allyesconfig
arm                         cm_x300_defconfig
c6x                        evmc6474_defconfig
powerpc                 mpc85xx_cds_defconfig
powerpc                    gamecube_defconfig
powerpc                     tqm8555_defconfig
ia64                          tiger_defconfig
powerpc                  mpc866_ads_defconfig
arm                      pxa255-idp_defconfig
powerpc                          g5_defconfig
mips                     loongson1b_defconfig
openrisc                         allyesconfig
m68k                         amcore_defconfig
sh                               allyesconfig
powerpc                      ppc40x_defconfig
sparc                            alldefconfig
sparc                       sparc64_defconfig
mips                      loongson3_defconfig
parisc                           alldefconfig
ia64                                defconfig
powerpc                     tqm5200_defconfig
s390                             alldefconfig
c6x                               allnoconfig
powerpc               mpc85xx_basic_defconfig
arm                      jornada720_defconfig
alpha                             allnoconfig
m68k                        m5307c3_defconfig
powerpc                      pasemi_defconfig
powerpc                      ppc6xx_defconfig
sh                          polaris_defconfig
powerpc                      virtex_defconfig
sh                         microdev_defconfig
arm                                      arm5
arm                                     arm67
arm                       imx_v6_v7_defconfig
arm                          ixp4xx_defconfig
arm                        mvebu_v7_defconfig
arm                       omap2plus_defconfig
arm                                    sa1100
arm                                   samsung
arm                                        sh
arm                           tegra_defconfig
arm64                            alldefconfig
x86_64                 randconfig-s0-07240154
x86_64                 randconfig-s1-07240154
x86_64                 randconfig-s2-07240154
x86_64                 randconfig-s0-07240212
x86_64                 randconfig-s1-07240212
x86_64                 randconfig-s2-07240212
x86_64                 randconfig-s0-07240227
x86_64                 randconfig-s1-07240227
x86_64                 randconfig-s2-07240227
x86_64                 randconfig-s0-07240247
x86_64                 randconfig-s1-07240247
x86_64                 randconfig-s2-07240247
x86_64                 randconfig-s0-07240300
x86_64                 randconfig-s1-07240300
x86_64                 randconfig-s2-07240300
x86_64                 randconfig-s0-07240330
x86_64                 randconfig-s1-07240330
x86_64                 randconfig-s2-07240330
x86_64                 randconfig-s0-07240347
x86_64                 randconfig-s1-07240347
x86_64                 randconfig-s2-07240347
x86_64                 randconfig-s0-07240358
x86_64                 randconfig-s1-07240358
x86_64                 randconfig-s2-07240358
x86_64                 randconfig-s0-07240413
x86_64                 randconfig-s1-07240413
x86_64                 randconfig-s2-07240413
x86_64                 randconfig-s0-07240415
x86_64                 randconfig-s1-07240415
x86_64                 randconfig-s2-07240415
x86_64                 randconfig-s0-07240435
x86_64                 randconfig-s1-07240435
x86_64                 randconfig-s2-07240435

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
