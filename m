Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1233A4C1110
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Feb 2022 12:12:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6B23540441;
	Wed, 23 Feb 2022 11:12:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XWCLmhg4y_9u; Wed, 23 Feb 2022 11:12:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E7BDF4014B;
	Wed, 23 Feb 2022 11:12:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 929F81BF868
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 11:12:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8CF0B60AF6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 11:12:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rh3WOD7X9gEo for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Feb 2022 11:12:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A218860ACD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 11:12:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645614749; x=1677150749;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=lQRA7YA5zV7l5Tv9uj9QjoBzlnNU/rsvS5iZ8lhn6tU=;
 b=ET6uPF4AYtQGoa+4akGzOMh8A1WeK3h0RKxSNdcimKcXAQa6NzkXDRXK
 3q+8hWWWpV+JDSh7FRZhV5ww9d70e8cMgFhJTGUoYJH0IAkcS2Ph6NItF
 nj2ug7wKtW3bp6xbm9CxGbVS1w6Tmye5aML6/TtSXBDpVK2uDYPMtecbP
 j7KC7Gpqarh4e9pN5wmNEX5cwohPO15oV+5IBUyQBnNmb4ChSfxb5SS1p
 OMnLJ8I5qhtaspLWX2ACgrqJ+lMWSTsLd20smZU423sy5E++p9FUOYTzi
 oLoPsxuxiRj9+v92hRHASHjQr/Aox71z9+ThIYNbeADcctyNyLHrRsRCi w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="250766954"
X-IronPort-AV: E=Sophos;i="5.88,390,1635231600"; d="scan'208";a="250766954"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 03:12:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,390,1635231600"; d="scan'208";a="573781705"
Received: from lkp-server01.sh.intel.com (HELO 788b1cd46f0d) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 23 Feb 2022 03:12:27 -0800
Received: from kbuild by 788b1cd46f0d with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nMpZL-0001Jd-3Q; Wed, 23 Feb 2022 11:12:27 +0000
Date: Wed, 23 Feb 2022 19:11:46 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62161672.zTxr+6t+pvey8c6t%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 f2ab415305741c5df2eb631bc0727b100106547c
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
branch HEAD: f2ab415305741c5df2eb631bc0727b100106547c  ice: Add inline flow director support for channels

possible Warning in current branch (please contact us if interested):

net/ipv6/addrconf.c:4312 if6_get_next() warn: ignoring unreachable code.

Warning ids grouped by kconfigs:

gcc_recent_errors
|-- i386-randconfig-m021-20220221
|   `-- net-ipv6-addrconf.c-if6_get_next()-warn:ignoring-unreachable-code.
`-- x86_64-randconfig-m001-20220221
    `-- net-ipv6-addrconf.c-if6_get_next()-warn:ignoring-unreachable-code.

elapsed time: 880m

configs tested: 133
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                      jornada720_defconfig
powerpc                     tqm8555_defconfig
sh                               j2_defconfig
powerpc                     sequoia_defconfig
ia64                         bigsur_defconfig
h8300                    h8300h-sim_defconfig
powerpc                     pq2fads_defconfig
powerpc                         ps3_defconfig
m68k                        m5307c3_defconfig
mips                         db1xxx_defconfig
sparc                               defconfig
arm                          pxa910_defconfig
arm                          gemini_defconfig
arm                       imx_v6_v7_defconfig
powerpc                       ppc64_defconfig
ia64                            zx1_defconfig
arm                        multi_v7_defconfig
arm                          exynos_defconfig
arm                             ezx_defconfig
arc                     haps_hs_smp_defconfig
arm                           stm32_defconfig
um                                  defconfig
arm                           sunxi_defconfig
powerpc                 mpc837x_rdb_defconfig
powerpc                     redwood_defconfig
alpha                               defconfig
powerpc                      makalu_defconfig
mips                           ci20_defconfig
m68k                       bvme6000_defconfig
powerpc                   currituck_defconfig
arm                  randconfig-c002-20220221
arm                  randconfig-c002-20220222
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
sparc                            allyesconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a003-20220221
x86_64               randconfig-a002-20220221
x86_64               randconfig-a005-20220221
x86_64               randconfig-a006-20220221
x86_64               randconfig-a001-20220221
x86_64               randconfig-a004-20220221
i386                 randconfig-a002-20220221
i386                 randconfig-a003-20220221
i386                 randconfig-a004-20220221
i386                 randconfig-a001-20220221
i386                 randconfig-a005-20220221
i386                 randconfig-a006-20220221
arc                  randconfig-r043-20220221
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
powerpc                      katmai_defconfig
arm                          imote2_defconfig
mips                          ath25_defconfig
mips                malta_qemu_32r6_defconfig
arm                           omap1_defconfig
arm                      pxa255-idp_defconfig
arm                         mv78xx0_defconfig
powerpc                  mpc866_ads_defconfig
arm                         s5pv210_defconfig
mips                       rbtx49xx_defconfig
arm                        multi_v5_defconfig
powerpc               mpc834x_itxgp_defconfig
arm                            dove_defconfig
mips                           ip27_defconfig
mips                          ath79_defconfig
powerpc                     mpc5200_defconfig
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64               randconfig-a011-20220221
x86_64               randconfig-a015-20220221
x86_64               randconfig-a014-20220221
x86_64               randconfig-a016-20220221
x86_64               randconfig-a013-20220221
x86_64               randconfig-a012-20220221
i386                 randconfig-a016-20220221
i386                 randconfig-a012-20220221
i386                 randconfig-a015-20220221
i386                 randconfig-a011-20220221
i386                 randconfig-a014-20220221
i386                 randconfig-a013-20220221
hexagon              randconfig-r045-20220221
hexagon              randconfig-r041-20220221
riscv                randconfig-r042-20220221
s390                 randconfig-r044-20220221

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
