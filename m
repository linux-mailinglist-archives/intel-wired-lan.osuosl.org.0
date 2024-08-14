Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE8469515D6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Aug 2024 09:50:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C82E84045E;
	Wed, 14 Aug 2024 07:50:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7Cd73ZSXftUZ; Wed, 14 Aug 2024 07:50:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 344CB40359
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723621842;
	bh=zWNVublZ1aSzRkHVebAGJNszCj14mLY2juorMepM1/Q=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Im4zfNvt3TxlmzpIZ56MtcFbFMn9e7Ia+z1d4CAt20nrE9o3z/ysMHTv2zrv50EP5
	 msvlkqloN6PbhZdR8OzzXDKjrI84c2RYDqhJFMk5JRPcSfTh041en1I5nHgqkyjDI6
	 jneZA1u/LGKqtIfwFEbH8kFfrWCwJlZPluW6zbfJcKDQqbHdOGNAr+bfS8bbPH5FsC
	 UuruSKCzR2guUxQkfMjsZpSBmYBDe+2zRrGVMF5RQqMAdlwls1on0ugnMb3g/LRi7m
	 FEG1MmOAg5OyqChfyDFxA8xD0f/rMBhne4Tsv9z+0ZhT2KYdOlpyeHYJggwW89/bNE
	 w5PAfVpJI5ToQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 344CB40359;
	Wed, 14 Aug 2024 07:50:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B125D1BF593
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 07:50:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 91BC7404E7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 07:50:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Qj9SoDNh3lxr for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Aug 2024 07:50:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1E4F8404CA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1E4F8404CA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1E4F8404CA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 07:50:37 +0000 (UTC)
X-CSE-ConnectionGUID: civQWI9USWqMlXA3n1u8lA==
X-CSE-MsgGUID: 2L/Z5z4UQFydiXvKvjW1ww==
X-IronPort-AV: E=McAfee;i="6700,10204,11163"; a="32499018"
X-IronPort-AV: E=Sophos;i="6.09,288,1716274800"; d="scan'208";a="32499018"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2024 00:50:37 -0700
X-CSE-ConnectionGUID: gS0Eo+7GRWS8XIPxxXRrVw==
X-CSE-MsgGUID: JDC9kKbjRFyoQTqMzmKWUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,288,1716274800"; d="scan'208";a="58561993"
Received: from lkp-server01.sh.intel.com (HELO 9a732dc145d3) ([10.239.97.150])
 by fmviesa006.fm.intel.com with ESMTP; 14 Aug 2024 00:50:36 -0700
Received: from kbuild by 9a732dc145d3 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1se8mA-0001Rm-1F
 for intel-wired-lan@lists.osuosl.org; Wed, 14 Aug 2024 07:50:34 +0000
Date: Wed, 14 Aug 2024 15:49:54 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202408141552.gXe19KdR-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723621838; x=1755157838;
 h=date:from:to:subject:message-id;
 bh=GRYOr7IzEYx89AJ+RfylLWDHtHecSZLWshMYYYDH/Og=;
 b=DANHVf3p96H5e+pCtqfUHswdEy27tPMdLYzBvLU0dDGCzhFHRmLFAm35
 01azkl2bWECQ1Lw1F3ZmIVc4/f3/bmDiH2ZsiM1s24RKPT+aXunv6+YWH
 QY0TW8BLTlY6r/JE9M75Wd0BKvpsgB0YuHJO1fXMFCGpruwk38EtnDz7/
 YT+M/4s+b0coLQ3sJmxPcZxrS47X4ueHpYx8sKNqbQLd/9DIX87vzfkzs
 rowJMNMSdJmwWU+hZa0oH0DV/HWNo5L8uK8+xa4fF5eFppArYISRCY5QU
 YvOiG0IqvOR7S3nkHE3bgcgm6h9w3k2YQEuNjGHdUBisRja8YJ8TtYGJK
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DANHVf3p
Subject: [Intel-wired-lan] [tnguy-net-queue:main] BUILD SUCCESS
 df934abb185c71c9f2fa07a5013672d0cbd36560
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git main
branch HEAD: df934abb185c71c9f2fa07a5013672d0cbd36560  mlxbf_gige: disable RX filters until RX path initialized

elapsed time: 1057m

configs tested: 143
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.3.0
alpha                            allyesconfig   gcc-13.3.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                   randconfig-001-20240814   gcc-13.2.0
arc                   randconfig-002-20240814   gcc-13.2.0
arm                              allmodconfig   gcc-14.1.0
arm                               allnoconfig   clang-20
arm                              allyesconfig   gcc-14.1.0
arm                   randconfig-001-20240814   clang-20
arm                   randconfig-002-20240814   clang-20
arm                   randconfig-003-20240814   clang-20
arm                   randconfig-004-20240814   clang-20
arm64                            allmodconfig   clang-20
arm64                             allnoconfig   gcc-14.1.0
arm64                 randconfig-001-20240814   clang-20
arm64                 randconfig-002-20240814   gcc-14.1.0
arm64                 randconfig-003-20240814   gcc-14.1.0
arm64                 randconfig-004-20240814   clang-20
csky                              allnoconfig   gcc-14.1.0
csky                  randconfig-001-20240814   gcc-14.1.0
csky                  randconfig-002-20240814   gcc-14.1.0
hexagon                          allmodconfig   clang-20
hexagon                           allnoconfig   clang-20
hexagon                          allyesconfig   clang-20
hexagon               randconfig-001-20240814   clang-16
hexagon               randconfig-002-20240814   clang-14
i386                             allmodconfig   gcc-12
i386                              allnoconfig   gcc-12
i386                             allyesconfig   gcc-12
i386         buildonly-randconfig-001-20240814   clang-18
i386         buildonly-randconfig-002-20240814   clang-18
i386         buildonly-randconfig-003-20240814   clang-18
i386         buildonly-randconfig-004-20240814   clang-18
i386         buildonly-randconfig-005-20240814   gcc-12
i386         buildonly-randconfig-006-20240814   gcc-12
i386                                defconfig   clang-18
i386                  randconfig-001-20240814   clang-18
i386                  randconfig-002-20240814   gcc-12
i386                  randconfig-003-20240814   gcc-12
i386                  randconfig-004-20240814   clang-18
i386                  randconfig-005-20240814   clang-18
i386                  randconfig-006-20240814   clang-18
i386                  randconfig-011-20240814   gcc-12
i386                  randconfig-012-20240814   gcc-12
i386                  randconfig-013-20240814   clang-18
i386                  randconfig-014-20240814   gcc-11
i386                  randconfig-015-20240814   gcc-12
i386                  randconfig-016-20240814   gcc-12
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-14.1.0
loongarch             randconfig-001-20240814   gcc-14.1.0
loongarch             randconfig-002-20240814   gcc-14.1.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-14.1.0
m68k                             allyesconfig   gcc-14.1.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-14.1.0
microblaze                       allyesconfig   gcc-14.1.0
mips                              allnoconfig   gcc-14.1.0
nios2                             allnoconfig   gcc-14.1.0
nios2                 randconfig-001-20240814   gcc-14.1.0
nios2                 randconfig-002-20240814   gcc-14.1.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc                randconfig-001-20240814   gcc-14.1.0
parisc                randconfig-002-20240814   gcc-14.1.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   clang-20
powerpc               randconfig-001-20240814   gcc-14.1.0
powerpc               randconfig-002-20240814   clang-20
powerpc               randconfig-003-20240814   gcc-14.1.0
powerpc64             randconfig-001-20240814   clang-20
powerpc64             randconfig-002-20240814   clang-15
powerpc64             randconfig-003-20240814   clang-20
riscv                            allmodconfig   clang-20
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   clang-20
riscv                               defconfig   clang-20
riscv                 randconfig-001-20240814   gcc-14.1.0
riscv                 randconfig-002-20240814   clang-20
s390                             allmodconfig   clang-20
s390                              allnoconfig   clang-20
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   clang-20
s390                  randconfig-001-20240814   gcc-14.1.0
s390                  randconfig-002-20240814   gcc-14.1.0
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sh                                  defconfig   gcc-14.1.0
sh                    randconfig-001-20240814   gcc-14.1.0
sh                    randconfig-002-20240814   gcc-14.1.0
sparc                            allmodconfig   gcc-14.1.0
sparc64                             defconfig   gcc-14.1.0
sparc64               randconfig-001-20240814   gcc-14.1.0
sparc64               randconfig-002-20240814   gcc-14.1.0
um                               allmodconfig   clang-20
um                                allnoconfig   clang-17
um                               allyesconfig   gcc-12
um                                  defconfig   clang-20
um                             i386_defconfig   gcc-12
um                    randconfig-001-20240814   clang-20
um                    randconfig-002-20240814   clang-20
um                           x86_64_defconfig   clang-15
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240814   clang-18
x86_64       buildonly-randconfig-002-20240814   gcc-12
x86_64       buildonly-randconfig-003-20240814   clang-18
x86_64       buildonly-randconfig-004-20240814   clang-18
x86_64       buildonly-randconfig-005-20240814   gcc-12
x86_64       buildonly-randconfig-006-20240814   clang-18
x86_64                              defconfig   gcc-11
x86_64                randconfig-001-20240814   clang-18
x86_64                randconfig-002-20240814   gcc-12
x86_64                randconfig-003-20240814   gcc-11
x86_64                randconfig-004-20240814   gcc-12
x86_64                randconfig-005-20240814   gcc-12
x86_64                randconfig-006-20240814   gcc-12
x86_64                randconfig-011-20240814   clang-18
x86_64                randconfig-012-20240814   clang-18
x86_64                randconfig-013-20240814   gcc-11
x86_64                randconfig-014-20240814   clang-18
x86_64                randconfig-015-20240814   gcc-12
x86_64                randconfig-016-20240814   clang-18
x86_64                randconfig-071-20240814   clang-18
x86_64                randconfig-072-20240814   clang-18
x86_64                randconfig-073-20240814   clang-18
x86_64                randconfig-074-20240814   clang-18
x86_64                randconfig-075-20240814   gcc-12
x86_64                randconfig-076-20240814   clang-18
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-14.1.0
xtensa                randconfig-001-20240814   gcc-14.1.0
xtensa                randconfig-002-20240814   gcc-14.1.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
