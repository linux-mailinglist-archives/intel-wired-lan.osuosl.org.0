Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C031D3D450C
	for <lists+intel-wired-lan@lfdr.de>; Sat, 24 Jul 2021 07:08:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1840183B2C;
	Sat, 24 Jul 2021 05:08:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7QF4vh0LBqwR; Sat, 24 Jul 2021 05:08:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 03AF783B29;
	Sat, 24 Jul 2021 05:08:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CCBC01BF5A8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 Jul 2021 05:08:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BAC76606BF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 Jul 2021 05:08:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DxzkPsik8kG7 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 24 Jul 2021 05:08:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BEF16606BB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 Jul 2021 05:08:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10054"; a="275806912"
X-IronPort-AV: E=Sophos;i="5.84,265,1620716400"; d="scan'208";a="275806912"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2021 22:08:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,265,1620716400"; d="scan'208";a="663606767"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 23 Jul 2021 22:08:13 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1m79tU-0002xM-PI; Sat, 24 Jul 2021 05:08:12 +0000
Date: Sat, 24 Jul 2021 13:08:07 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <60fba037.A734jVo/g+7WoeAI%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:1GbE] BUILD REGRESSION
 cd74f25b28ce092afb09da734a02912b8bf1ccb1
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 1GbE
branch HEAD: cd74f25b28ce092afb09da734a02912b8bf1ccb1  e100: Avoid memcpy() over-reading of ETH_SS_STATS

possible Error/Warning in current branch:

net/bridge/br_forward.c:51:5: error: 'struct sk_buff' has no member named 'offload_fwd_mark'

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
|-- arc-randconfig-r002-20210723
|   `-- net-bridge-br_forward.c:error:struct-sk_buff-has-no-member-named-offload_fwd_mark
|-- i386-randconfig-a003-20210723
|   `-- net-bridge-br_forward.c:error:struct-sk_buff-has-no-member-named-offload_fwd_mark
|-- i386-randconfig-s001-20210724
|   `-- net-bridge-br_forward.c:error:struct-sk_buff-has-no-member-named-offload_fwd_mark
|-- m68k-defconfig
|   `-- net-bridge-br_forward.c:error:struct-sk_buff-has-no-member-named-offload_fwd_mark
|-- m68k-randconfig-r033-20210723
|   `-- net-bridge-br_forward.c:error:struct-sk_buff-has-no-member-named-offload_fwd_mark
|-- openrisc-buildonly-randconfig-r006-20210723
|   `-- net-bridge-br_forward.c:error:struct-sk_buff-has-no-member-named-offload_fwd_mark
|-- openrisc-randconfig-p001-20210723
|   `-- net-bridge-br_forward.c:error:struct-sk_buff-has-no-member-named-offload_fwd_mark
|-- parisc-randconfig-r001-20210723
|   `-- net-bridge-br_forward.c:error:struct-sk_buff-has-no-member-named-offload_fwd_mark
|-- sh-randconfig-p002-20210723
|   `-- net-bridge-br_forward.c:error:struct-sk_buff-has-no-member-named-offload_fwd_mark
|-- sh-randconfig-r015-20210723
|   `-- net-bridge-br_forward.c:error:struct-sk_buff-has-no-member-named-offload_fwd_mark
`-- x86_64-randconfig-a011-20210723
    `-- net-bridge-br_forward.c:error:struct-sk_buff-has-no-member-named-offload_fwd_mark

elapsed time: 722m

configs tested: 107
configs skipped: 3

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20210723
arc                     haps_hs_smp_defconfig
powerpc                    klondike_defconfig
arm                         vf610m4_defconfig
mips                       rbtx49xx_defconfig
sh                        dreamcast_defconfig
m68k                          sun3x_defconfig
arm                          collie_defconfig
powerpc                      makalu_defconfig
powerpc                     redwood_defconfig
mips                      bmips_stb_defconfig
arc                           tb10x_defconfig
sh                           se7750_defconfig
arm                          moxart_defconfig
powerpc               mpc834x_itxgp_defconfig
sparc64                             defconfig
arc                        nsim_700_defconfig
powerpc                     ppa8548_defconfig
openrisc                  or1klitex_defconfig
sh                          r7785rp_defconfig
h8300                            alldefconfig
powerpc                 mpc85xx_cds_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
x86_64                            allnoconfig
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
i386                 randconfig-a005-20210723
i386                 randconfig-a003-20210723
i386                 randconfig-a004-20210723
i386                 randconfig-a002-20210723
i386                 randconfig-a001-20210723
i386                 randconfig-a006-20210723
i386                 randconfig-a005-20210724
i386                 randconfig-a003-20210724
i386                 randconfig-a004-20210724
i386                 randconfig-a002-20210724
i386                 randconfig-a001-20210724
i386                 randconfig-a006-20210724
x86_64               randconfig-a011-20210723
x86_64               randconfig-a016-20210723
x86_64               randconfig-a013-20210723
x86_64               randconfig-a014-20210723
x86_64               randconfig-a012-20210723
x86_64               randconfig-a015-20210723
i386                 randconfig-a016-20210724
i386                 randconfig-a013-20210724
i386                 randconfig-a012-20210724
i386                 randconfig-a014-20210724
i386                 randconfig-a011-20210724
i386                 randconfig-a015-20210724
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
x86_64               randconfig-c001-20210723
x86_64               randconfig-c001-20210724
x86_64               randconfig-b001-20210723
x86_64               randconfig-a003-20210723
x86_64               randconfig-a006-20210723
x86_64               randconfig-a001-20210723
x86_64               randconfig-a005-20210723
x86_64               randconfig-a004-20210723
x86_64               randconfig-a002-20210723

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
