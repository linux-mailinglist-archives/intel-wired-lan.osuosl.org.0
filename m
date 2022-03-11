Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 872824D64A5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Mar 2022 16:31:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 02FF4416C1;
	Fri, 11 Mar 2022 15:31:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZuJ40HfF9pIS; Fri, 11 Mar 2022 15:31:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F0657416BA;
	Fri, 11 Mar 2022 15:31:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7B6B71BF3DA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Mar 2022 15:31:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 66EC783E8E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Mar 2022 15:31:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bdwqIQKUPXEo for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Mar 2022 15:31:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 75E7183026
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Mar 2022 15:31:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647012678; x=1678548678;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=t8JUGoZyznV+oa8bpghB7GdIdy1LLBcAr/q0clyRAY0=;
 b=UQrf1pbjPVcuVd0+/RJPrQ69QaTw5Ra7Mu8bQOB6mRu9MeImy36Y7CtZ
 4LAfRNNfHS+LeRR+GvQCWGfSwtvFmQWMEEpYOlikn3RJWaxsqcRZL06ug
 JFfNMAOHGOZs+O0FKPaflOcDgPdh8E8r0nmjRC1TfrmxC+0C1zulEoJmK
 0mYVskpW9wq6eaQFH9CiW9QHtXA+kot5xWEAttVsbDjwfWj/8rOICmDEw
 UUeoGCKphtgBAz28hIkLqkni3k/snkp54nahVd0FH8jm4Mf/WhAtbdepp
 Je98l8hxaW/Bjod+GPiJbWGbSDeu2b0JXsN8sSTNRdNQbR3H4LWAbtabo w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10282"; a="237764471"
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400"; d="scan'208";a="237764471"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2022 07:31:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400"; d="scan'208";a="514533910"
Received: from lkp-server02.sh.intel.com (HELO 89b41b6ae01c) ([10.239.97.151])
 by orsmga006.jf.intel.com with ESMTP; 11 Mar 2022 07:31:16 -0800
Received: from kbuild by 89b41b6ae01c with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nShEZ-0006cX-NG; Fri, 11 Mar 2022 15:31:15 +0000
Date: Fri, 11 Mar 2022 23:31:10 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <622b6b3e.UdY/+xjtmgPVBv88%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 d3a9b035f91582aaa43ace9c334c9b0f9ef77325
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
branch HEAD: d3a9b035f91582aaa43ace9c334c9b0f9ef77325  igc: Fix BUG: scheduling while atomic

elapsed time: 742m

configs tested: 129
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
nios2                         3c120_defconfig
sparc                            allyesconfig
arm                            lart_defconfig
sh                            titan_defconfig
sh                            shmin_defconfig
m68k                          multi_defconfig
arm                         cm_x300_defconfig
arm                     eseries_pxa_defconfig
sh                   sh7770_generic_defconfig
powerpc                     tqm8548_defconfig
mips                  maltasmvp_eva_defconfig
sh                             sh03_defconfig
powerpc                     ep8248e_defconfig
xtensa                          iss_defconfig
openrisc                  or1klitex_defconfig
sh                          sdk7780_defconfig
arm                             rpc_defconfig
arm                      jornada720_defconfig
powerpc                 mpc8540_ads_defconfig
xtensa                       common_defconfig
sh                           se7750_defconfig
arm                        shmobile_defconfig
arc                    vdk_hs38_smp_defconfig
arm                          badge4_defconfig
sh                           se7206_defconfig
arc                          axs103_defconfig
arm                          pxa3xx_defconfig
openrisc                         alldefconfig
powerpc                       holly_defconfig
powerpc                 mpc837x_mds_defconfig
arm                         s3c6400_defconfig
arm                        keystone_defconfig
h8300                    h8300h-sim_defconfig
arm                  randconfig-c002-20220310
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
parisc64                            defconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
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
i386                          randconfig-a003
i386                          randconfig-a001
i386                          randconfig-a005
arc                  randconfig-r043-20220310
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
arm                  randconfig-c002-20220310
x86_64                        randconfig-c007
powerpc              randconfig-c003-20220310
riscv                randconfig-c006-20220310
mips                 randconfig-c004-20220310
i386                          randconfig-c001
powerpc                     tqm8540_defconfig
mips                       lemote2f_defconfig
mips                     cu1830-neo_defconfig
arm                          ixp4xx_defconfig
powerpc                 mpc8315_rdb_defconfig
arm                    vt8500_v6_v7_defconfig
hexagon                          alldefconfig
arm                         orion5x_defconfig
powerpc                     ppa8548_defconfig
arm                     davinci_all_defconfig
mips                           mtx1_defconfig
arm                          collie_defconfig
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
hexagon              randconfig-r045-20220310
hexagon              randconfig-r041-20220310
riscv                randconfig-r042-20220310
s390                 randconfig-r044-20220310

---
0-DAY CI Kernel Test Service
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
