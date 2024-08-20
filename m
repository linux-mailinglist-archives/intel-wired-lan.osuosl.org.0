Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EBB8B958E72
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Aug 2024 21:05:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9E9F060AF2;
	Tue, 20 Aug 2024 19:05:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8XH9OmblGtiN; Tue, 20 Aug 2024 19:05:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6A2FC60AC2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724180756;
	bh=7HoEBzCt+1cVdPod9b0+3hKlBPOSpKqfOMfB4D38hT0=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=hqJhc4VyVruG1rBN5q3lnSbMMZy9Csd7oE9SWqTlZIJ/XiTXr5dvPO+qC/cDPqqvO
	 XR11hTpUwgdLUNTR9mwZU5nqUCZLX88H13YZGsV6DIyZZttqcmDqevsyPtzP7JULPJ
	 qiFsl2b89iavZnvnUzL9dbSy2EsZJIijM22TTHF9o+8dXbLHBdy5njVSN1IJq++nK2
	 140vpyMl7T+yLosbp98qn13hGzU0ympYrJEe4JLujaGXxqtohtd7NhHsRLg/h2oHej
	 TY7HgDko3tpTTuHNDVpOvYxL1jVo3fPGfz/2Ppxet04lsN+8FEULvz0j2f9zzsAjI4
	 sC9tP2UlY6BCg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6A2FC60AC2;
	Tue, 20 Aug 2024 19:05:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E381F1BF378
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 19:05:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D08E8606AF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 19:05:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SdwBqKU-rt9k for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Aug 2024 19:05:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D7CC760725
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D7CC760725
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D7CC760725
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 19:05:52 +0000 (UTC)
X-CSE-ConnectionGUID: hKMQMCLFT2GU3k7ykLc7Zg==
X-CSE-MsgGUID: p4n1xWlJSMWO+cZ8uNN2Dg==
X-IronPort-AV: E=McAfee;i="6700,10204,11170"; a="26306331"
X-IronPort-AV: E=Sophos;i="6.10,162,1719903600"; d="scan'208";a="26306331"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 12:05:51 -0700
X-CSE-ConnectionGUID: r7iahKhcSGqYJ3O/dImVeQ==
X-CSE-MsgGUID: NE107TIKRlGftvfU6LQ8oQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,162,1719903600"; d="scan'208";a="60470733"
Received: from lkp-server01.sh.intel.com (HELO 9a732dc145d3) ([10.239.97.150])
 by fmviesa006.fm.intel.com with ESMTP; 20 Aug 2024 12:05:50 -0700
Received: from kbuild by 9a732dc145d3 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sgUAu-000AWQ-1S
 for intel-wired-lan@lists.osuosl.org; Tue, 20 Aug 2024 19:05:48 +0000
Date: Wed, 21 Aug 2024 03:05:38 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202408210336.1KbQZCI4-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724180753; x=1755716753;
 h=date:from:to:subject:message-id;
 bh=VCzerH6KAVM8Ri8Ko8Blk3dy0bouRcmxYHIeMM0aITo=;
 b=iscQluFGOjk3v+lgYJpM/ABhIBQIKRzDDdRiHJ71tG126L6JSzdX7OYb
 eMQtG0MDcIiCzN0r1ObhfE7JYz0ujmcYzuPsm1mTJ8ek/IoPzQua1JIKZ
 8Los0ea18XBYVMsBCs9T3JNcmKbPGA5Xi3HbjARJ6y9XNxeehravdANYv
 nyc+4WwnTpBhFHKBjUdHC1zgXmhNzIYs+YcRL5cuBQFtCxyy+GSKfmqqg
 S2fejdeKVz+9k8npxiT+5h2Go/HTDdCOF3ktvA/3qHlIEKAX8eHifvL0n
 f3oB65gGhte/thtwcqu7j5yqtc0YY4SNkS8LGyqT2GCSqQcHJ1TwoEzef
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iscQluFG
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 27e4fad54248090399e7764cd7bd2efabe69664e
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: 27e4fad54248090399e7764cd7bd2efabe69664e  ice: subfunction activation and base devlink ops

elapsed time: 1124m

configs tested: 123
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.3.0
alpha                            allyesconfig   gcc-13.3.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                   randconfig-001-20240820   gcc-13.2.0
arc                   randconfig-002-20240820   gcc-13.2.0
arm                              allmodconfig   gcc-14.1.0
arm                               allnoconfig   clang-20
arm                              allyesconfig   gcc-14.1.0
arm                   randconfig-001-20240820   clang-20
arm                   randconfig-002-20240820   clang-20
arm                   randconfig-003-20240820   clang-20
arm                   randconfig-004-20240820   clang-20
arm64                            allmodconfig   clang-20
arm64                             allnoconfig   gcc-14.1.0
arm64                 randconfig-001-20240820   clang-20
arm64                 randconfig-002-20240820   clang-20
arm64                 randconfig-003-20240820   gcc-14.1.0
arm64                 randconfig-004-20240820   clang-20
csky                              allnoconfig   gcc-14.1.0
csky                  randconfig-001-20240820   gcc-14.1.0
csky                  randconfig-002-20240820   gcc-14.1.0
hexagon                          allmodconfig   clang-20
hexagon                           allnoconfig   clang-20
hexagon                          allyesconfig   clang-20
hexagon               randconfig-001-20240820   clang-20
hexagon               randconfig-002-20240820   clang-20
i386                             allmodconfig   gcc-12
i386                              allnoconfig   gcc-12
i386                             allyesconfig   gcc-12
i386                                defconfig   clang-18
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-14.1.0
loongarch             randconfig-001-20240820   gcc-14.1.0
loongarch             randconfig-002-20240820   gcc-14.1.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-14.1.0
m68k                             allyesconfig   gcc-14.1.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-14.1.0
microblaze                       allyesconfig   gcc-14.1.0
mips                              allnoconfig   gcc-14.1.0
nios2                             allnoconfig   gcc-14.1.0
nios2                 randconfig-001-20240820   gcc-14.1.0
nios2                 randconfig-002-20240820   gcc-14.1.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc                randconfig-001-20240820   gcc-14.1.0
parisc                randconfig-002-20240820   gcc-14.1.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   clang-20
powerpc               randconfig-003-20240820   clang-20
powerpc64             randconfig-001-20240820   gcc-14.1.0
powerpc64             randconfig-002-20240820   clang-20
powerpc64             randconfig-003-20240820   gcc-14.1.0
riscv                            allmodconfig   clang-20
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   clang-20
riscv                               defconfig   clang-20
riscv                 randconfig-001-20240820   clang-20
riscv                 randconfig-002-20240820   gcc-14.1.0
s390                             allmodconfig   clang-20
s390                              allnoconfig   clang-20
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   clang-20
s390                  randconfig-001-20240820   gcc-14.1.0
s390                  randconfig-002-20240820   gcc-14.1.0
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sh                                  defconfig   gcc-14.1.0
sh                    randconfig-001-20240820   gcc-14.1.0
sh                    randconfig-002-20240820   gcc-14.1.0
sparc                            allmodconfig   gcc-14.1.0
sparc64                             defconfig   gcc-14.1.0
sparc64               randconfig-001-20240820   gcc-14.1.0
sparc64               randconfig-002-20240820   gcc-14.1.0
um                               allmodconfig   clang-20
um                                allnoconfig   clang-17
um                               allyesconfig   gcc-12
um                                  defconfig   clang-20
um                             i386_defconfig   gcc-12
um                    randconfig-001-20240820   gcc-12
um                    randconfig-002-20240820   clang-20
um                           x86_64_defconfig   clang-15
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240820   clang-18
x86_64       buildonly-randconfig-002-20240820   gcc-11
x86_64       buildonly-randconfig-003-20240820   clang-18
x86_64       buildonly-randconfig-004-20240820   clang-18
x86_64       buildonly-randconfig-005-20240820   clang-18
x86_64       buildonly-randconfig-006-20240820   clang-18
x86_64                              defconfig   gcc-11
x86_64                randconfig-001-20240820   gcc-12
x86_64                randconfig-002-20240820   gcc-12
x86_64                randconfig-003-20240820   clang-18
x86_64                randconfig-004-20240820   gcc-12
x86_64                randconfig-005-20240820   clang-18
x86_64                randconfig-006-20240820   gcc-12
x86_64                randconfig-011-20240820   clang-18
x86_64                randconfig-012-20240820   gcc-12
x86_64                randconfig-013-20240820   clang-18
x86_64                randconfig-014-20240820   clang-18
x86_64                randconfig-015-20240820   gcc-12
x86_64                randconfig-016-20240820   clang-18
x86_64                randconfig-071-20240820   gcc-12
x86_64                randconfig-072-20240820   gcc-12
x86_64                randconfig-073-20240820   gcc-12
x86_64                randconfig-074-20240820   clang-18
x86_64                randconfig-075-20240820   clang-18
x86_64                randconfig-076-20240820   clang-18
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-14.1.0
xtensa                randconfig-001-20240820   gcc-14.1.0
xtensa                randconfig-002-20240820   gcc-14.1.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
