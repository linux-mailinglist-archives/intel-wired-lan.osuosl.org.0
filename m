Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FA418C1435
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 May 2024 19:40:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6A06C41E96;
	Thu,  9 May 2024 17:40:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 11ODQXhJ_ufT; Thu,  9 May 2024 17:40:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 685AC41E48
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715276427;
	bh=D1rjlAGHDaMWFj+YJrEvs9RrbEcoqmD+3fIURlb7WmU=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ACmjwqMIjPpf74CK/68XnBaJU04YwbX9OT2Wmw9o8VdC0lYcWKZaFVYfXf4TVod3T
	 H8kcWegPH0GWr+xKLBubB7nraNQXjXquKT1opGfH02GHx13mVQHOB9aGuDeaFbjc32
	 eQEp20chfRtkNsIlcRUNyKFuwN/cv3nXpREPKqGc59Qkz49S46Cu9zLYOSIwnzgafQ
	 BxKxKKl4BQ4EOBjDoi9uzJ/T8y0TYqEkPWxuOxw1i+J3NV7t3OhzxIu9uV69EMKvHJ
	 hh9ivHd5Q3EjbR3QTYVKzLNOllGgyBPqGdcmXmeXJLTYrykxgX/L7wQeCGdCpo4Jf7
	 eoowakRwgd5Sw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 685AC41E48;
	Thu,  9 May 2024 17:40:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 190211BF990
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 May 2024 17:40:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 057F760FB2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 May 2024 17:40:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 703PD3LiTL5W for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 May 2024 17:40:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7475D60EF9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7475D60EF9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7475D60EF9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 May 2024 17:40:20 +0000 (UTC)
X-CSE-ConnectionGUID: 1+UA1XghRS6f8EN0Ks+ong==
X-CSE-MsgGUID: r/w6URCaSmW/wuOa8PpeZg==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="21813223"
X-IronPort-AV: E=Sophos;i="6.08,148,1712646000"; d="scan'208";a="21813223"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2024 10:40:16 -0700
X-CSE-ConnectionGUID: 3BeOOnWgQhKjp8Qt51Vqbw==
X-CSE-MsgGUID: R+JbKwFGQM2zayINAOApxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,148,1712646000"; d="scan'208";a="60177332"
Received: from lkp-server01.sh.intel.com (HELO f8b243fe6e68) ([10.239.97.150])
 by orviesa002.jf.intel.com with ESMTP; 09 May 2024 10:40:16 -0700
Received: from kbuild by f8b243fe6e68 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1s57kb-0005Bl-1R
 for intel-wired-lan@lists.osuosl.org; Thu, 09 May 2024 17:40:13 +0000
Date: Fri, 10 May 2024 01:39:18 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202405100117.vOYG3xG4-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715276421; x=1746812421;
 h=date:from:to:subject:message-id;
 bh=M0vPZbxtTiCtw+MN4bCc2tbPbD0TfSns5v0pi6kgzYk=;
 b=Fg820bfFfJlcVt1Zm2dIWwSXJSvYAL6XGtAifSJkzGTNpaLMSaw3Tvfp
 bKwjIDFDJzhvYT6vkg4sLrOQnXKrHITPJIJz5PkgbB+8z8DBeV+2zztZ4
 MMTm41QkOvtuMiCj/uKLUWUgNBMsHYpjmJeB1YTF6s+DCQrRCA8za33Jf
 VuwfxZPuWM7/6/UWzZo6L7HEyFeFAjUobUe7uMupCnIVORUAJmpyt5/Ep
 sne9nFjphIJlKjFN4c40/tjCUqUJeS80D3l3DXVk2Ig9EscWm5jIGxbB+
 poZfS8jnWUTFoUhIKt/9Hxqxc6Mq1u+5M9FzetRcVV8xN6XQJUdaaxB31
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Fg820bfF
Subject: [Intel-wired-lan] [tnguy-net-queue:100GbE] BUILD SUCCESS
 701964a890469fa2b68151aa0d8f227ad6b44032
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 100GbE
branch HEAD: 701964a890469fa2b68151aa0d8f227ad6b44032  ice: Fix package download algorithm

elapsed time: 1453m

configs tested: 122
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
arc                   randconfig-001-20240509   gcc  
arc                   randconfig-002-20240509   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                   randconfig-001-20240509   gcc  
arm                   randconfig-002-20240509   clang
arm                   randconfig-003-20240509   clang
arm                   randconfig-004-20240509   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240509   clang
arm64                 randconfig-002-20240509   clang
arm64                 randconfig-003-20240509   gcc  
arm64                 randconfig-004-20240509   clang
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240509   gcc  
csky                  randconfig-002-20240509   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240509   clang
hexagon               randconfig-002-20240509   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240509   gcc  
i386         buildonly-randconfig-002-20240509   gcc  
i386         buildonly-randconfig-003-20240509   clang
i386         buildonly-randconfig-004-20240509   clang
i386         buildonly-randconfig-005-20240509   gcc  
i386         buildonly-randconfig-006-20240509   gcc  
i386                                defconfig   clang
i386                  randconfig-001-20240509   clang
i386                  randconfig-002-20240509   clang
i386                  randconfig-003-20240509   clang
i386                  randconfig-004-20240509   gcc  
i386                  randconfig-005-20240509   clang
i386                  randconfig-006-20240509   gcc  
i386                  randconfig-011-20240509   clang
i386                  randconfig-012-20240509   gcc  
i386                  randconfig-013-20240509   clang
i386                  randconfig-014-20240509   gcc  
i386                  randconfig-015-20240509   gcc  
i386                  randconfig-016-20240509   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240509   gcc  
loongarch             randconfig-002-20240509   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240509   gcc  
nios2                 randconfig-002-20240509   gcc  
openrisc                          allnoconfig   gcc  
openrisc                            defconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240509   gcc  
parisc                randconfig-002-20240509   gcc  
parisc64                            defconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc               randconfig-001-20240509   clang
powerpc               randconfig-002-20240509   clang
powerpc               randconfig-003-20240509   clang
powerpc64             randconfig-001-20240509   clang
powerpc64             randconfig-002-20240509   gcc  
powerpc64             randconfig-003-20240509   clang
riscv                             allnoconfig   gcc  
riscv                               defconfig   clang
riscv                 randconfig-001-20240509   gcc  
riscv                 randconfig-002-20240509   gcc  
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240509   gcc  
s390                  randconfig-002-20240509   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64                              defconfig   gcc  
x86_64                          rhel-8.3-rust   clang
xtensa                            allnoconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
