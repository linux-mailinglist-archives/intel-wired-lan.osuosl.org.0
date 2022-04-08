Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 559FD4F9098
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Apr 2022 10:18:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E3E5A60BA8;
	Fri,  8 Apr 2022 08:18:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YbJDp-Z4VbTT; Fri,  8 Apr 2022 08:18:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CA8A960B65;
	Fri,  8 Apr 2022 08:18:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AA1541C1190
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Apr 2022 08:18:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9852284345
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Apr 2022 08:18:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TXprSa3U_jyg for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Apr 2022 08:18:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B2D21842EF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Apr 2022 08:18:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649405890; x=1680941890;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=A0pS+CgvkzXokcRVWYlm5iUgtcw/HUXp9d4/Aj0XrX0=;
 b=EE3nD4PPn2BjgDTg0FiVf9mfxkPLpn/mvkQbOCftVxUoncm1XhFqXOPt
 7qprianhr3R3ENy1hVEv9+sqdedt9rTVl6DdHWGEzIQ3zQVpw/q0d4yHn
 fcmCGu2vsJiJuUFsISmX/0RjJ0g+d9O7IH72hXDxazf0EnKBr2G89NWoy
 Tw5YX+74bTM4E+yjOC428iv1tpoSj/yIKMnILrdkZiy3HCxjj0F6nPr+e
 RgITjDGKqUAEw4a2k8siIRglRbw3H9ZJvA2BwBzvA8XRQl1O+J/c2sc8h
 tWeKVYDsLsYTLbAvM3uy0MmDOkzl8i6kMLZ6/HImvy1M5H5MOlBdOiQoK g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10310"; a="243675177"
X-IronPort-AV: E=Sophos;i="5.90,244,1643702400"; d="scan'208";a="243675177"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2022 01:18:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,244,1643702400"; d="scan'208";a="723309520"
Received: from lkp-server02.sh.intel.com (HELO 7e80bc2a00a0) ([10.239.97.151])
 by orsmga005.jf.intel.com with ESMTP; 08 Apr 2022 01:18:08 -0700
Received: from kbuild by 7e80bc2a00a0 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1ncjom-00003L-8A;
 Fri, 08 Apr 2022 08:18:08 +0000
Date: Fri, 08 Apr 2022 16:17:45 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <624fefa9.xp7l45Ns5+TkeAD4%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 0931ef5f3432e8d2398d4bd9185bcd0e982ffceb
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
branch HEAD: 0931ef5f3432e8d2398d4bd9185bcd0e982ffceb  igc: Fix suspending when PTM is active

elapsed time: 720m

configs tested: 119
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                               defconfig
arm64                            allyesconfig
arm                              allmodconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-c001
arc                        nsimosci_defconfig
m68k                        m5407c3_defconfig
powerpc                    amigaone_defconfig
mips                     loongson1b_defconfig
sh                          kfr2r09_defconfig
powerpc                      ep88xc_defconfig
powerpc                      ppc6xx_defconfig
sh                           se7780_defconfig
sh                           se7722_defconfig
sparc64                          alldefconfig
arm                          pxa910_defconfig
powerpc                    sam440ep_defconfig
arm                     eseries_pxa_defconfig
mips                        bcm47xx_defconfig
powerpc                      bamboo_defconfig
sh                ecovec24-romimage_defconfig
arm                             pxa_defconfig
sparc                               defconfig
powerpc                      pcm030_defconfig
powerpc64                           defconfig
powerpc                       ppc64_defconfig
ia64                        generic_defconfig
arm                       multi_v4t_defconfig
powerpc                         ps3_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220406
arm                  randconfig-c002-20220407
arm                  randconfig-c002-20220408
ia64                                defconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
alpha                               defconfig
csky                                defconfig
nios2                            allyesconfig
alpha                            allyesconfig
nios2                               defconfig
arc                              allyesconfig
h8300                            allyesconfig
xtensa                           allyesconfig
arc                                 defconfig
sh                               allmodconfig
s390                                defconfig
s390                             allmodconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
s390                             allyesconfig
i386                             allyesconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
sparc                            allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
s390                 randconfig-r044-20220406
riscv                randconfig-r042-20220406
arc                  randconfig-r043-20220406
arc                  randconfig-r043-20220407
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
riscv                            allmodconfig
riscv                            allyesconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
x86_64                                  kexec
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3

clang tested configs:
powerpc                      pasemi_defconfig
arm                            mps2_defconfig
arm                     davinci_all_defconfig
powerpc                   microwatt_defconfig
powerpc                    socrates_defconfig
mips                     cu1000-neo_defconfig
powerpc                 mpc8315_rdb_defconfig
powerpc                 mpc836x_mds_defconfig
powerpc                      obs600_defconfig
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
hexagon              randconfig-r041-20220406
s390                 randconfig-r044-20220407
riscv                randconfig-r042-20220407
hexagon              randconfig-r045-20220406
hexagon              randconfig-r041-20220407
hexagon              randconfig-r045-20220407

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
