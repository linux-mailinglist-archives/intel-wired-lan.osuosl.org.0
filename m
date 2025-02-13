Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A092BA33A4D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Feb 2025 09:54:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C3343838E0;
	Thu, 13 Feb 2025 08:54:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IBaoGA5Z3v8w; Thu, 13 Feb 2025 08:54:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2D0C8838CC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739436851;
	bh=MOxuTV29wia0lWA6hTpmYtK0A3yWO1tYlBGFWAIV6oM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=93n5hMQ893Gc/TiFvpt/J0JCdvn2ZVkByNHUuEfUidKWzHMwKGmHGMxoF7hm/erZD
	 TT/wtLoeHAgUpfVny4sipetX/RrNyZdmRcjKcQVMMjtIzE4Iqv8enXXWRc0aFV9ZCH
	 qaqVY5lGHhHRG8CAdG/jzh7xs9fmg3kmW54eoyP9KjxQSLohpGk0rN12Zg65q5YUcJ
	 VdnklMl2+xqrDDoNiRtaiDcfPXXUdJJPKzbvsu7KEZXIYlMnaEom+2pwHmIjSfv5wH
	 0IFZQKsmEBjFFCI0m9Xyd2PrnVbutZTdO+29oqgluXLazT/EcAO5XrWptG14i5+kB+
	 y2ZOOVK4ERCSw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2D0C8838CC;
	Thu, 13 Feb 2025 08:54:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 2783B199
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 08:54:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1630E40C6C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 08:54:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d1Q9K4EZ9lvd for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Feb 2025 08:54:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 96E7240C55
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 96E7240C55
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 96E7240C55
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 08:54:07 +0000 (UTC)
X-CSE-ConnectionGUID: fCqwQzc+RAWheoGdeFoKXQ==
X-CSE-MsgGUID: kDbprDkkTqqn++osgm8Jow==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="65481948"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="65481948"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 00:54:07 -0800
X-CSE-ConnectionGUID: I0hyI+W4SQKchptllDmj/g==
X-CSE-MsgGUID: 0UYyG7BSQ8yZl/LS26OkzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="118021123"
Received: from lkp-server01.sh.intel.com (HELO d63d4d77d921) ([10.239.97.150])
 by orviesa003.jf.intel.com with ESMTP; 13 Feb 2025 00:54:06 -0800
Received: from kbuild by d63d4d77d921 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tiUyx-0016qG-2g
 for intel-wired-lan@lists.osuosl.org; Thu, 13 Feb 2025 08:54:03 +0000
Date: Thu, 13 Feb 2025 16:53:18 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202502131612.P3hGFHFm-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739436847; x=1770972847;
 h=date:from:to:subject:message-id;
 bh=kGv95H9xaW4ZC14ty3J4hoPx09NuwX3+u4I75h/T5jY=;
 b=V2zGuJGTPezJ4B+ulivNccYY66TuGuvJ0Ng0k1TwWX2Ic6QZgAr9MfZI
 cqJKHwbuyIXpBs4qAYx+J/nd2Fsm0eayhF7dY/deUnzM6Z8RvjnV3gzln
 EUqpoipUCUQ7x86qnP8CQY5Iuxi1hjYfyOKkAUwYMPYCv/AzFead+6BZk
 CTw50l14nJtGZN/ihlCNnMlWsksoTFLFfIS3H0BlCIY2vG767yOLlx2DB
 19PF4I/SVggMK3kn7n8gUf2eEV+QGTq12A/Dw5w5lvDPGAZrnBV4AjYCi
 dBZ8f9whjCStgX6RNX7B2rrbDYSSSLcFQ0PHD8no4RZfNPtmDu8iX/0Cz
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=V2zGuJGT
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 4e41231249f4083a095085ff86e317e29313c2c3
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
branch HEAD: 4e41231249f4083a095085ff86e317e29313c2c3  Merge branch '100GbE' of git://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue

elapsed time: 1693m

configs tested: 205
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    clang-21
alpha                            allyesconfig    gcc-14.2.0
alpha                               defconfig    gcc-14.2.0
arc                              allmodconfig    clang-18
arc                               allnoconfig    gcc-14.2.0
arc                              allyesconfig    clang-18
arc                                 defconfig    gcc-14.2.0
arc                   randconfig-001-20250213    gcc-13.2.0
arc                   randconfig-001-20250213    gcc-14.2.0
arc                   randconfig-002-20250213    gcc-13.2.0
arc                   randconfig-002-20250213    gcc-14.2.0
arm                              allmodconfig    clang-18
arm                               allnoconfig    gcc-14.2.0
arm                              allyesconfig    clang-18
arm                                 defconfig    gcc-14.2.0
arm                   randconfig-001-20250213    clang-17
arm                   randconfig-001-20250213    gcc-14.2.0
arm                   randconfig-002-20250213    clang-15
arm                   randconfig-002-20250213    gcc-14.2.0
arm                   randconfig-003-20250213    clang-21
arm                   randconfig-003-20250213    gcc-14.2.0
arm                   randconfig-004-20250213    gcc-14.2.0
arm64                            allmodconfig    clang-18
arm64                             allnoconfig    gcc-14.2.0
arm64                               defconfig    gcc-14.2.0
arm64                 randconfig-001-20250213    clang-19
arm64                 randconfig-001-20250213    gcc-14.2.0
arm64                 randconfig-002-20250213    gcc-14.2.0
arm64                 randconfig-003-20250213    gcc-14.2.0
arm64                 randconfig-004-20250213    clang-21
arm64                 randconfig-004-20250213    gcc-14.2.0
csky                              allnoconfig    gcc-14.2.0
csky                                defconfig    gcc-14.2.0
csky                  randconfig-001-20250213    clang-21
csky                  randconfig-001-20250213    gcc-14.2.0
csky                  randconfig-002-20250213    clang-21
csky                  randconfig-002-20250213    gcc-14.2.0
hexagon                          allmodconfig    clang-21
hexagon                           allnoconfig    gcc-14.2.0
hexagon                          allyesconfig    clang-18
hexagon                          allyesconfig    clang-21
hexagon                             defconfig    gcc-14.2.0
hexagon               randconfig-001-20250213    clang-21
hexagon               randconfig-002-20250213    clang-18
hexagon               randconfig-002-20250213    clang-21
i386                             allmodconfig    clang-19
i386                             allmodconfig    gcc-12
i386                              allnoconfig    clang-19
i386                              allnoconfig    gcc-12
i386                             allyesconfig    clang-19
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250213    clang-19
i386        buildonly-randconfig-001-20250213    gcc-12
i386        buildonly-randconfig-002-20250213    clang-19
i386        buildonly-randconfig-003-20250213    clang-19
i386        buildonly-randconfig-004-20250213    clang-19
i386        buildonly-randconfig-005-20250213    clang-19
i386        buildonly-randconfig-006-20250213    clang-19
i386                                defconfig    clang-19
i386                  randconfig-001-20250213    clang-19
i386                  randconfig-002-20250213    clang-19
i386                  randconfig-003-20250213    clang-19
i386                  randconfig-004-20250213    clang-19
i386                  randconfig-005-20250213    clang-19
i386                  randconfig-006-20250213    clang-19
i386                  randconfig-007-20250213    clang-19
i386                  randconfig-011-20250213    gcc-12
i386                  randconfig-012-20250213    gcc-12
i386                  randconfig-013-20250213    gcc-12
i386                  randconfig-014-20250213    gcc-12
i386                  randconfig-015-20250213    gcc-12
i386                  randconfig-016-20250213    gcc-12
i386                  randconfig-017-20250213    gcc-12
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch                           defconfig    gcc-14.2.0
loongarch             randconfig-001-20250213    clang-21
loongarch             randconfig-001-20250213    gcc-14.2.0
loongarch             randconfig-002-20250213    clang-21
loongarch             randconfig-002-20250213    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
m68k                                defconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
microblaze                          defconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-14.2.0
nios2                               defconfig    gcc-14.2.0
nios2                 randconfig-001-20250213    clang-21
nios2                 randconfig-001-20250213    gcc-14.2.0
nios2                 randconfig-002-20250213    clang-21
nios2                 randconfig-002-20250213    gcc-14.2.0
openrisc                          allnoconfig    clang-21
openrisc                         allyesconfig    gcc-14.2.0
openrisc                            defconfig    gcc-12
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    clang-21
parisc                           allyesconfig    gcc-14.2.0
parisc                              defconfig    gcc-12
parisc                randconfig-001-20250213    clang-21
parisc                randconfig-001-20250213    gcc-14.2.0
parisc                randconfig-002-20250213    clang-21
parisc                randconfig-002-20250213    gcc-14.2.0
parisc64                            defconfig    gcc-14.2.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    clang-21
powerpc                          allyesconfig    gcc-14.2.0
powerpc               randconfig-001-20250213    clang-17
powerpc               randconfig-001-20250213    clang-21
powerpc               randconfig-002-20250213    clang-21
powerpc               randconfig-002-20250213    gcc-14.2.0
powerpc               randconfig-003-20250213    clang-21
powerpc               randconfig-003-20250213    gcc-14.2.0
powerpc64             randconfig-001-20250213    clang-19
powerpc64             randconfig-001-20250213    clang-21
powerpc64             randconfig-002-20250213    clang-21
powerpc64             randconfig-003-20250213    clang-21
powerpc64             randconfig-003-20250213    gcc-14.2.0
riscv                            allmodconfig    gcc-14.2.0
riscv                             allnoconfig    clang-21
riscv                            allyesconfig    gcc-14.2.0
riscv                               defconfig    gcc-12
riscv                 randconfig-001-20250213    clang-19
riscv                 randconfig-001-20250213    clang-21
riscv                 randconfig-002-20250213    clang-17
riscv                 randconfig-002-20250213    clang-21
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-14.2.0
s390                                defconfig    gcc-12
s390                  randconfig-001-20250213    clang-21
s390                  randconfig-001-20250213    gcc-14.2.0
s390                  randconfig-002-20250213    clang-21
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                                  defconfig    gcc-12
sh                    randconfig-001-20250213    clang-21
sh                    randconfig-001-20250213    gcc-14.2.0
sh                    randconfig-002-20250213    clang-21
sh                    randconfig-002-20250213    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250213    clang-21
sparc                 randconfig-001-20250213    gcc-14.2.0
sparc                 randconfig-002-20250213    clang-21
sparc                 randconfig-002-20250213    gcc-14.2.0
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20250213    clang-21
sparc64               randconfig-001-20250213    gcc-14.2.0
sparc64               randconfig-002-20250213    clang-21
sparc64               randconfig-002-20250213    gcc-14.2.0
um                               allmodconfig    clang-21
um                                allnoconfig    clang-21
um                               allyesconfig    clang-21
um                               allyesconfig    gcc-12
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250213    clang-19
um                    randconfig-001-20250213    clang-21
um                    randconfig-002-20250213    clang-21
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64      buildonly-randconfig-001-20250213    gcc-11
x86_64      buildonly-randconfig-001-20250213    gcc-12
x86_64      buildonly-randconfig-002-20250213    gcc-12
x86_64      buildonly-randconfig-003-20250213    clang-19
x86_64      buildonly-randconfig-003-20250213    gcc-12
x86_64      buildonly-randconfig-004-20250213    gcc-12
x86_64      buildonly-randconfig-005-20250213    gcc-12
x86_64      buildonly-randconfig-006-20250213    gcc-12
x86_64                              defconfig    clang-19
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-19
x86_64                randconfig-001-20250213    clang-19
x86_64                randconfig-002-20250213    clang-19
x86_64                randconfig-003-20250213    clang-19
x86_64                randconfig-004-20250213    clang-19
x86_64                randconfig-005-20250213    clang-19
x86_64                randconfig-006-20250213    clang-19
x86_64                randconfig-007-20250213    clang-19
x86_64                randconfig-008-20250213    clang-19
x86_64                randconfig-071-20250213    gcc-12
x86_64                randconfig-072-20250213    gcc-12
x86_64                randconfig-073-20250213    gcc-12
x86_64                randconfig-074-20250213    gcc-12
x86_64                randconfig-075-20250213    gcc-12
x86_64                randconfig-076-20250213    gcc-12
x86_64                randconfig-077-20250213    gcc-12
x86_64                randconfig-078-20250213    gcc-12
x86_64                               rhel-9.4    clang-19
x86_64                           rhel-9.4-bpf    clang-19
x86_64                         rhel-9.4-kunit    clang-19
x86_64                           rhel-9.4-ltp    clang-19
x86_64                          rhel-9.4-rust    clang-19
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20250213    clang-21
xtensa                randconfig-001-20250213    gcc-14.2.0
xtensa                randconfig-002-20250213    clang-21
xtensa                randconfig-002-20250213    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
