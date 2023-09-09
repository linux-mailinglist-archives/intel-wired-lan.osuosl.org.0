Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B96F799712
	for <lists+intel-wired-lan@lfdr.de>; Sat,  9 Sep 2023 11:29:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2143340866;
	Sat,  9 Sep 2023 09:29:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2143340866
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694251754;
	bh=D5RQN4O/OAplxHiT3HTaQXd4bu9VZ+1PEA3EbT13hN4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=bkrlUnrJCu+OgVsq4XT3kKL2nYvZHy5RlVO0n+QhdoncEfJ9tIpJdR0boT+qgA9Yl
	 a2Bs5vKbKtsk6K8E8QolH6Y7mjcdYmRC90xsID8d65Jc51wxWWNDxyH9/bDBrNu77H
	 BJZo9Kk7QnQDhyAOz1vThIWdLOnxutgsr8DfxT1C2zXTN8bp4bRC5JcZg41YHsjft4
	 kj7/zj6UtTcakf+QVFXaNKxm0t6a4Ks3mqMNi9raglltZz9Ra2HyfjZJxWZDdwXB6W
	 UaEC2e9tkLKsj3byl9aNg48IewdWfZauG6Ld6a9CVJxv3SDvdu+sThgNGmpL/JtveR
	 zao/ps2Cx4O1Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1do9clm6Xe9Z; Sat,  9 Sep 2023 09:29:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2B6D4404E8;
	Sat,  9 Sep 2023 09:29:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2B6D4404E8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EC26C1BF84C
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Sep 2023 09:29:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C4365400B9
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Sep 2023 09:29:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C4365400B9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cB60xzknLYdC for <intel-wired-lan@lists.osuosl.org>;
 Sat,  9 Sep 2023 09:29:05 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A74A6408BD
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Sep 2023 09:29:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A74A6408BD
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="357273721"
X-IronPort-AV: E=Sophos;i="6.02,239,1688454000"; d="scan'208";a="357273721"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2023 02:29:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="866377626"
X-IronPort-AV: E=Sophos;i="6.02,239,1688454000"; d="scan'208";a="866377626"
Received: from lkp-server01.sh.intel.com (HELO 59b3c6e06877) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 09 Sep 2023 02:29:02 -0700
Received: from kbuild by 59b3c6e06877 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qeuGy-0003EL-0C
 for intel-wired-lan@lists.osuosl.org; Sat, 09 Sep 2023 09:29:00 +0000
Date: Sat, 09 Sep 2023 17:28:51 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202309091749.yIhuIpSr-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694251745; x=1725787745;
 h=date:from:to:subject:message-id;
 bh=2hbv7HB0gdOGJYTftvcQnqA65qFd1txsMRi2YlyCaF4=;
 b=QjbODzCSjdYEt6qXj5RIMNnSncdWSXXYliXVyS5xb9Npik4ZDXG6r6b+
 g63ekrt5ltm/ORdxvtUw6y2wLyuc/GYYcdKFNz/qy4b3gIF85HLjmjA2P
 DoYeQ1JhWmbk68UyGeSFvAQe+djMGezXxTl/UlzQI4tMvD7CzEtlMCerU
 poZxZxwcmDNyXY5yWCIYHN89XS8kvIeqcbhe5D2CQzBHm8ejwMkD41K8K
 XoEHP38U/cDyC+1rJp7hvm+BaGpWsT3cHNtlXoVgIv8FSWcLCRjObfwQ/
 zNBMYXLlB5V2LBZnrh4Q3JYHZGFk6c+qgz/flkWWHxj3WxjTEFn2H+eAo
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QjbODzCS
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 3b63a1ebcd3d65f2ac10efa5e225cfebd68e4484
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 3b63a1ebcd3d65f2ac10efa5e225cfebd68e4484  i40e: Fix VF VLAN offloading when port VLAN is configured

elapsed time: 724m

configs tested: 202
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r013-20230909   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                        nsim_700_defconfig   gcc  
arc                   randconfig-001-20230909   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                          exynos_defconfig   gcc  
arm                         lpc32xx_defconfig   clang
arm                   milbeaut_m10v_defconfig   clang
arm                            mmp2_defconfig   clang
arm                         orion5x_defconfig   clang
arm                   randconfig-001-20230909   clang
arm                        shmobile_defconfig   gcc  
arm                        spear3xx_defconfig   clang
arm                         vf610m4_defconfig   gcc  
arm64                            allmodconfig   gcc  
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r001-20230909   gcc  
csky                 randconfig-r032-20230909   gcc  
hexagon               randconfig-001-20230909   clang
hexagon               randconfig-002-20230909   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   clang
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20230909   clang
i386         buildonly-randconfig-002-20230909   clang
i386         buildonly-randconfig-003-20230909   clang
i386         buildonly-randconfig-004-20230909   clang
i386         buildonly-randconfig-005-20230909   clang
i386         buildonly-randconfig-006-20230909   clang
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20230909   clang
i386                  randconfig-002-20230909   clang
i386                  randconfig-003-20230909   clang
i386                  randconfig-004-20230909   clang
i386                  randconfig-005-20230909   clang
i386                  randconfig-006-20230909   clang
i386                  randconfig-011-20230909   gcc  
i386                  randconfig-012-20230909   gcc  
i386                  randconfig-013-20230909   gcc  
i386                  randconfig-014-20230909   gcc  
i386                  randconfig-015-20230909   gcc  
i386                  randconfig-016-20230909   gcc  
i386                 randconfig-r021-20230909   gcc  
i386                 randconfig-r026-20230909   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20230909   gcc  
loongarch            randconfig-r002-20230909   gcc  
loongarch            randconfig-r005-20230909   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r001-20230909   gcc  
m68k                 randconfig-r006-20230909   gcc  
m68k                 randconfig-r033-20230909   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
microblaze           randconfig-r003-20230909   gcc  
microblaze           randconfig-r012-20230909   gcc  
microblaze           randconfig-r014-20230909   gcc  
microblaze           randconfig-r016-20230909   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                            ar7_defconfig   gcc  
mips                      bmips_stb_defconfig   clang
mips                        omega2p_defconfig   clang
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r005-20230909   gcc  
nios2                randconfig-r014-20230909   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r035-20230909   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   gcc  
powerpc                 canyonlands_defconfig   gcc  
powerpc                        cell_defconfig   gcc  
powerpc                    klondike_defconfig   gcc  
powerpc                 mpc8313_rdb_defconfig   clang
powerpc                    mvme5100_defconfig   clang
powerpc                      pasemi_defconfig   gcc  
powerpc                      ppc44x_defconfig   clang
powerpc              randconfig-r024-20230909   gcc  
powerpc              randconfig-r034-20230909   clang
powerpc              randconfig-r036-20230909   clang
powerpc                     tqm8555_defconfig   gcc  
powerpc64            randconfig-r036-20230909   clang
riscv                            alldefconfig   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20230909   clang
riscv                randconfig-r004-20230909   clang
riscv                randconfig-r023-20230909   gcc  
riscv                          rv32_defconfig   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20230909   gcc  
s390                 randconfig-r032-20230909   clang
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                   randconfig-r002-20230909   gcc  
sh                   randconfig-r003-20230909   gcc  
sh                   randconfig-r013-20230909   gcc  
sh                   secureedge5410_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r011-20230909   gcc  
sparc                randconfig-r022-20230909   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64              randconfig-r012-20230909   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r025-20230909   clang
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-001-20230909   clang
x86_64       buildonly-randconfig-002-20230909   clang
x86_64       buildonly-randconfig-003-20230909   clang
x86_64       buildonly-randconfig-004-20230909   clang
x86_64       buildonly-randconfig-005-20230909   clang
x86_64       buildonly-randconfig-006-20230909   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                randconfig-001-20230909   gcc  
x86_64                randconfig-002-20230909   gcc  
x86_64                randconfig-003-20230909   gcc  
x86_64                randconfig-004-20230909   gcc  
x86_64                randconfig-005-20230909   gcc  
x86_64                randconfig-006-20230909   gcc  
x86_64                randconfig-011-20230909   clang
x86_64                randconfig-012-20230909   clang
x86_64                randconfig-013-20230909   clang
x86_64                randconfig-014-20230909   clang
x86_64                randconfig-015-20230909   clang
x86_64                randconfig-016-20230909   clang
x86_64                randconfig-071-20230909   clang
x86_64                randconfig-072-20230909   clang
x86_64                randconfig-073-20230909   clang
x86_64                randconfig-074-20230909   clang
x86_64                randconfig-075-20230909   clang
x86_64                randconfig-076-20230909   clang
x86_64               randconfig-r011-20230909   gcc  
x86_64               randconfig-r031-20230909   clang
x86_64                           rhel-8.3-bpf   gcc  
x86_64                          rhel-8.3-func   gcc  
x86_64                    rhel-8.3-kselftests   gcc  
x86_64                         rhel-8.3-kunit   gcc  
x86_64                           rhel-8.3-ltp   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                           alldefconfig   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa                  cadence_csp_defconfig   gcc  
xtensa               randconfig-r015-20230909   gcc  
xtensa               randconfig-r016-20230909   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
