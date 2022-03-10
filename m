Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 837F04D4E4F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Mar 2022 17:15:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1908F40585;
	Thu, 10 Mar 2022 16:15:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XhMKXxGU9KuE; Thu, 10 Mar 2022 16:15:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9FD3A40533;
	Thu, 10 Mar 2022 16:15:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A07A31BF2F3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Mar 2022 16:15:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9C3FB84746
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Mar 2022 16:15:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P9mkkkcbxDHb for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Mar 2022 16:15:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A399A84741
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Mar 2022 16:15:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646928930; x=1678464930;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=AdorP3H44E2Lhc5qmi4JnFWrTbG6PV3TD04ayDNO15I=;
 b=R9vWIaafIteX8thS4AlU3kH9g1QX9hwQU5MtmGsMLnBfSJBWz9zLToY8
 /jJhEsZCLGtc0YKZxdi/6P/JJ8UDu+oKWg93FOJ3tID7Zn9rLPpaN/p2x
 7t+0j1zc6NvzjboIuLIayqVFSfb1B5o7tqyq5jWOgeMUf1QZz7BcBqrOo
 xTWN523V2dFzAPOACKkbha3/fDQwURDcbLeSVKptt6uRwfxxWdR1cFBei
 L9X0wmv2vmu86TZxEZIm+qp4pFUcejgjBkif/0dl3S5zjTkPjAE6ClO5l
 zojjGso6eoAPa1gWD5z2zZSKldZ2MrRFuMHYYwM84uVXYhHQ5r/1EYDsp w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10282"; a="252856094"
X-IronPort-AV: E=Sophos;i="5.90,171,1643702400"; d="scan'208";a="252856094"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 08:15:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,171,1643702400"; d="scan'208";a="644496681"
Received: from lkp-server02.sh.intel.com (HELO 89b41b6ae01c) ([10.239.97.151])
 by orsmga004.jf.intel.com with ESMTP; 10 Mar 2022 08:15:28 -0800
Received: from kbuild by 89b41b6ae01c with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nSLRo-00058a-5P; Thu, 10 Mar 2022 16:15:28 +0000
Date: Fri, 11 Mar 2022 00:15:06 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <622a240a.1mLRtyudh6zJK1C7%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:master] BUILD REGRESSION
 24055bb87977e0c687b54ebf7bac8715f3636bc3
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
branch HEAD: 24055bb87977e0c687b54ebf7bac8715f3636bc3  net: tcp: fix shim definition of tcp_inbound_md5_hash

Unverified Error/Warning (likely false positive, please contact us if interested):

ld.lld: error: undefined symbol: ptp_clock_index
ld.lld: error: undefined symbol: ptp_clock_register
net/bluetooth/smp.c:1313:3: warning: Null pointer passed as 2nd argument to memory copy function [clang-analyzer-unix.cstring.NullArg]

Error/Warning ids grouped by kconfigs:

clang_recent_errors
|-- hexagon-randconfig-r041-20220308
|   |-- ld.lld:error:undefined-symbol:ptp_clock_index
|   `-- ld.lld:error:undefined-symbol:ptp_clock_register
`-- i386-randconfig-c001
    `-- net-bluetooth-smp.c:warning:Null-pointer-passed-as-2nd-argument-to-memory-copy-function-clang-analyzer-unix.cstring.NullArg

elapsed time: 771m

configs tested: 124
configs skipped: 3

gcc tested configs:
arm                                 defconfig
arm64                               defconfig
arm64                            allyesconfig
arm                              allmodconfig
arm                              allyesconfig
i386                          randconfig-c001
mips                 randconfig-c004-20220310
m68k                          atari_defconfig
alpha                            alldefconfig
sh                 kfr2r09-romimage_defconfig
ia64                      gensparse_defconfig
powerpc                    sam440ep_defconfig
arm                     eseries_pxa_defconfig
powerpc                      makalu_defconfig
powerpc64                           defconfig
sparc64                          alldefconfig
m68k                        stmark2_defconfig
h8300                       h8s-sim_defconfig
mips                            gpr_defconfig
mips                 decstation_r4k_defconfig
sh                      rts7751r2d1_defconfig
sh                          r7785rp_defconfig
mips                         tb0226_defconfig
m68k                        mvme16x_defconfig
arm                           h5000_defconfig
mips                     loongson1b_defconfig
um                               alldefconfig
xtensa                    xip_kc705_defconfig
m68k                                defconfig
sh                     magicpanelr2_defconfig
h8300                               defconfig
riscv                            allmodconfig
csky                                defconfig
powerpc                        warp_defconfig
ia64                         bigsur_defconfig
arm                        oxnas_v6_defconfig
arm                  randconfig-c002-20220310
ia64                             allmodconfig
ia64                             allyesconfig
ia64                                defconfig
m68k                             allmodconfig
m68k                             allyesconfig
nds32                             allnoconfig
nios2                               defconfig
arc                              allyesconfig
alpha                            allyesconfig
alpha                               defconfig
nds32                               defconfig
nios2                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
xtensa                           allyesconfig
h8300                            allyesconfig
parisc                              defconfig
s390                                defconfig
parisc64                            defconfig
s390                             allmodconfig
s390                             allyesconfig
parisc                           allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                             allyesconfig
i386                              debian-10.3
i386                                defconfig
i386                   debian-10.3-kselftests
mips                             allmodconfig
mips                             allyesconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
powerpc                           allnoconfig
i386                          randconfig-a003
i386                          randconfig-a001
i386                          randconfig-a005
x86_64                        randconfig-a002
x86_64                        randconfig-a004
x86_64                        randconfig-a006
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arc                  randconfig-r043-20220310
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                                  kexec

clang tested configs:
arm                          ixp4xx_defconfig
arm                        vexpress_defconfig
arm                          collie_defconfig
arm                            mmp2_defconfig
mips                        bcm63xx_defconfig
arm                          moxart_defconfig
arm                         shannon_defconfig
mips                        maltaup_defconfig
powerpc                     kmeter1_defconfig
arm                      tct_hammer_defconfig
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
x86_64                        randconfig-a014
x86_64                        randconfig-a012
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r045-20220310
riscv                randconfig-r042-20220310
hexagon              randconfig-r041-20220310
s390                 randconfig-r044-20220310

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
