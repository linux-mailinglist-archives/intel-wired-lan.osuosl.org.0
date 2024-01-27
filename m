Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DB80983EF72
	for <lists+intel-wired-lan@lfdr.de>; Sat, 27 Jan 2024 19:18:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 69B5F83DC9;
	Sat, 27 Jan 2024 18:18:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 69B5F83DC9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706379484;
	bh=OYLa3ATXOcZrnZx+Sx6x3SoIDRONXgl5aV5cHIYlL5g=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=oGUKtJwrGTFIQfgp/cnisYJAFOkVd82yxhXAI6ZuNOXscPgs6yDB8nXZ7a3/n1NBI
	 jKbwz5Sk4mkstPR/+Ep2dfM1lOz94/aXS/hNFbtfZmlB8ltqLUPSv0ZcGCLIkD77JE
	 l15ZUhTE6eA6tl4MpAXH3HC6eJgK3V1jI5jMg8YxSVhFzc4SUmQt5VLVmjKLyq5dpC
	 oLNCG+eXfvoSfQZktow/MA2sMzS4QYcZHxcYHrsI4JYKJ9uZRwAf3cvXaXPlmNUN6N
	 P1RZzP+6pqsfERqmH313ktwgGxtPGRZkwVn1RDezS0FamLACXLjSabHDnMMgEnqbwt
	 6NF9sQKAzLoGA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Qg_p9CiWNNDb; Sat, 27 Jan 2024 18:18:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1940383CC3;
	Sat, 27 Jan 2024 18:18:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1940383CC3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AD2621BF388
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Jan 2024 18:17:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 91E0D83D50
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Jan 2024 18:17:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 91E0D83D50
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id br5WByu05EaS for <intel-wired-lan@lists.osuosl.org>;
 Sat, 27 Jan 2024 18:17:56 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 48CEC83CC3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Jan 2024 18:17:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 48CEC83CC3
X-IronPort-AV: E=McAfee;i="6600,9927,10966"; a="406425612"
X-IronPort-AV: E=Sophos;i="6.05,220,1701158400"; d="scan'208";a="406425612"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2024 10:17:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,220,1701158400"; 
   d="scan'208";a="2949319"
Received: from lkp-server01.sh.intel.com (HELO 370188f8dc87) ([10.239.97.150])
 by orviesa003.jf.intel.com with ESMTP; 27 Jan 2024 10:17:54 -0800
Received: from kbuild by 370188f8dc87 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rTnFY-0002ba-0K
 for intel-wired-lan@lists.osuosl.org; Sat, 27 Jan 2024 18:17:52 +0000
Date: Sun, 28 Jan 2024 02:17:39 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202401280237.XbJQ3tyo-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706379476; x=1737915476;
 h=date:from:to:subject:message-id;
 bh=gaf5HyBvbMcaS3vIVsHXVvonsOc5It+Oc6T4my7R2lI=;
 b=lul8eIb8ZSgEwzQvnW9efCexpbnnPfoc92tQI/P3uUUY6zsPCuPph4gr
 O35VGTqYXu5Ymk3Oj7aWR/cwEZSC72rK0dHuIpuvKEWQvKT4rZLZuxPUd
 AGmcAgy/8y02p9SGDY5694N3lFJXdiuTHZmPentwqg+HNX4VHRWntstaL
 K6TG6FUIdlEeSLK1qjcf8R5eQCzudJm+0liFbN+/Kn1dteqZiD0ezhkib
 161vysD0Tx9zv3cL3XIu+bN0/hnouol64jlUE7N1jZvCQ6m/DkBDUyP+k
 oxjXgvthhdDrOiYDgq2wwQ7muJ0nI4/sZzFQX6WSDTDmCoaEh3UufwoVl
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lul8eIb8
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 5f76499fb541c3e8ae401414bfdf702940c8c531
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git main
branch HEAD: 5f76499fb541c3e8ae401414bfdf702940c8c531  tsnep: Add link down PHY loopback support

elapsed time: 2398m

configs tested: 167
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20240127   gcc  
arc                   randconfig-002-20240127   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                             pxa_defconfig   gcc  
arm                   randconfig-001-20240127   gcc  
arm                   randconfig-002-20240127   gcc  
arm                   randconfig-003-20240127   gcc  
arm                   randconfig-004-20240127   gcc  
arm                        spear6xx_defconfig   gcc  
arm                           stm32_defconfig   gcc  
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240127   gcc  
arm64                 randconfig-002-20240127   gcc  
arm64                 randconfig-003-20240127   gcc  
arm64                 randconfig-004-20240127   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240127   gcc  
csky                  randconfig-002-20240127   gcc  
hexagon                          allmodconfig   clang
hexagon                          allyesconfig   clang
i386                             allmodconfig   clang
i386                              allnoconfig   clang
i386                             allyesconfig   clang
i386                  randconfig-011-20240127   clang
i386                  randconfig-012-20240127   clang
i386                  randconfig-013-20240127   clang
i386                  randconfig-014-20240127   clang
i386                  randconfig-015-20240127   clang
i386                  randconfig-016-20240127   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240127   gcc  
loongarch             randconfig-002-20240127   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                         amcore_defconfig   gcc  
m68k                                defconfig   gcc  
m68k                       m5275evb_defconfig   gcc  
m68k                        mvme16x_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                       bmips_be_defconfig   gcc  
mips                  decstation_64_defconfig   gcc  
mips                           gcw0_defconfig   gcc  
nios2                            alldefconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240127   gcc  
nios2                 randconfig-002-20240127   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                generic-64bit_defconfig   gcc  
parisc                randconfig-001-20240127   gcc  
parisc                randconfig-002-20240127   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   clang
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                   currituck_defconfig   gcc  
powerpc                     mpc83xx_defconfig   gcc  
powerpc                      pasemi_defconfig   gcc  
powerpc                      pcm030_defconfig   gcc  
powerpc               randconfig-001-20240127   gcc  
powerpc               randconfig-002-20240127   gcc  
powerpc               randconfig-003-20240127   gcc  
powerpc                  storcenter_defconfig   gcc  
powerpc                     tqm8541_defconfig   gcc  
powerpc                     tqm8555_defconfig   gcc  
powerpc                         wii_defconfig   gcc  
powerpc64             randconfig-001-20240127   gcc  
powerpc64             randconfig-002-20240127   gcc  
powerpc64             randconfig-003-20240127   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   clang
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20240127   gcc  
riscv                 randconfig-002-20240127   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                          lboxre2_defconfig   gcc  
sh                    randconfig-001-20240127   gcc  
sh                    randconfig-002-20240127   gcc  
sh                          rsk7201_defconfig   gcc  
sh                          rsk7203_defconfig   gcc  
sh                           se7722_defconfig   gcc  
sh                   sh7724_generic_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                       sparc32_defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240127   gcc  
sparc64               randconfig-002-20240127   gcc  
um                               alldefconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                    randconfig-001-20240127   gcc  
um                    randconfig-002-20240127   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240127   gcc  
x86_64       buildonly-randconfig-002-20240127   gcc  
x86_64       buildonly-randconfig-003-20240127   gcc  
x86_64       buildonly-randconfig-004-20240127   gcc  
x86_64       buildonly-randconfig-005-20240127   gcc  
x86_64       buildonly-randconfig-006-20240127   gcc  
x86_64                                  kexec   gcc  
x86_64                randconfig-011-20240127   gcc  
x86_64                randconfig-012-20240127   gcc  
x86_64                randconfig-013-20240127   gcc  
x86_64                randconfig-014-20240127   gcc  
x86_64                randconfig-015-20240127   gcc  
x86_64                randconfig-016-20240127   gcc  
x86_64                randconfig-071-20240127   gcc  
x86_64                randconfig-072-20240127   gcc  
x86_64                randconfig-073-20240127   gcc  
x86_64                randconfig-074-20240127   gcc  
x86_64                randconfig-075-20240127   gcc  
x86_64                randconfig-076-20240127   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa                  nommu_kc705_defconfig   gcc  
xtensa                randconfig-001-20240127   gcc  
xtensa                randconfig-002-20240127   gcc  
xtensa                         virt_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
