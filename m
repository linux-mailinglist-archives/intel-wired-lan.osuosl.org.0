Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22DE64CF1B9
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Mar 2022 07:16:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 65E6E4016B;
	Mon,  7 Mar 2022 06:16:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aPX6znsvkMSz; Mon,  7 Mar 2022 06:16:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D55554010C;
	Mon,  7 Mar 2022 06:16:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A71761BF40A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Mar 2022 06:16:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8EE574016B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Mar 2022 06:16:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 14yqZG09yY4u for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Mar 2022 06:16:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C221E400B9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Mar 2022 06:16:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646633799; x=1678169799;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=3yRjNTRsSfB2DynYgFoxc0VtYdb9ogKrGC1yqxiZHk4=;
 b=XC88WKg816yjitNvgsdS3Y1+BoY9a/p0bSc2lMMR6KoFOfZWJfk9O1uI
 pypBLsRYD1YvdWHR/3JDB7ZCd3YbWwPoClkSfQSbAmGD7lJheP35j1kah
 JKHCHIW9NCZkYU8n5JBb73oz1iGTm/owli8ngnW+p5Ivg3X8ki3Ipb5SY
 j5x2hXRHXvjylr0OiuY3QpjdUuPCN/1YVbMiok5KdK7Q8FLp1hUiyMQVo
 vJ4XiiRYh5THtSqhIlSI+4rnOsjbizMpJQFPNmw0eaWxXGX2Vtddy2xtD
 UvGbES0+8DnbJkp5rLDdcCTCh0A6EuYAIm29SBWapAnMx+L3naVT1gMh4 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10278"; a="251886873"
X-IronPort-AV: E=Sophos;i="5.90,161,1643702400"; d="scan'208";a="251886873"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2022 22:16:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,161,1643702400"; d="scan'208";a="710991043"
Received: from lkp-server02.sh.intel.com (HELO 89b41b6ae01c) ([10.239.97.151])
 by orsmga005.jf.intel.com with ESMTP; 06 Mar 2022 22:16:37 -0800
Received: from kbuild by 89b41b6ae01c with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nR6fY-00002K-Ah; Mon, 07 Mar 2022 06:16:32 +0000
Date: Mon, 07 Mar 2022 13:41:56 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62259b24.kf04mYuphFWYlnWq%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 704f1f3022d8b59d8bbb570b090b865a4c9d2a0f
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
branch HEAD: 704f1f3022d8b59d8bbb570b090b865a4c9d2a0f  igc: Fix infinite loop in release_swfw_sync

elapsed time: 4820m

configs tested: 107
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
arm                         axm55xx_defconfig
arm                        mvebu_v7_defconfig
arm                        cerfcube_defconfig
h8300                            alldefconfig
powerpc                  iss476-smp_defconfig
sh                           se7751_defconfig
riscv                            allmodconfig
sh                          kfr2r09_defconfig
sh                          r7780mp_defconfig
arm                           sama5_defconfig
arm                         lubbock_defconfig
sparc                       sparc64_defconfig
riscv             nommu_k210_sdcard_defconfig
sh                          urquell_defconfig
powerpc                     ep8248e_defconfig
arm                         vf610m4_defconfig
m68k                          multi_defconfig
sh                ecovec24-romimage_defconfig
sh                   secureedge5410_defconfig
arm                           u8500_defconfig
m68k                          sun3x_defconfig
powerpc                        cell_defconfig
arm                       omap2plus_defconfig
s390                          debug_defconfig
arm                           h5000_defconfig
arm                            mps2_defconfig
arm                        clps711x_defconfig
m68k                        m5407c3_defconfig
sh                           se7712_defconfig
arm                  randconfig-c002-20220302
arm                  randconfig-c002-20220304
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
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
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
arm                  colibri_pxa270_defconfig
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r045-20220304
hexagon              randconfig-r041-20220304
hexagon              randconfig-r045-20220302
hexagon              randconfig-r041-20220302
hexagon              randconfig-r045-20220303
riscv                randconfig-r042-20220303
hexagon              randconfig-r041-20220303

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
