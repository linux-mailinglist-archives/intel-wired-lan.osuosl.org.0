Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 120861D2764
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 May 2020 08:19:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 490D12262E;
	Thu, 14 May 2020 06:19:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GKkGGqJNR5F0; Thu, 14 May 2020 06:19:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D2D822046A;
	Thu, 14 May 2020 06:19:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EA54F1BF2F4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 May 2020 06:19:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D829B875CB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 May 2020 06:19:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g4jyWWwYrZo2 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 May 2020 06:19:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 11B4586C34
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 May 2020 06:19:35 +0000 (UTC)
IronPort-SDR: qjhdh/wCikEpaF+Pn0K2lJHU5VF5XWkuFaU0ZwV6xbFt9Os8hnRDYnvxMGFMUY7ndQzAGMFa/k
 hYHkMLsrlcZg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2020 23:19:34 -0700
IronPort-SDR: pQy11KU2DogMhefTPQq8PBTimNPNUOQYF0A3pOxzBPDVutLF+XIkpk+gl1edpmCbMLur31vWgb
 0d6og18riFyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,390,1583222400"; d="scan'208";a="262735146"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 13 May 2020 23:19:33 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jZ7DQ-00083e-Eu; Thu, 14 May 2020 14:19:32 +0800
Date: Thu, 14 May 2020 14:19:18 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5ebce2e6.tPxkkvAl4d/cSUTE%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue] BUILD SUCCESS
 8b1a0ad63ca921d982996194826d09d56d963150
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git  dev-queue
branch HEAD: 8b1a0ad63ca921d982996194826d09d56d963150  igc: Fix IGC_MAX_RXNFC_RULES

elapsed time: 484m

configs tested: 148
configs skipped: 12

The following configs have been built successfully.
More configs may be tested in the coming days.

arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                               allnoconfig
arm64                            allyesconfig
arm64                               defconfig
arm64                            allmodconfig
arm64                             allnoconfig
sparc                            allyesconfig
m68k                             allyesconfig
h8300                     edosk2674_defconfig
mips                     decstation_defconfig
sh                          rsk7201_defconfig
sh                               alldefconfig
arm                            xcep_defconfig
arm                         lubbock_defconfig
m68k                       m5275evb_defconfig
mips                        bcm63xx_defconfig
sh                          sdk7786_defconfig
arm                            hisi_defconfig
arm                          exynos_defconfig
arm                            mps2_defconfig
mips                           mtx1_defconfig
riscv                    nommu_virt_defconfig
mips                        nlm_xlr_defconfig
arm                         s3c2410_defconfig
powerpc                    adder875_defconfig
mips                 pnx8335_stb225_defconfig
sh                   sh7770_generic_defconfig
arm                            dove_defconfig
mips                 decstation_r4k_defconfig
arm                          moxart_defconfig
sh                               allmodconfig
sh                             espt_defconfig
microblaze                          defconfig
arm                         orion5x_defconfig
mips                      pic32mzda_defconfig
mips                  mips_paravirt_defconfig
riscv                          rv32_defconfig
powerpc                      ppc44x_defconfig
mips                     loongson1b_defconfig
arm                       aspeed_g5_defconfig
sh                            migor_defconfig
arm                         at91_dt_defconfig
sh                           se7724_defconfig
arc                             nps_defconfig
sh                          rsk7203_defconfig
arm                         assabet_defconfig
arm                           h5000_defconfig
m68k                                defconfig
arm                           sama5_defconfig
sh                        sh7785lcr_defconfig
sh                          rsk7264_defconfig
m68k                        m5407c3_defconfig
sh                ecovec24-romimage_defconfig
sh                            titan_defconfig
i386                             allyesconfig
i386                                defconfig
i386                              debian-10.3
i386                              allnoconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                              allnoconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                              allnoconfig
m68k                           sun3_defconfig
nios2                               defconfig
nios2                            allyesconfig
openrisc                            defconfig
c6x                              allyesconfig
c6x                               allnoconfig
openrisc                         allyesconfig
nds32                               defconfig
nds32                             allnoconfig
csky                             allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
h8300                            allmodconfig
xtensa                              defconfig
arc                                 defconfig
arc                              allyesconfig
sh                                allnoconfig
microblaze                        allnoconfig
mips                             allyesconfig
mips                              allnoconfig
mips                             allmodconfig
parisc                            allnoconfig
parisc                              defconfig
parisc                           allyesconfig
parisc                           allmodconfig
powerpc                             defconfig
powerpc                          allyesconfig
powerpc                          rhel-kconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a006-20200513
i386                 randconfig-a005-20200513
i386                 randconfig-a003-20200513
i386                 randconfig-a001-20200513
i386                 randconfig-a004-20200513
i386                 randconfig-a002-20200513
x86_64               randconfig-a005-20200513
x86_64               randconfig-a003-20200513
x86_64               randconfig-a006-20200513
x86_64               randconfig-a004-20200513
x86_64               randconfig-a001-20200513
x86_64               randconfig-a002-20200513
i386                 randconfig-a012-20200513
i386                 randconfig-a016-20200513
i386                 randconfig-a014-20200513
i386                 randconfig-a011-20200513
i386                 randconfig-a013-20200513
i386                 randconfig-a015-20200513
i386                 randconfig-a012-20200514
i386                 randconfig-a016-20200514
i386                 randconfig-a014-20200514
i386                 randconfig-a011-20200514
i386                 randconfig-a013-20200514
i386                 randconfig-a015-20200514
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
s390                             allyesconfig
s390                              allnoconfig
s390                             allmodconfig
s390                                defconfig
x86_64                              defconfig
sparc                               defconfig
sparc64                             defconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                          allmodconfig
um                               allmodconfig
um                                allnoconfig
um                               allyesconfig
um                                  defconfig
x86_64                                   rhel
x86_64                               rhel-7.6
x86_64                    rhel-7.6-kselftests
x86_64                         rhel-7.2-clear
x86_64                                    lkp
x86_64                              fedora-25
x86_64                                  kexec

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
