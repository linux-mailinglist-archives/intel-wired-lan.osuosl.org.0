Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A71AC8B0D19
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Apr 2024 16:48:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 43F6B82120;
	Wed, 24 Apr 2024 14:48:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YUe86rLhDiQo; Wed, 24 Apr 2024 14:48:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E407382121
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713970105;
	bh=yV8qQ2U9+RQlMbHKF0TkXcoG+/kbyAoa+ZzTggQmepo=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=2EzxqVt2bsLX4/CWl3JW4pTGfzXJodX5/q/vnccf3QafNx8lzlYe56d4EynKRkdPm
	 S8GZb6u1K0YxiIh65sKYpvDhVkkEeLMCG0jtv/M9dhZK76DjUWtKP0xbPeOhWchgAv
	 hQ6HEcT0gx09rQcys/1CFtVcSBJ3BI4sSjmlkxRPAG6ZLinen2bJ/gVg3yatM6VTiq
	 nO8alQV6EIN6vclwazyyVweT5QfRYBgFHmxi2v6gJ4pSXy6/26YjVyn5dGSa5w056t
	 zeO8auhUStSxJmK0fsNJsUzhkUXD0Ds7YxfH3JtKXQJWPR9Vrl5YvCiBq4I9qkJ++D
	 5zZq2jSG+iyvw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E407382121;
	Wed, 24 Apr 2024 14:48:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5B48F1BF57C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 14:48:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 465DF405C2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 14:48:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X8iruznAZaSv for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Apr 2024 14:48:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1FDAA40198
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1FDAA40198
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1FDAA40198
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 14:48:20 +0000 (UTC)
X-CSE-ConnectionGUID: cbrv2MWcQvuQ08Yk5HY7yw==
X-CSE-MsgGUID: MWv8pXFGSJi5AD4xmGqcDA==
X-IronPort-AV: E=McAfee;i="6600,9927,11054"; a="13440864"
X-IronPort-AV: E=Sophos;i="6.07,226,1708416000"; d="scan'208";a="13440864"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2024 07:48:19 -0700
X-CSE-ConnectionGUID: sam2HWF0RTGCSSclS/b7ZA==
X-CSE-MsgGUID: vwSbjh23SCeir4cNOlSkLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,226,1708416000"; d="scan'208";a="55932669"
Received: from lkp-server01.sh.intel.com (HELO e434dd42e5a1) ([10.239.97.150])
 by fmviesa001.fm.intel.com with ESMTP; 24 Apr 2024 07:48:17 -0700
Received: from kbuild by e434dd42e5a1 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rzdux-0001LU-1V
 for intel-wired-lan@lists.osuosl.org; Wed, 24 Apr 2024 14:48:15 +0000
Date: Wed, 24 Apr 2024 22:48:14 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202404242212.brRglsYg-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713970102; x=1745506102;
 h=date:from:to:subject:message-id;
 bh=+Yg0HyzvaPCj1nK76V1puQU7WTMmdlR2wt7ETtzb8/A=;
 b=XWE+wO1OWzZr5vhkJarj+GTcQgp0ry8qqz0E7+E1/2T7W6NasuOyCe15
 dr+yxP8o3dPNgAdRXBDTJUS28cfzP2TQYCIwqmnzQjf7oQ2F8RN5IN0Wu
 WL3E+SjGNIvlKJHjC6qtahq7+E0fDeA3lQGeyj8gvqof/I0jELUUZAWRf
 dn4UoUyk6nQPT423m7M5dY0mt2qJWwjj8NyQ+QErzZ+jKdoOuTUypRM5P
 JZMQUVaxln4J3rJxWsHW1d4d2wy8dj2h5lVJkoTfZO8+gDtRw4NneXGdq
 lgmm5YMfw07+qtnFkjBJ9hIbLTCbl2glcjs5moccxn8wSDOmZRdCm3GHE
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XWE+wO1O
Subject: [Intel-wired-lan] [tnguy-net-queue:40GbE] BUILD SUCCESS
 87dc42260f72837ca71c5e6de8f0c18b8f76f5ac
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 40GbE
branch HEAD: 87dc42260f72837ca71c5e6de8f0c18b8f76f5ac  ice: fix LAG and VF lock dependency in ice_reset_vf()

elapsed time: 1191m

configs tested: 157
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            alldefconfig   gcc  
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20240424   gcc  
arc                   randconfig-002-20240424   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                          pxa910_defconfig   gcc  
arm                   randconfig-001-20240424   gcc  
arm                   randconfig-002-20240424   gcc  
arm                   randconfig-003-20240424   gcc  
arm                           tegra_defconfig   gcc  
arm                       versatile_defconfig   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   clang
arm64                               defconfig   gcc  
arm64                 randconfig-002-20240424   gcc  
arm64                 randconfig-003-20240424   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240424   gcc  
csky                  randconfig-002-20240424   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
i386                             alldefconfig   gcc  
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386                                defconfig   clang
i386                  randconfig-004-20240424   clang
i386                  randconfig-011-20240424   clang
i386                  randconfig-013-20240424   clang
i386                  randconfig-014-20240424   clang
i386                  randconfig-015-20240424   clang
i386                  randconfig-016-20240424   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240424   gcc  
loongarch             randconfig-002-20240424   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                           sun3_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                       bmips_be_defconfig   gcc  
mips                         cobalt_defconfig   gcc  
mips                       lemote2f_defconfig   gcc  
mips                          malta_defconfig   gcc  
mips                      malta_kvm_defconfig   gcc  
mips                           rs90_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240424   gcc  
nios2                 randconfig-002-20240424   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240424   gcc  
parisc                randconfig-002-20240424   gcc  
parisc64                            defconfig   gcc  
powerpc                    adder875_defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                    ge_imp3a_defconfig   gcc  
powerpc                     kmeter1_defconfig   gcc  
powerpc                     powernv_defconfig   gcc  
powerpc               randconfig-002-20240424   gcc  
powerpc               randconfig-003-20240424   gcc  
powerpc                        warp_defconfig   gcc  
powerpc                         wii_defconfig   gcc  
powerpc64             randconfig-001-20240424   gcc  
powerpc64             randconfig-002-20240424   gcc  
powerpc64             randconfig-003-20240424   gcc  
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
riscv             nommu_k210_sdcard_defconfig   gcc  
riscv                 randconfig-001-20240424   gcc  
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240424   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                    randconfig-001-20240424   gcc  
sh                    randconfig-002-20240424   gcc  
sh                           se7705_defconfig   gcc  
sh                  sh7785lcr_32bit_defconfig   gcc  
sh                        sh7785lcr_defconfig   gcc  
sh                             shx3_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240424   gcc  
sparc64               randconfig-002-20240424   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                    randconfig-001-20240424   gcc  
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-003-20240424   gcc  
x86_64       buildonly-randconfig-004-20240424   gcc  
x86_64       buildonly-randconfig-005-20240424   gcc  
x86_64       buildonly-randconfig-006-20240424   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   clang
x86_64                randconfig-003-20240424   gcc  
x86_64                randconfig-004-20240424   gcc  
x86_64                randconfig-012-20240424   gcc  
x86_64                randconfig-013-20240424   gcc  
x86_64                randconfig-014-20240424   gcc  
x86_64                randconfig-016-20240424   gcc  
x86_64                randconfig-073-20240424   gcc  
x86_64                randconfig-075-20240424   gcc  
x86_64                randconfig-076-20240424   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                randconfig-001-20240424   gcc  
xtensa                randconfig-002-20240424   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
