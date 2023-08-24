Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A63B4786E40
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Aug 2023 13:47:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7F8C182E9D;
	Thu, 24 Aug 2023 11:47:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7F8C182E9D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692877639;
	bh=ZNPw9O/E/fm4xJhVHBkcOH9/BYJdOI0EmRoUVrK/5bs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=fRoYUfKN7pn+YXTwnVvuqAujyrR83Gji5FbMbScP7F+9koSFWeXdVqp9SBTmFCZRn
	 V4kIxMaZhAbDbzp/Fda9h04yHOjyGRciR2XcCy9RuWAEy0ZPDrCCN/BrFEjnnNtAVf
	 9yLpRalRJOz8TwbPRX1wjYWpqKe1gN2Njsdpiaa64CgHhygplZrk2BjUjkh01D/+Rj
	 PIgbTIzzpxCaiJTQunU7/F8xjvZKtce/Mlj96PPDShmv1u6vZ5g8aklFG75Kxi4cuV
	 fY4PAXCSUK2HXpcWFlOnO7sRKMydxtqgAEZyMWzgVFQ2FWuXBkiaEbEJdGuo+8UKn/
	 HCYKTgrNAhbjg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q8dhbSfJINEG; Thu, 24 Aug 2023 11:47:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B015B82D75;
	Thu, 24 Aug 2023 11:47:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B015B82D75
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 799001BF39A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 11:47:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5D30D418EB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 11:47:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5D30D418EB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8CYK8aGLNhDa for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Aug 2023 11:47:10 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A5D27418CF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 11:47:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A5D27418CF
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="438349462"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="438349462"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 04:47:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="737015385"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="737015385"
Received: from lkp-server02.sh.intel.com (HELO daf8bb0a381d) ([10.239.97.151])
 by orsmga002.jf.intel.com with ESMTP; 24 Aug 2023 04:47:06 -0700
Received: from kbuild by daf8bb0a381d with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qZ8np-00026D-12
 for intel-wired-lan@lists.osuosl.org; Thu, 24 Aug 2023 11:47:05 +0000
Date: Thu, 24 Aug 2023 19:46:16 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202308241915.VmpQgkMT-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692877629; x=1724413629;
 h=date:from:to:subject:message-id;
 bh=sDcBn+OIvm04jc10Qj5fbFklpiW1+ERFcGl2YZWS5GY=;
 b=fO6YnZCiWOgDVRkzz3m1hOSRyPvOhd0SwkPqpWqIm3SSLORykBq2Tzee
 9LmsV9IRL3mP+uzPjNKTo4Mxyftx3IqSnn7uOKY5Qic580nXsEaxx5TG0
 ADHSyoYhUUXEohbF7/U9c7V5KaNKTrPW65Ce/am5NoKplL8zP8o9e1iyF
 ChiszfEMB+mS8uIdrEnX2uN6fwCwfxP5hB9hA4g1rGPE2K1vjhCZTjDbT
 Nn+buHyScE9VnkWW8xJyyWNpTAAnqAYmIGWU/QtFvXhUHoxH7Qox9GTP+
 /Swlh8dgVyf3n2NLaTnOMTl9FAwa6nMmI6tTESXqAAupWmHKCZqJmf+bZ
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fO6YnZCi
Subject: [Intel-wired-lan] [tnguy-net-queue:1GbE] BUILD SUCCESS
 bee54b8472893f1428d12ec967fade37db216983
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 1GbE
branch HEAD: bee54b8472893f1428d12ec967fade37db216983  igc: Modify the tx-usecs coalesce setting

elapsed time: 2224m

configs tested: 379
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r001-20230823   gcc  
alpha                randconfig-r002-20230824   gcc  
alpha                randconfig-r003-20230824   gcc  
alpha                randconfig-r006-20230823   gcc  
alpha                randconfig-r014-20230823   gcc  
alpha                randconfig-r034-20230823   gcc  
alpha                randconfig-r035-20230823   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                        nsimosci_defconfig   gcc  
arc                  randconfig-r011-20230823   gcc  
arc                  randconfig-r012-20230823   gcc  
arc                  randconfig-r013-20230823   gcc  
arc                  randconfig-r023-20230824   gcc  
arc                  randconfig-r025-20230824   gcc  
arc                  randconfig-r034-20230823   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                         assabet_defconfig   gcc  
arm                         bcm2835_defconfig   gcc  
arm                                 defconfig   gcc  
arm                            dove_defconfig   clang
arm                           h3600_defconfig   gcc  
arm                       imx_v4_v5_defconfig   clang
arm                      integrator_defconfig   gcc  
arm                        keystone_defconfig   gcc  
arm                         lpc18xx_defconfig   gcc  
arm                            mps2_defconfig   gcc  
arm                        mvebu_v5_defconfig   clang
arm                          pxa3xx_defconfig   gcc  
arm                          pxa910_defconfig   gcc  
arm                   randconfig-001-20230823   clang
arm                  randconfig-r001-20230823   gcc  
arm                  randconfig-r002-20230823   gcc  
arm                  randconfig-r003-20230823   gcc  
arm                  randconfig-r013-20230824   gcc  
arm                  randconfig-r016-20230824   gcc  
arm                  randconfig-r024-20230824   gcc  
arm                  randconfig-r025-20230823   clang
arm                        shmobile_defconfig   gcc  
arm                           sunxi_defconfig   gcc  
arm                       versatile_defconfig   gcc  
arm                         wpcm450_defconfig   gcc  
arm64                            allmodconfig   gcc  
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r015-20230823   gcc  
arm64                randconfig-r021-20230823   gcc  
arm64                randconfig-r026-20230823   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r011-20230823   gcc  
csky                 randconfig-r011-20230824   gcc  
csky                 randconfig-r012-20230823   gcc  
csky                 randconfig-r014-20230823   gcc  
csky                 randconfig-r015-20230823   gcc  
csky                 randconfig-r021-20230823   gcc  
csky                 randconfig-r031-20230823   gcc  
hexagon               randconfig-001-20230823   clang
hexagon               randconfig-001-20230824   clang
hexagon               randconfig-002-20230823   clang
hexagon               randconfig-002-20230824   clang
hexagon              randconfig-r014-20230823   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20230823   clang
i386         buildonly-randconfig-001-20230824   gcc  
i386         buildonly-randconfig-002-20230823   clang
i386         buildonly-randconfig-002-20230824   gcc  
i386         buildonly-randconfig-003-20230823   clang
i386         buildonly-randconfig-003-20230824   gcc  
i386         buildonly-randconfig-004-20230823   clang
i386         buildonly-randconfig-004-20230824   gcc  
i386         buildonly-randconfig-005-20230823   clang
i386         buildonly-randconfig-005-20230824   gcc  
i386         buildonly-randconfig-006-20230823   clang
i386         buildonly-randconfig-006-20230824   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20230823   clang
i386                  randconfig-001-20230824   gcc  
i386                  randconfig-002-20230823   clang
i386                  randconfig-002-20230824   gcc  
i386                  randconfig-003-20230823   clang
i386                  randconfig-003-20230824   gcc  
i386                  randconfig-004-20230823   clang
i386                  randconfig-004-20230824   gcc  
i386                  randconfig-005-20230823   clang
i386                  randconfig-005-20230824   gcc  
i386                  randconfig-006-20230823   clang
i386                  randconfig-006-20230824   gcc  
i386                  randconfig-011-20230823   gcc  
i386                  randconfig-011-20230824   clang
i386                  randconfig-012-20230823   gcc  
i386                  randconfig-012-20230824   clang
i386                  randconfig-013-20230823   gcc  
i386                  randconfig-013-20230824   clang
i386                  randconfig-014-20230823   gcc  
i386                  randconfig-014-20230824   clang
i386                  randconfig-015-20230823   gcc  
i386                  randconfig-015-20230824   clang
i386                  randconfig-016-20230823   gcc  
i386                  randconfig-016-20230824   clang
i386                 randconfig-r011-20230823   gcc  
i386                 randconfig-r013-20230823   gcc  
i386                 randconfig-r016-20230823   gcc  
i386                 randconfig-r022-20230823   gcc  
i386                 randconfig-r025-20230823   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20230823   gcc  
loongarch             randconfig-001-20230824   gcc  
loongarch            randconfig-r001-20230823   gcc  
loongarch            randconfig-r005-20230824   gcc  
loongarch            randconfig-r006-20230824   gcc  
loongarch            randconfig-r024-20230823   gcc  
m68k                             alldefconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                          amiga_defconfig   gcc  
m68k                                defconfig   gcc  
m68k                          hp300_defconfig   gcc  
m68k                       m5208evb_defconfig   gcc  
m68k                        m5407c3_defconfig   gcc  
m68k                          multi_defconfig   gcc  
m68k                        mvme147_defconfig   gcc  
m68k                 randconfig-r004-20230823   gcc  
m68k                           virt_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
microblaze           randconfig-r003-20230823   gcc  
microblaze           randconfig-r004-20230824   gcc  
microblaze           randconfig-r006-20230823   gcc  
microblaze           randconfig-r014-20230823   gcc  
microblaze           randconfig-r025-20230823   gcc  
microblaze           randconfig-r036-20230823   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                         bigsur_defconfig   gcc  
mips                       bmips_be_defconfig   gcc  
mips                  decstation_64_defconfig   gcc  
mips                 decstation_r4k_defconfig   gcc  
mips                      fuloong2e_defconfig   gcc  
mips                           gcw0_defconfig   gcc  
mips                           ip32_defconfig   gcc  
mips                  maltasmvp_eva_defconfig   gcc  
mips                      pic32mzda_defconfig   clang
mips                 randconfig-r002-20230823   gcc  
mips                 randconfig-r003-20230823   gcc  
mips                 randconfig-r004-20230823   gcc  
mips                 randconfig-r006-20230823   gcc  
mips                 randconfig-r012-20230824   gcc  
mips                 randconfig-r021-20230823   clang
mips                 randconfig-r021-20230824   gcc  
mips                 randconfig-r031-20230824   clang
mips                 randconfig-r032-20230823   gcc  
mips                 randconfig-r034-20230824   clang
mips                           rs90_defconfig   clang
mips                           xway_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r002-20230823   gcc  
nios2                randconfig-r005-20230823   gcc  
nios2                randconfig-r016-20230823   gcc  
nios2                randconfig-r022-20230824   gcc  
nios2                randconfig-r032-20230823   gcc  
nios2                randconfig-r034-20230823   gcc  
openrisc                         alldefconfig   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
openrisc                  or1klitex_defconfig   gcc  
openrisc                    or1ksim_defconfig   gcc  
openrisc             randconfig-r003-20230823   gcc  
openrisc             randconfig-r005-20230823   gcc  
openrisc             randconfig-r015-20230823   gcc  
openrisc             randconfig-r023-20230823   gcc  
openrisc             randconfig-r026-20230824   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                generic-32bit_defconfig   gcc  
parisc               randconfig-r001-20230823   gcc  
parisc               randconfig-r002-20230823   gcc  
parisc               randconfig-r004-20230823   gcc  
parisc               randconfig-r006-20230823   gcc  
parisc               randconfig-r012-20230823   gcc  
parisc               randconfig-r013-20230823   gcc  
parisc               randconfig-r025-20230823   gcc  
parisc64                            defconfig   gcc  
powerpc                    adder875_defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   gcc  
powerpc                     asp8347_defconfig   gcc  
powerpc                      bamboo_defconfig   gcc  
powerpc                        cell_defconfig   gcc  
powerpc                      cm5200_defconfig   gcc  
powerpc                      ep88xc_defconfig   gcc  
powerpc                          g5_defconfig   gcc  
powerpc                    ge_imp3a_defconfig   clang
powerpc                   lite5200b_defconfig   clang
powerpc                       maple_defconfig   gcc  
powerpc                   microwatt_defconfig   clang
powerpc                   motionpro_defconfig   gcc  
powerpc                     mpc5200_defconfig   clang
powerpc                      pasemi_defconfig   gcc  
powerpc                      ppc40x_defconfig   gcc  
powerpc                     rainier_defconfig   gcc  
powerpc              randconfig-r003-20230823   clang
powerpc              randconfig-r005-20230823   clang
powerpc              randconfig-r016-20230823   gcc  
powerpc              randconfig-r031-20230823   clang
powerpc                     tqm8555_defconfig   gcc  
powerpc64            randconfig-r004-20230823   clang
powerpc64            randconfig-r014-20230823   gcc  
powerpc64            randconfig-r022-20230823   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                    nommu_virt_defconfig   gcc  
riscv                 randconfig-001-20230823   clang
riscv                randconfig-r013-20230823   gcc  
riscv                randconfig-r022-20230823   gcc  
riscv                randconfig-r023-20230823   gcc  
riscv                          rv32_defconfig   gcc  
s390                             alldefconfig   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20230824   clang
s390                 randconfig-r001-20230824   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                        edosk7705_defconfig   gcc  
sh                        edosk7760_defconfig   gcc  
sh                            hp6xx_defconfig   gcc  
sh                   randconfig-r002-20230823   gcc  
sh                   randconfig-r006-20230823   gcc  
sh                   randconfig-r014-20230824   gcc  
sh                   randconfig-r026-20230823   gcc  
sh                   randconfig-r033-20230823   gcc  
sh                          rsk7201_defconfig   gcc  
sh                          rsk7203_defconfig   gcc  
sh                          rsk7264_defconfig   gcc  
sh                          sdk7780_defconfig   gcc  
sh                           se7712_defconfig   gcc  
sh                           se7750_defconfig   gcc  
sh                           se7751_defconfig   gcc  
sh                   secureedge5410_defconfig   gcc  
sh                             shx3_defconfig   gcc  
sh                              ul2_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r004-20230823   gcc  
sparc                randconfig-r024-20230823   gcc  
sparc                randconfig-r025-20230823   gcc  
sparc                       sparc64_defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64              randconfig-r003-20230823   gcc  
sparc64              randconfig-r016-20230823   gcc  
sparc64              randconfig-r022-20230823   gcc  
sparc64              randconfig-r024-20230823   gcc  
sparc64              randconfig-r026-20230823   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r005-20230823   gcc  
um                   randconfig-r014-20230823   clang
um                   randconfig-r024-20230823   clang
um                   randconfig-r025-20230823   clang
um                   randconfig-r031-20230823   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   clang
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-001-20230823   clang
x86_64       buildonly-randconfig-001-20230824   gcc  
x86_64       buildonly-randconfig-002-20230823   clang
x86_64       buildonly-randconfig-002-20230824   gcc  
x86_64       buildonly-randconfig-003-20230823   clang
x86_64       buildonly-randconfig-003-20230824   gcc  
x86_64       buildonly-randconfig-004-20230823   clang
x86_64       buildonly-randconfig-004-20230824   gcc  
x86_64       buildonly-randconfig-005-20230823   clang
x86_64       buildonly-randconfig-005-20230824   gcc  
x86_64       buildonly-randconfig-006-20230823   clang
x86_64       buildonly-randconfig-006-20230824   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                randconfig-001-20230823   gcc  
x86_64                randconfig-001-20230824   clang
x86_64                randconfig-002-20230823   gcc  
x86_64                randconfig-002-20230824   clang
x86_64                randconfig-003-20230823   gcc  
x86_64                randconfig-003-20230824   clang
x86_64                randconfig-004-20230823   gcc  
x86_64                randconfig-004-20230824   clang
x86_64                randconfig-005-20230823   gcc  
x86_64                randconfig-005-20230824   clang
x86_64                randconfig-006-20230823   gcc  
x86_64                randconfig-006-20230824   clang
x86_64                randconfig-011-20230823   clang
x86_64                randconfig-011-20230824   gcc  
x86_64                randconfig-012-20230823   clang
x86_64                randconfig-012-20230824   gcc  
x86_64                randconfig-013-20230823   clang
x86_64                randconfig-013-20230824   gcc  
x86_64                randconfig-014-20230823   clang
x86_64                randconfig-014-20230824   gcc  
x86_64                randconfig-015-20230823   clang
x86_64                randconfig-015-20230824   gcc  
x86_64                randconfig-016-20230823   clang
x86_64                randconfig-016-20230824   gcc  
x86_64                randconfig-071-20230823   clang
x86_64                randconfig-071-20230824   gcc  
x86_64                randconfig-072-20230823   clang
x86_64                randconfig-072-20230824   gcc  
x86_64                randconfig-073-20230823   clang
x86_64                randconfig-073-20230824   gcc  
x86_64                randconfig-074-20230823   clang
x86_64                randconfig-074-20230824   gcc  
x86_64                randconfig-075-20230823   clang
x86_64                randconfig-075-20230824   gcc  
x86_64                randconfig-076-20230823   clang
x86_64                randconfig-076-20230824   gcc  
x86_64               randconfig-r002-20230823   clang
x86_64               randconfig-r021-20230823   gcc  
x86_64               randconfig-r023-20230823   gcc  
x86_64               randconfig-r024-20230823   gcc  
x86_64               randconfig-r035-20230823   clang
x86_64                           rhel-8.3-bpf   gcc  
x86_64                          rhel-8.3-func   gcc  
x86_64                    rhel-8.3-kselftests   gcc  
x86_64                         rhel-8.3-kunit   gcc  
x86_64                           rhel-8.3-ltp   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa                              defconfig   gcc  
xtensa                  nommu_kc705_defconfig   gcc  
xtensa               randconfig-r001-20230823   gcc  
xtensa               randconfig-r003-20230823   gcc  
xtensa               randconfig-r004-20230823   gcc  
xtensa               randconfig-r005-20230823   gcc  
xtensa               randconfig-r014-20230823   gcc  
xtensa               randconfig-r015-20230823   gcc  
xtensa               randconfig-r026-20230823   gcc  
xtensa               randconfig-r031-20230823   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
