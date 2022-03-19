Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CCC24DE733
	for <lists+intel-wired-lan@lfdr.de>; Sat, 19 Mar 2022 10:18:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8AD03828DD;
	Sat, 19 Mar 2022 09:18:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NgtaD0dW0cyg; Sat, 19 Mar 2022 09:18:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5F95F828B3;
	Sat, 19 Mar 2022 09:18:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E5AA41BF842
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Mar 2022 09:18:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D2E58828B3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Mar 2022 09:18:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bF-uWeTOpLLj for <intel-wired-lan@lists.osuosl.org>;
 Sat, 19 Mar 2022 09:18:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D867E82897
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Mar 2022 09:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647681496; x=1679217496;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=FGXBB7FJAOnP7tTSWNq/Q07mvpPJVYuNTqARPG/HFd0=;
 b=N4ieHf1CWOE7RFebElCSgs89KsIJ9GmKcgHbVUiz7rCwlb6B3DiocyD2
 APmkz3CKwXI1BaS1bEeQ3RyORHzD+9sqcWSMqmOvnculSa+tBiqmwpAxS
 8fTvxkq+ovg2+GENr8MV1pP9oI6YLRGzZqyrvoLeXX319HjOtlRP+GO7m
 ZFLEkCB/6YHmOtiXPRVCiTGmFzYHjYID/VYRBdLlvnx2Wrlz1X1Cpow2z
 pByPUpyUqVf2qIjxK4w7uQZ179uwUtTVMLUqLo+2275FU/9Lksm+L+wR3
 zOv1F7p5vKztXflSRrR4jts8GZxtBEljD9dMuJsu1rQGg7okOPni6GTbD Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10290"; a="254857486"
X-IronPort-AV: E=Sophos;i="5.90,194,1643702400"; d="scan'208";a="254857486"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2022 02:18:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,194,1643702400"; d="scan'208";a="691610496"
Received: from lkp-server02.sh.intel.com (HELO 89b41b6ae01c) ([10.239.97.151])
 by fmsmga001.fm.intel.com with ESMTP; 19 Mar 2022 02:18:15 -0700
Received: from kbuild by 89b41b6ae01c with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nVVDy-000FpD-O1; Sat, 19 Mar 2022 09:18:14 +0000
Date: Sat, 19 Mar 2022 17:18:04 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62359fcc.SAau5eJbEkCazQwL%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 0a141bb0370881648cbf24794f83df1f9adca472
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
branch HEAD: 0a141bb0370881648cbf24794f83df1f9adca472  ice: Add mpls+tso support

elapsed time: 720m

configs tested: 135
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                          randconfig-c001
arm64                            alldefconfig
arm                            xcep_defconfig
riscv             nommu_k210_sdcard_defconfig
csky                             alldefconfig
arm                        mini2440_defconfig
arm                        mvebu_v7_defconfig
arm                        multi_v7_defconfig
mips                         rt305x_defconfig
ia64                        generic_defconfig
arm                        keystone_defconfig
xtensa                           alldefconfig
arm                          lpd270_defconfig
parisc                           allyesconfig
mips                     decstation_defconfig
arm                      footbridge_defconfig
sh                              ul2_defconfig
m68k                             allyesconfig
arc                                 defconfig
m68k                        m5307c3_defconfig
mips                         mpc30x_defconfig
m68k                           sun3_defconfig
sh                        edosk7705_defconfig
powerpc                   motionpro_defconfig
arc                 nsimosci_hs_smp_defconfig
sh                           sh2007_defconfig
powerpc                        cell_defconfig
ia64                             alldefconfig
arm                           corgi_defconfig
ia64                          tiger_defconfig
powerpc                  storcenter_defconfig
m68k                       m5208evb_defconfig
m68k                       m5249evb_defconfig
arc                           tb10x_defconfig
powerpc64                        alldefconfig
alpha                            alldefconfig
arm                             rpc_defconfig
mips                       capcella_defconfig
sh                             espt_defconfig
sh                           se7619_defconfig
arm                        trizeps4_defconfig
powerpc                       maple_defconfig
alpha                               defconfig
mips                      maltasmvp_defconfig
powerpc                 mpc8540_ads_defconfig
sh                           se7705_defconfig
openrisc                         alldefconfig
sh                          sdk7780_defconfig
powerpc                      bamboo_defconfig
arm                         lubbock_defconfig
arm                  randconfig-c002-20220318
arm                  randconfig-c002-20220317
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc64                            defconfig
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
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
arc                  randconfig-r043-20220318
arc                  randconfig-r043-20220317
s390                 randconfig-r044-20220317
riscv                randconfig-r042-20220317
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
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                                  kexec

clang tested configs:
arm                  randconfig-c002-20220318
x86_64                        randconfig-c007
powerpc              randconfig-c003-20220318
riscv                randconfig-c006-20220318
mips                 randconfig-c004-20220318
i386                          randconfig-c001
arm                  randconfig-c002-20220317
riscv                randconfig-c006-20220317
powerpc              randconfig-c003-20220317
mips                 randconfig-c004-20220317
powerpc                     tqm5200_defconfig
powerpc                        icon_defconfig
i386                             allyesconfig
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r045-20220318
hexagon              randconfig-r045-20220317
hexagon              randconfig-r041-20220318
riscv                randconfig-r042-20220318
hexagon              randconfig-r041-20220317
s390                 randconfig-r044-20220318

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
