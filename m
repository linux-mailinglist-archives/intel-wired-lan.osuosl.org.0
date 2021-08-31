Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BFD33FC1B5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Aug 2021 05:59:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C933B80CE2;
	Tue, 31 Aug 2021 03:59:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rVoC1tyoDXa9; Tue, 31 Aug 2021 03:59:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E238280CE5;
	Tue, 31 Aug 2021 03:59:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EFFBE1BF2A4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Aug 2021 03:59:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CE2D2402FF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Aug 2021 03:59:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sSEg4eUIi9gX for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Aug 2021 03:59:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B0D98402FE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Aug 2021 03:59:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10092"; a="218404729"
X-IronPort-AV: E=Sophos;i="5.84,365,1620716400"; d="scan'208";a="218404729"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2021 20:58:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,365,1620716400"; d="scan'208";a="540852766"
Received: from lkp-server01.sh.intel.com (HELO 4fbc2b3ce5aa) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 30 Aug 2021 20:58:58 -0700
Received: from kbuild by 4fbc2b3ce5aa with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mKuvJ-0005rG-WD; Tue, 31 Aug 2021 03:58:57 +0000
Date: Tue, 31 Aug 2021 11:58:12 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <612da8d4.1rwuskK8w7DwApU/%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 f3af7110b111b479ea612d726b5c67e70d9d87f5
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
branch HEAD: f3af7110b111b479ea612d726b5c67e70d9d87f5  i40e: Fix issue when maximum queues is exceeded

elapsed time: 723m

configs tested: 111
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
m68k                       m5275evb_defconfig
riscv             nommu_k210_sdcard_defconfig
powerpc                      pmac32_defconfig
um                                  defconfig
arm                          collie_defconfig
mips                            ar7_defconfig
ia64                        generic_defconfig
sparc64                             defconfig
arm                          iop32x_defconfig
arm                        neponset_defconfig
m68k                             alldefconfig
mips                     loongson2k_defconfig
mips                      fuloong2e_defconfig
powerpc                      bamboo_defconfig
arm                         s3c2410_defconfig
arm                           sunxi_defconfig
h8300                       h8s-sim_defconfig
sh                           se7724_defconfig
m68k                        m5407c3_defconfig
sh                         apsh4a3a_defconfig
powerpc                 mpc834x_mds_defconfig
mips                        vocore2_defconfig
ia64                             allmodconfig
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
x86_64               randconfig-a014-20210830
x86_64               randconfig-a015-20210830
x86_64               randconfig-a013-20210830
x86_64               randconfig-a016-20210830
x86_64               randconfig-a012-20210830
x86_64               randconfig-a011-20210830
i386                 randconfig-a016-20210830
i386                 randconfig-a011-20210830
i386                 randconfig-a015-20210830
i386                 randconfig-a014-20210830
i386                 randconfig-a012-20210830
i386                 randconfig-a013-20210830
s390                 randconfig-r044-20210830
arc                  randconfig-r043-20210830
riscv                randconfig-r042-20210830
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
i386                 randconfig-c001-20210830
s390                 randconfig-c005-20210830
riscv                randconfig-c006-20210830
powerpc              randconfig-c003-20210830
mips                 randconfig-c004-20210830
arm                  randconfig-c002-20210830
x86_64               randconfig-c007-20210830
i386                 randconfig-a005-20210830
i386                 randconfig-a002-20210830
i386                 randconfig-a003-20210830
i386                 randconfig-a006-20210830
i386                 randconfig-a004-20210830
i386                 randconfig-a001-20210830
x86_64               randconfig-a005-20210830
x86_64               randconfig-a001-20210830
x86_64               randconfig-a003-20210830
x86_64               randconfig-a002-20210830
x86_64               randconfig-a004-20210830
x86_64               randconfig-a006-20210830
s390                 randconfig-r044-20210831
hexagon              randconfig-r041-20210831
hexagon              randconfig-r045-20210831
riscv                randconfig-r042-20210831

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
