Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 81C3487380A
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Mar 2024 14:44:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B468B60BA2;
	Wed,  6 Mar 2024 13:44:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VcXN0gjutN6T; Wed,  6 Mar 2024 13:44:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3EE9C60EA0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709732668;
	bh=EEpgqMuigKXn6xwY17tIryOIcYGkmhQApRfh26S/+GI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=rUqx7QUQOfxpgNKLIaWBE8cJmn6Cr7oE3TJRl7Pe/LOxJaBjg1AqTj7YXEF7AcoYf
	 lc25r3jzz0quahYVkHvCosuwd1QJkr9SpPPbqaRBF+pbKv2g9jbFm92fGJOEFeNjYm
	 7Vcntwk7yBpvSmfzfE5l3+Fz1nMEy2DpAeHzzhIRqGHOweAdu6gjPkCs6voxoUbQMb
	 cKSXq/LiNlSKsjpXkx1byIaIVhOMd9ItDrEvLmqxQH8DcKotOB12SyJOCSyqGa34tB
	 TDACXTvHMzBEtUdGOZSsC6iwY9o6594bpbMtQyKtZKwzpq05YPYmc+21bZwpm7lQQC
	 LYHYKL1H3wxPQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3EE9C60EA0;
	Wed,  6 Mar 2024 13:44:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 963C31BF357
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 13:44:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 81533400CC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 13:44:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GHA57BjxKz_8 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Mar 2024 13:44:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org EDB11400A3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EDB11400A3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EDB11400A3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 13:44:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11004"; a="4193189"
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; 
   d="scan'208";a="4193189"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 05:44:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; 
   d="scan'208";a="9634288"
Received: from lkp-server01.sh.intel.com (HELO b21307750695) ([10.239.97.150])
 by fmviesa007.fm.intel.com with ESMTP; 06 Mar 2024 05:44:23 -0800
Received: from kbuild by b21307750695 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rhrZE-0004Fx-2q
 for intel-wired-lan@lists.osuosl.org; Wed, 06 Mar 2024 13:44:20 +0000
Date: Wed, 06 Mar 2024 21:44:12 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202403062109.b3hx42Yk-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709732665; x=1741268665;
 h=date:from:to:subject:message-id;
 bh=J2gUNrPBwKHYua8ilo0oP1FOTFmysFrzpQwC0JXy+g8=;
 b=dtj+u0tR4qamVsBxRHcZAqvtuRF34z9udWM1DIJRPfM3qtA4Kz+nNqJi
 itscJODtJL+cKrfjbY6tzT9pRBjR+HvFGU+3ifIRFQtQ/n8l7OYM7ITjD
 +nQFAfN0AmbI9IXKgrA2pqMIkMJGiFCawntPYmaXYHl8btynLCZ8drIhy
 wgKNleORGGAap6Fj3zXywYL01zX2Cv+GqbM8mGeTu0n/W1mjElg3MWJ7n
 k3ZDhO1RE9MLQ/ETyFoypKWMxb8K+C8LqOYZSxOAeGZ0izgsXdUrrumWB
 s26cAUJxGSMWyJCNFQvdtAJmR3ush3wLMCYX41QjdVpGK3PZ6T36Bgi/W
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dtj+u0tR
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 4daa873133d3db4e17f4ccd9fe1102e4fbab7700
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 200GbE
branch HEAD: 4daa873133d3db4e17f4ccd9fe1102e4fbab7700  Merge tag 'mlx5-fixes-2024-03-01' of git://git.kernel.org/pub/scm/linux/kernel/git/saeed/linux

elapsed time: 1940m

configs tested: 218
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20240305   gcc  
arc                   randconfig-001-20240306   gcc  
arc                   randconfig-002-20240305   gcc  
arc                   randconfig-002-20240306   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                        mvebu_v5_defconfig   gcc  
arm                   randconfig-001-20240306   gcc  
arm                   randconfig-002-20240305   gcc  
arm                   randconfig-004-20240305   gcc  
arm                           sunxi_defconfig   gcc  
arm                           tegra_defconfig   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   clang
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240305   gcc  
arm64                 randconfig-001-20240306   gcc  
arm64                 randconfig-003-20240305   gcc  
arm64                 randconfig-003-20240306   gcc  
arm64                 randconfig-004-20240305   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240305   gcc  
csky                  randconfig-001-20240306   gcc  
csky                  randconfig-002-20240305   gcc  
csky                  randconfig-002-20240306   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
i386                             alldefconfig   gcc  
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240305   clang
i386         buildonly-randconfig-001-20240306   clang
i386         buildonly-randconfig-002-20240306   clang
i386         buildonly-randconfig-004-20240305   clang
i386         buildonly-randconfig-004-20240306   clang
i386         buildonly-randconfig-005-20240305   clang
i386         buildonly-randconfig-005-20240306   clang
i386                                defconfig   clang
i386                  randconfig-001-20240305   clang
i386                  randconfig-002-20240306   clang
i386                  randconfig-003-20240305   clang
i386                  randconfig-003-20240306   clang
i386                  randconfig-004-20240306   clang
i386                  randconfig-006-20240306   clang
i386                  randconfig-011-20240306   clang
i386                  randconfig-012-20240306   clang
i386                  randconfig-015-20240305   clang
i386                  randconfig-015-20240306   clang
i386                  randconfig-016-20240305   clang
i386                  randconfig-016-20240306   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240305   gcc  
loongarch             randconfig-001-20240306   gcc  
loongarch             randconfig-002-20240305   gcc  
loongarch             randconfig-002-20240306   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                       bvme6000_defconfig   gcc  
m68k                                defconfig   gcc  
m68k                       m5275evb_defconfig   gcc  
m68k                        mvme16x_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240305   gcc  
nios2                 randconfig-001-20240306   gcc  
nios2                 randconfig-002-20240305   gcc  
nios2                 randconfig-002-20240306   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
openrisc                 simple_smp_defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                generic-64bit_defconfig   gcc  
parisc                randconfig-001-20240305   gcc  
parisc                randconfig-001-20240306   gcc  
parisc                randconfig-002-20240305   gcc  
parisc                randconfig-002-20240306   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                        fsp2_defconfig   gcc  
powerpc                 mpc832x_rdb_defconfig   gcc  
powerpc               randconfig-001-20240305   gcc  
powerpc               randconfig-001-20240306   gcc  
powerpc               randconfig-002-20240305   gcc  
powerpc               randconfig-002-20240306   gcc  
powerpc               randconfig-003-20240305   gcc  
powerpc64             randconfig-001-20240306   gcc  
powerpc64             randconfig-003-20240305   gcc  
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
riscv                 randconfig-002-20240305   gcc  
riscv                 randconfig-002-20240306   gcc  
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240305   gcc  
s390                  randconfig-002-20240305   gcc  
s390                  randconfig-002-20240306   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                         ap325rxa_defconfig   gcc  
sh                                  defconfig   gcc  
sh                        dreamcast_defconfig   gcc  
sh                        edosk7705_defconfig   gcc  
sh                          lboxre2_defconfig   gcc  
sh                    randconfig-001-20240305   gcc  
sh                    randconfig-001-20240306   gcc  
sh                    randconfig-002-20240305   gcc  
sh                    randconfig-002-20240306   gcc  
sh                          sdk7786_defconfig   gcc  
sh                           se7724_defconfig   gcc  
sh                           se7750_defconfig   gcc  
sh                              ul2_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240305   gcc  
sparc64               randconfig-001-20240306   gcc  
sparc64               randconfig-002-20240305   gcc  
sparc64               randconfig-002-20240306   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                    randconfig-001-20240305   gcc  
um                    randconfig-001-20240306   gcc  
um                    randconfig-002-20240305   gcc  
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240305   clang
x86_64       buildonly-randconfig-001-20240306   clang
x86_64       buildonly-randconfig-002-20240305   clang
x86_64       buildonly-randconfig-002-20240306   clang
x86_64       buildonly-randconfig-003-20240305   clang
x86_64       buildonly-randconfig-003-20240306   clang
x86_64       buildonly-randconfig-004-20240305   clang
x86_64       buildonly-randconfig-004-20240306   clang
x86_64       buildonly-randconfig-005-20240305   clang
x86_64       buildonly-randconfig-006-20240306   clang
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20240305   clang
x86_64                randconfig-001-20240306   clang
x86_64                randconfig-002-20240305   clang
x86_64                randconfig-002-20240306   clang
x86_64                randconfig-004-20240305   clang
x86_64                randconfig-005-20240305   clang
x86_64                randconfig-005-20240306   clang
x86_64                randconfig-006-20240306   clang
x86_64                randconfig-011-20240306   clang
x86_64                randconfig-012-20240306   clang
x86_64                randconfig-013-20240305   clang
x86_64                randconfig-013-20240306   clang
x86_64                randconfig-015-20240305   clang
x86_64                randconfig-015-20240306   clang
x86_64                randconfig-016-20240305   clang
x86_64                randconfig-071-20240306   clang
x86_64                randconfig-072-20240306   clang
x86_64                randconfig-073-20240305   clang
x86_64                randconfig-073-20240306   clang
x86_64                randconfig-074-20240305   clang
x86_64                randconfig-074-20240306   clang
x86_64                randconfig-075-20240306   clang
x86_64                randconfig-076-20240305   clang
x86_64                randconfig-076-20240306   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa                randconfig-001-20240305   gcc  
xtensa                randconfig-001-20240306   gcc  
xtensa                randconfig-002-20240305   gcc  
xtensa                randconfig-002-20240306   gcc  
xtensa                    smp_lx200_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
