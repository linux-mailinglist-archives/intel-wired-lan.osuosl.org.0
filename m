Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A58A787B74A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Mar 2024 06:30:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 924DC40160;
	Thu, 14 Mar 2024 05:30:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jLZjgndo62cL; Thu, 14 Mar 2024 05:30:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 361DD416A4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710394223;
	bh=ExsyjymGcONncGG6PgaGn26NxLoJSAzWsUDZAa19HN4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=T23KVOOO1tSEjyrEcDdcixrpRIRYaOy2CaZbVNcNb1HBzNlOf3qDWV2IFLdkcKrw2
	 7K0r4ANAvVg0cGEwlKcMa4MGh5olNPLCD24iQ+XwSJr1Jm74EnKoPDKCWagaSoVxT0
	 XTJnz0QBvk449W0xtz+4N4gipK/E/eo8pS5HfpIexWw2hTzsUEjIWC4tA8iVaF8oFu
	 /d034JGyZn91V3EqzCePfJKdBcTI5P6i2/dN+8X9kcKcPttoKyYIjmwgVTZ1banbiv
	 guGeWVhJAMiNgju9JEIdZ41gnJ6AZmUlMWY6nkoZOtd9v4W/Z3FfJBn14O63vh2Y9y
	 Zk6NcwuEPMnWQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 361DD416A4;
	Thu, 14 Mar 2024 05:30:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7236B1BF31B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Mar 2024 05:30:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 68BAA4086D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Mar 2024 05:30:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id krlz1_cB-Vdr for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Mar 2024 05:30:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3E5C24086C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3E5C24086C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3E5C24086C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Mar 2024 05:30:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11012"; a="5043808"
X-IronPort-AV: E=Sophos;i="6.07,124,1708416000"; 
   d="scan'208";a="5043808"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2024 22:30:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,124,1708416000"; d="scan'208";a="12245930"
Received: from lkp-server01.sh.intel.com (HELO b21307750695) ([10.239.97.150])
 by fmviesa008.fm.intel.com with ESMTP; 13 Mar 2024 22:30:18 -0700
Received: from kbuild by b21307750695 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rkdfU-000D8k-0h
 for intel-wired-lan@lists.osuosl.org; Thu, 14 Mar 2024 05:30:16 +0000
Date: Thu, 14 Mar 2024 13:29:58 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202403141355.emktOWIC-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710394220; x=1741930220;
 h=date:from:to:subject:message-id;
 bh=4KHFtE27I2nMH4QWBOphmOJkaPHcB+zRtXRFCEPOZ3k=;
 b=YFmmrZxPwnoqJVLguBbt930JeomxI3Qv+aEQGprssUMxz63JAKNEi0A4
 ZL6X5Vu6Kbfd6HKPNlBAPROSgdtSJR9t8QdYo7HONydX6wJIvvJ0ZbA0o
 XNB6fZ/wAGicKw8gjcPtPeBnRsz31ak9hGYAvMGgXOmbHYcadEGjbspMW
 oh/ACRPNvFNMzQj5ueS3DDSMPgni2vr1Q7jqoo8VSJ6J7IHYZ0OQOr04x
 TYFVso1LQMD+8+Ssb/MEPzVhvwqOnJ/TUWLoSYqsk+LGl3IzVULB7OmXc
 2Be/bCf5SwKIhDgaXbVkasic5pkZkqVpQNOdppM8CJqNrrz4sgyoSEOSK
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YFmmrZxP
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 725aa70b0b7a0db840270a4ae34c7ccaf5682912
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 725aa70b0b7a0db840270a4ae34c7ccaf5682912  ice: Remove ndo_get_phys_port_name

elapsed time: 731m

configs tested: 101
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
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240314   clang
i386         buildonly-randconfig-002-20240314   clang
i386         buildonly-randconfig-003-20240314   gcc  
i386         buildonly-randconfig-004-20240314   gcc  
i386         buildonly-randconfig-005-20240314   gcc  
i386         buildonly-randconfig-006-20240314   clang
i386                                defconfig   clang
i386                  randconfig-001-20240314   gcc  
i386                  randconfig-002-20240314   clang
i386                  randconfig-003-20240314   gcc  
i386                  randconfig-004-20240314   clang
i386                  randconfig-005-20240314   gcc  
i386                  randconfig-006-20240314   gcc  
i386                  randconfig-011-20240314   clang
i386                  randconfig-012-20240314   gcc  
i386                  randconfig-013-20240314   clang
i386                  randconfig-014-20240314   gcc  
i386                  randconfig-015-20240314   clang
i386                  randconfig-016-20240314   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
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
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
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
