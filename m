Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 058B4539C6F
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Jun 2022 07:14:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 30B34410B0;
	Wed,  1 Jun 2022 05:14:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BXh6YVJ3KVFO; Wed,  1 Jun 2022 05:14:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C9327410B1;
	Wed,  1 Jun 2022 05:14:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C8ECB1BF5F5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jun 2022 05:14:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C4EFF82897
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jun 2022 05:14:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iwyYW_aJurFZ for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Jun 2022 05:14:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CC7D182882
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jun 2022 05:14:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654060487; x=1685596487;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=EHGhEOstpYhOnfZWTeM576ryQo6FlaugBdYnRE1g93A=;
 b=VvXGMM/ERC/TtTmufvQJRxrMAgjZl5IWg3mIgiKeJ8kTAEIfnZcJqpGU
 gfVVvN9Eb7ZtIVefaxpPAONPJ8nYti7heketp67JOcVAw7VJH2rPZaLwU
 QBsP46NxRO3++fw9LmT/hpJ53KmIYXGJ9Ygc4Dz43CR2L0IJhLSWAZeyY
 fz6FhxdnQ8gEx3NvQIQxccscRr+R3NwsdyS87cXAglZslMCvIN5xL/KqE
 qWOc0ltNrnQJ678Cuh5kQibITM0/RcNk0l5LSGZvDj3/rCyjC+GaV6xoj
 n0E/GyvKWnzjfdSFOcXkMPqnMJqkxagWjMDyzvs/se57T+XHiNr+Na77V g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10364"; a="336131390"
X-IronPort-AV: E=Sophos;i="5.91,266,1647327600"; d="scan'208";a="336131390"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2022 22:14:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,266,1647327600"; d="scan'208";a="755624787"
Received: from lkp-server01.sh.intel.com (HELO 60dabacc1df6) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 31 May 2022 22:14:46 -0700
Received: from kbuild by 60dabacc1df6 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1nwGgv-0003Za-EQ;
 Wed, 01 Jun 2022 05:14:45 +0000
Date: Wed, 01 Jun 2022 13:14:29 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6296f5b5.t+nY23lzy9wUuusU%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 09e545f7381459c015b6fa0cd0ac6f010ef8cc25
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git master
branch HEAD: 09e545f7381459c015b6fa0cd0ac6f010ef8cc25  xen/netback: fix incorrect usage of RING_HAS_UNCONSUMED_REQUESTS()

elapsed time: 949m

configs tested: 128
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                               defconfig
arm64                            allyesconfig
arm                              allmodconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-c001
sh                  sh7785lcr_32bit_defconfig
arm64                            alldefconfig
sh                   sh7770_generic_defconfig
sh                          lboxre2_defconfig
powerpc                     pq2fads_defconfig
openrisc                 simple_smp_defconfig
powerpc                     tqm8555_defconfig
mips                       capcella_defconfig
arm                           tegra_defconfig
arm                        shmobile_defconfig
sh                          rsk7201_defconfig
xtensa                  nommu_kc705_defconfig
arm                            zeus_defconfig
alpha                            alldefconfig
sparc                       sparc32_defconfig
parisc64                         alldefconfig
arc                           tb10x_defconfig
sh                          sdk7786_defconfig
arm                        realview_defconfig
powerpc                     stx_gp3_defconfig
powerpc                      mgcoge_defconfig
parisc                           alldefconfig
ia64                         bigsur_defconfig
sh                        dreamcast_defconfig
parisc                generic-64bit_defconfig
arm                        clps711x_defconfig
h8300                            alldefconfig
sh                          r7780mp_defconfig
microblaze                          defconfig
sh                          rsk7269_defconfig
powerpc                 linkstation_defconfig
mips                         bigsur_defconfig
arm                        cerfcube_defconfig
parisc64                            defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220531
ia64                                defconfig
ia64                             allmodconfig
ia64                             allyesconfig
riscv                             allnoconfig
m68k                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
nios2                               defconfig
arc                              allyesconfig
csky                                defconfig
nios2                            allyesconfig
alpha                               defconfig
alpha                            allyesconfig
h8300                            allyesconfig
xtensa                           allyesconfig
arc                                 defconfig
sh                               allmodconfig
s390                                defconfig
s390                             allmodconfig
parisc                              defconfig
parisc                           allyesconfig
s390                             allyesconfig
sparc                               defconfig
i386                             allyesconfig
sparc                            allyesconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arc                  randconfig-r043-20220531
s390                 randconfig-r044-20220531
riscv                randconfig-r042-20220531
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                            allmodconfig
riscv                            allyesconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                                  kexec
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit

clang tested configs:
mips                 randconfig-c004-20220531
x86_64                        randconfig-c007
i386                          randconfig-c001
s390                 randconfig-c005-20220531
arm                  randconfig-c002-20220531
powerpc              randconfig-c003-20220531
riscv                randconfig-c006-20220531
mips                        workpad_defconfig
powerpc                     tqm5200_defconfig
mips                        bcm63xx_defconfig
arm                           sama7_defconfig
arm                         shannon_defconfig
mips                malta_qemu_32r6_defconfig
powerpc                     skiroot_defconfig
powerpc                    ge_imp3a_defconfig
mips                         tb0287_defconfig
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
hexagon              randconfig-r045-20220531
hexagon              randconfig-r041-20220531

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
