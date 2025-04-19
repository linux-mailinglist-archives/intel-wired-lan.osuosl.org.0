Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B92BA94556
	for <lists+intel-wired-lan@lfdr.de>; Sat, 19 Apr 2025 21:50:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A19F181440;
	Sat, 19 Apr 2025 19:50:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jYbfWLdlFrht; Sat, 19 Apr 2025 19:50:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 864158142B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745092210;
	bh=BSXRaFIarlO5lplbci7IvlYbf3z1MjzkEr20E+PcqHQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=9XbUvQF1H9ma7RoeZDO0kMOrJsdHkMQ9DFw4O0GmPsFXJZh03tT28OMJlIPFhYqaf
	 zgBrzoyycyL8afzwED1UGSXJ/d4kkGQA33CIo2T1t4aSltrJjyd+vYgyzg8kDRIO/x
	 nU4oVuQNI3NfPsHksUEmvhsmrWwaXjGiBMB6OW7SCVUy4VQpPve1ht+f2XswdbawyA
	 wUWbKQ3eUxRuYkxxIp0BrxqLbciRq2C/U2fMTpeirtwuyqJ7/Q2/DJ378sgIt4pOiS
	 ig0P+2QPkltLTJR18jl73pATeBcvvrijDHRJ39tHioImiKZcAD7/xLMSqOIGj+sje6
	 T0jV6suLcO57A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 864158142B;
	Sat, 19 Apr 2025 19:50:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 128AD22F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Apr 2025 19:50:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 041524061F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Apr 2025 19:50:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EB7b-W4mlH4J for <intel-wired-lan@lists.osuosl.org>;
 Sat, 19 Apr 2025 19:50:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 104A640611
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 104A640611
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 104A640611
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Apr 2025 19:50:07 +0000 (UTC)
X-CSE-ConnectionGUID: Ge+8UVNfS6q4wu0VL67vwA==
X-CSE-MsgGUID: o5CViSQfTMmnONeo59ZAsA==
X-IronPort-AV: E=McAfee;i="6700,10204,11408"; a="45809957"
X-IronPort-AV: E=Sophos;i="6.15,225,1739865600"; d="scan'208";a="45809957"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2025 12:50:07 -0700
X-CSE-ConnectionGUID: rubCBR+uTbeB33/57MxujA==
X-CSE-MsgGUID: nEOM6NRRQICq3+9Fe/9JUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,225,1739865600"; d="scan'208";a="131385982"
Received: from lkp-server01.sh.intel.com (HELO 61e10e65ea0f) ([10.239.97.150])
 by fmviesa007.fm.intel.com with ESMTP; 19 Apr 2025 12:50:07 -0700
Received: from kbuild by 61e10e65ea0f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1u6ECS-00048G-16
 for intel-wired-lan@lists.osuosl.org; Sat, 19 Apr 2025 19:50:04 +0000
Date: Sun, 20 Apr 2025 03:49:59 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202504200349.KfCC6ONp-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745092208; x=1776628208;
 h=date:from:to:subject:message-id;
 bh=LtFLLxbNhoMVfP5V2sS+XE1Z8s9fOTmttV+WhSqbatw=;
 b=BS/f0Us8lZ5tOoSzYTFsadUiuSvAow4Bp45ZEoONb77mR7kICb2DqqWS
 qU4vMLzwq+4e/jfpKYIdkENamULVhnbi/q9G9783NBs1sA98Te6hqTd8X
 DaqYaXDrJfXLTwgUGVrYFgCYFleoew9e2KOgdwHgD35H3qMQldiuXTRrb
 BFmLRMXa9Pi4vsFs5jGbtYlTds0adXfB45K3FE1DR6PyjldjyaIYMVu0Q
 SY/xMVNPHNTU5lkiXqiKXYZk5cwwNj8FMOJpokEX7+HRY7nKsKhX3oHFH
 VhDjy0BSF4vNS8xm+SI22myjddYqXgVtw3edKxRHN9pRSj+W8zx6bWHVo
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=BS/f0Us8
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 0c6f877952c17ae1c7211d7c6b27a14eaaedefa3
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 0c6f877952c17ae1c7211d7c6b27a14eaaedefa3  idpf: add support for Rx timestamping

elapsed time: 1453m

configs tested: 120
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    gcc-14.2.0
arc                              allmodconfig    gcc-14.2.0
arc                               allnoconfig    gcc-14.2.0
arc                              allyesconfig    gcc-14.2.0
arc                   randconfig-001-20250419    gcc-14.2.0
arc                   randconfig-002-20250419    gcc-14.2.0
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    clang-21
arm                              allyesconfig    gcc-14.2.0
arm                       multi_v4t_defconfig    clang-16
arm                   randconfig-001-20250419    gcc-6.5.0
arm                   randconfig-002-20250419    gcc-7.5.0
arm                   randconfig-003-20250419    clang-18
arm                   randconfig-004-20250419    gcc-7.5.0
arm                         socfpga_defconfig    gcc-14.2.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-14.2.0
arm64                 randconfig-001-20250419    gcc-7.5.0
arm64                 randconfig-002-20250419    gcc-9.5.0
arm64                 randconfig-003-20250419    gcc-5.5.0
arm64                 randconfig-004-20250419    clang-21
csky                              allnoconfig    gcc-14.2.0
csky                  randconfig-001-20250419    gcc-11.5.0
csky                  randconfig-002-20250419    gcc-11.5.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-21
hexagon                          allyesconfig    clang-21
hexagon               randconfig-001-20250419    clang-21
hexagon               randconfig-002-20250419    clang-21
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250419    gcc-11
i386        buildonly-randconfig-002-20250419    gcc-12
i386        buildonly-randconfig-003-20250419    clang-20
i386        buildonly-randconfig-004-20250419    clang-20
i386        buildonly-randconfig-005-20250419    clang-20
i386        buildonly-randconfig-006-20250419    clang-20
i386                                defconfig    clang-20
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch             randconfig-001-20250419    gcc-14.2.0
loongarch             randconfig-002-20250419    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
m68k                        m5307c3_defconfig    gcc-14.2.0
microblaze                       alldefconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                        omega2p_defconfig    clang-21
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250419    gcc-7.5.0
nios2                 randconfig-002-20250419    gcc-11.5.0
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
openrisc                            defconfig    gcc-14.2.0
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                              defconfig    gcc-14.2.0
parisc                randconfig-001-20250419    gcc-10.5.0
parisc                randconfig-002-20250419    gcc-14.2.0
powerpc                           allnoconfig    gcc-14.2.0
powerpc                          allyesconfig    clang-21
powerpc                     asp8347_defconfig    clang-21
powerpc                      chrp32_defconfig    clang-19
powerpc                      ppc64e_defconfig    gcc-14.2.0
powerpc                         ps3_defconfig    gcc-14.2.0
powerpc               randconfig-001-20250419    gcc-5.5.0
powerpc               randconfig-002-20250419    gcc-9.3.0
powerpc               randconfig-003-20250419    gcc-5.5.0
powerpc64             randconfig-001-20250419    gcc-5.5.0
powerpc64             randconfig-002-20250419    gcc-10.5.0
powerpc64             randconfig-003-20250419    clang-21
riscv                            allmodconfig    clang-21
riscv                             allnoconfig    gcc-14.2.0
riscv                            allyesconfig    clang-16
riscv                 randconfig-001-20250419    gcc-14.2.0
riscv                 randconfig-002-20250419    clang-21
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-14.2.0
s390                  randconfig-001-20250419    clang-21
s390                  randconfig-002-20250419    gcc-7.5.0
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                        dreamcast_defconfig    gcc-14.2.0
sh                    randconfig-001-20250419    gcc-5.5.0
sh                    randconfig-002-20250419    gcc-11.5.0
sh                             sh03_defconfig    gcc-14.2.0
sh                             shx3_defconfig    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250419    gcc-12.4.0
sparc                 randconfig-002-20250419    gcc-8.5.0
sparc64               randconfig-001-20250419    gcc-8.5.0
sparc64               randconfig-002-20250419    gcc-10.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    gcc-12
um                    randconfig-001-20250419    clang-19
um                    randconfig-002-20250419    gcc-12
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250419    gcc-12
x86_64      buildonly-randconfig-002-20250419    gcc-11
x86_64      buildonly-randconfig-003-20250419    gcc-12
x86_64      buildonly-randconfig-004-20250419    gcc-11
x86_64      buildonly-randconfig-005-20250419    gcc-12
x86_64      buildonly-randconfig-006-20250419    clang-20
x86_64                              defconfig    gcc-11
xtensa                            allnoconfig    gcc-14.2.0
xtensa                       common_defconfig    gcc-14.2.0
xtensa                  nommu_kc705_defconfig    gcc-14.2.0
xtensa                randconfig-001-20250419    gcc-10.5.0
xtensa                randconfig-002-20250419    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
