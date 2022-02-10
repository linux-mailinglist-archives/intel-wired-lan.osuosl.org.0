Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D15574B116A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Feb 2022 16:13:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 56E4F40A92;
	Thu, 10 Feb 2022 15:13:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hJo1BRR2s_Ro; Thu, 10 Feb 2022 15:13:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4260740A83;
	Thu, 10 Feb 2022 15:13:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DE3251BF3DB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Feb 2022 15:13:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C666582CF1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Feb 2022 15:13:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OVTQirVGTnuN for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Feb 2022 15:13:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B784B82D07
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Feb 2022 15:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644506002; x=1676042002;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=zIiDb0qMxpkP5dvJ9mMscR82n5c3jF4Avam5PL9lbEg=;
 b=faS+r9HVg6avsO+VCPY6TKgkIXX8lWJAeZCPkZTzbSav6U6mBg8NVPpU
 9hyKedag4yIcYLKr0C5NaHVLSsLXhwDIbvajUqh063SVPn64YGRbOE6d8
 Cq4M3yPmegpP8U07hTodKdMFNFrltZCgGqp9bOSg6RTiSs0digtMOvrq2
 h4v3r7hiYjFc+802l5f33FSYNVV1lc04Qesz3kZUTEdpiX53VnFAXzXQf
 b9VzBxTPh6Y2MvBGT4oVM6QVQGOIGY8TXAbnSSWaL8q61K+Q6HIw1vrXw
 1YPA0Eoe06/4xI6hSCKZkwPfQB2XJJPyTNzMIkR8I/8fOyuA+G4PHcHen g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10254"; a="229477846"
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="229477846"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 07:12:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="633692896"
Received: from lkp-server01.sh.intel.com (HELO d95dc2dabeb1) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 10 Feb 2022 07:12:55 -0800
Received: from kbuild by d95dc2dabeb1 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nIB7u-0003OV-Ht; Thu, 10 Feb 2022 15:12:54 +0000
Date: Thu, 10 Feb 2022 23:12:46 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62052b6e.OOCrtwXh+9tt2ntK%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 f44ab3c99a0ec7a0654ad0e3951bf07f4bff9a61
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
branch HEAD: f44ab3c99a0ec7a0654ad0e3951bf07f4bff9a61  ice: Add support for outer dest MAC for ADQ tunnels

possible Warning in current branch (please contact us if interested):

include/net/gro.h:58:1: sparse: sparse: directive in macro's argument list
net/ipv6/addrconf.c:4303 if6_get_next() warn: ignoring unreachable code.

Warning ids grouped by kconfigs:

gcc_recent_errors
|-- arm64-randconfig-s032-20220208
|   `-- include-net-gro.h:sparse:sparse:directive-in-macro-s-argument-list
|-- i386-randconfig-m021
|   `-- net-ipv6-addrconf.c-if6_get_next()-warn:ignoring-unreachable-code.
|-- ia64-randconfig-s031-20220210
|   `-- include-net-gro.h:sparse:sparse:directive-in-macro-s-argument-list
`-- x86_64-randconfig-m001
    `-- net-ipv6-addrconf.c-if6_get_next()-warn:ignoring-unreachable-code.

elapsed time: 722m

configs tested: 141
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
powerpc                     redwood_defconfig
arm                            mps2_defconfig
arm                           sunxi_defconfig
arm                      jornada720_defconfig
s390                          debug_defconfig
sh                          sdk7780_defconfig
sh                        edosk7760_defconfig
arm                        mvebu_v7_defconfig
arm                         vf610m4_defconfig
h8300                               defconfig
sh                          r7780mp_defconfig
arm                         assabet_defconfig
sh                            shmin_defconfig
sh                              ul2_defconfig
m68k                            q40_defconfig
powerpc                        warp_defconfig
s390                                defconfig
powerpc                    adder875_defconfig
mips                     decstation_defconfig
powerpc64                           defconfig
m68k                        mvme16x_defconfig
powerpc                    klondike_defconfig
powerpc                       ppc64_defconfig
arc                              alldefconfig
um                                  defconfig
mips                         bigsur_defconfig
arc                           tb10x_defconfig
arc                     nsimosci_hs_defconfig
powerpc                 mpc85xx_cds_defconfig
arm                         lpc18xx_defconfig
arm                       aspeed_g5_defconfig
openrisc                            defconfig
sh                           se7721_defconfig
powerpc                 mpc837x_rdb_defconfig
arm                  randconfig-c002-20220210
arm                  randconfig-c002-20220209
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
i386                          randconfig-a003
i386                          randconfig-a001
i386                          randconfig-a005
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
s390                 randconfig-r044-20220209
arc                  randconfig-r043-20220209
riscv                randconfig-r042-20220210
riscv                randconfig-r042-20220209
arc                  randconfig-r043-20220210
s390                 randconfig-r044-20220210
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
x86_64                                  kexec

clang tested configs:
riscv                randconfig-c006-20220209
riscv                randconfig-c006-20220210
x86_64                        randconfig-c007
powerpc              randconfig-c003-20220209
powerpc              randconfig-c003-20220210
arm                  randconfig-c002-20220210
i386                          randconfig-c001
mips                 randconfig-c004-20220209
mips                 randconfig-c004-20220210
arm                  randconfig-c002-20220209
powerpc                      ppc44x_defconfig
powerpc                  mpc885_ads_defconfig
mips                         tb0287_defconfig
powerpc                      ppc64e_defconfig
arm                          collie_defconfig
arm                         s3c2410_defconfig
arm                              alldefconfig
powerpc                     mpc5200_defconfig
powerpc                     akebono_defconfig
mips                          ath79_defconfig
powerpc                   microwatt_defconfig
riscv                             allnoconfig
powerpc                     mpc512x_defconfig
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r045-20220210
hexagon              randconfig-r045-20220208
hexagon              randconfig-r041-20220210
hexagon              randconfig-r041-20220208
riscv                randconfig-r042-20220208
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
