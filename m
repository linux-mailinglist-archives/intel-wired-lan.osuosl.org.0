Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B1176D2EEF
	for <lists+intel-wired-lan@lfdr.de>; Sat,  1 Apr 2023 09:43:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 162E480C27;
	Sat,  1 Apr 2023 07:43:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 162E480C27
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680335010;
	bh=qWaDWGYw1XdVU2phEnxzOA7huVwwRyCQMK9nVh+eIuo=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=i+kSbDZcBIF+bFv15hFWgbM8uymnMpjsEl+4U3ugwg+/BBVkkIaXjWWT0hpzrtfQw
	 rvzp7wuU8iGPy3Knu0eSY/y+q8sq87yGwDmiexXtREL9GaXrwbEt9SK+f09gPKX5CG
	 RLE2cUQpOYN/pnTQSYJKXZKCbcoGHWHzLWHXEwnFS+EN4LNgJJ/LAMNsWmZCwlpm1I
	 KUrF7hD2QKiCisOZoyIYKCPeoi+KgioPiAf1KPIo9dzx7eKKJcnDi/sFX6dB9UeaN3
	 SQF5JzIpyBD1QaQ8uzs5O2j+gNL5MuoybY7x6aC7TXhGDqT6LPZIws7Z2kyeDaAxDC
	 O/Nsdq+etsqRA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qPpzu4auntyF; Sat,  1 Apr 2023 07:43:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D6E1380C1C;
	Sat,  1 Apr 2023 07:43:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D6E1380C1C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AB33A1BF282
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Apr 2023 07:43:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 806F1605C9
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Apr 2023 07:43:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 806F1605C9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XCDFBRtuQixU for <intel-wired-lan@lists.osuosl.org>;
 Sat,  1 Apr 2023 07:43:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1502060598
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1502060598
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Apr 2023 07:43:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10666"; a="404373875"
X-IronPort-AV: E=Sophos;i="5.98,310,1673942400"; d="scan'208";a="404373875"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2023 00:43:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10666"; a="685360129"
X-IronPort-AV: E=Sophos;i="5.98,310,1673942400"; d="scan'208";a="685360129"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 01 Apr 2023 00:43:20 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1piVtP-000Mbd-0I;
 Sat, 01 Apr 2023 07:43:19 +0000
Date: Sat, 01 Apr 2023 15:42:27 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6427e063.Kf6eQJk01Q95uNse%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680335002; x=1711871002;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=RlQZLEuOi5suwty2wv2ty8Zg7J2UXCt7Wh2Lz94zvL8=;
 b=kzcQ5SizD/VN4D4YMjA6W9nL3AaTPLJWHVBthZV8Zx9YZpZrUsb/WbVH
 b1D/2vprQjwDJQd4wsZn4tb6GIrSKPNTlovazgGidJXGB6wmFwSaWVSYk
 xpAf1S4EFgZepyL97UUyMVD7yNXOMsVtw2MZhDl8Amj7lXg6Nnn6ErFBv
 xDyOW+X+wlTt58I42XLifq4pgXebIF7pinGhfZPDQdS7GcyuvC8j9Eyqn
 82To7SSysms72kxj+ost6IwHXLroXXcZxzKz2UZ8F2tc+yHaISFcyBuNr
 e6X9AEl1gpV+95wAY4sI/AQCfQgqmmDj0FwefghEE5l9FtNxKSwUmXeXD
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kzcQ5Siz
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 fcb703c87e84edbbffb2f9a110aa264c2d5e9447
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: fcb703c87e84edbbffb2f9a110aa264c2d5e9447  Documentation/eth/intel: Remove references to SourceForge

elapsed time: 890m

configs tested: 141
configs skipped: 9

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r002-20230329   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r003-20230329   gcc  
alpha                randconfig-r005-20230329   gcc  
alpha                randconfig-r026-20230329   gcc  
alpha                randconfig-r034-20230329   gcc  
alpha                randconfig-r036-20230329   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r005-20230329   gcc  
arc                  randconfig-r025-20230329   gcc  
arc                  randconfig-r033-20230329   gcc  
arc                  randconfig-r035-20230329   gcc  
arc                  randconfig-r043-20230329   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r003-20230329   gcc  
arm          buildonly-randconfig-r006-20230329   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r021-20230329   gcc  
arm                  randconfig-r034-20230329   clang
arm                  randconfig-r046-20230329   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r006-20230329   gcc  
arm64                randconfig-r025-20230329   clang
csky                                defconfig   gcc  
csky                 randconfig-r013-20230331   gcc  
csky                 randconfig-r033-20230329   gcc  
csky                 randconfig-r034-20230329   gcc  
hexagon              randconfig-r041-20230329   clang
hexagon              randconfig-r045-20230329   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                          randconfig-a001   gcc  
i386                          randconfig-a002   clang
i386                          randconfig-a003   gcc  
i386                          randconfig-a004   clang
i386                          randconfig-a005   gcc  
i386                          randconfig-a006   clang
i386                          randconfig-a011   clang
i386                          randconfig-a012   gcc  
i386                          randconfig-a013   clang
i386                          randconfig-a014   gcc  
i386                          randconfig-a015   clang
i386                          randconfig-a016   gcc  
i386                          randconfig-c001   gcc  
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r001-20230329   gcc  
ia64         buildonly-randconfig-r003-20230329   gcc  
ia64         buildonly-randconfig-r005-20230329   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r006-20230329   gcc  
ia64                 randconfig-r011-20230329   gcc  
ia64                 randconfig-r031-20230329   gcc  
ia64                 randconfig-r033-20230329   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r004-20230329   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r004-20230329   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r012-20230329   gcc  
m68k                 randconfig-r014-20230329   gcc  
m68k                 randconfig-r016-20230329   gcc  
m68k                 randconfig-r025-20230329   gcc  
microblaze   buildonly-randconfig-r005-20230329   gcc  
microblaze   buildonly-randconfig-r006-20230329   gcc  
microblaze           randconfig-r001-20230329   gcc  
microblaze           randconfig-r005-20230329   gcc  
microblaze           randconfig-r015-20230329   gcc  
microblaze           randconfig-r036-20230329   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r013-20230329   gcc  
mips                 randconfig-r021-20230329   gcc  
mips                 randconfig-r036-20230329   clang
nios2                               defconfig   gcc  
nios2                randconfig-r014-20230331   gcc  
nios2                randconfig-r031-20230329   gcc  
openrisc             randconfig-r004-20230329   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r006-20230329   gcc  
parisc               randconfig-r022-20230329   gcc  
parisc               randconfig-r024-20230329   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r024-20230329   clang
powerpc              randconfig-r032-20230329   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r016-20230331   gcc  
riscv                randconfig-r026-20230329   clang
riscv                randconfig-r032-20230329   gcc  
riscv                randconfig-r035-20230329   gcc  
riscv                randconfig-r042-20230329   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r015-20230331   gcc  
s390                 randconfig-r044-20230329   clang
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r005-20230329   gcc  
sh                   randconfig-r011-20230331   gcc  
sh                   randconfig-r021-20230329   gcc  
sh                   randconfig-r023-20230329   gcc  
sh                   randconfig-r032-20230329   gcc  
sparc        buildonly-randconfig-r001-20230329   gcc  
sparc        buildonly-randconfig-r003-20230329   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r022-20230329   gcc  
sparc64              randconfig-r003-20230329   gcc  
sparc64              randconfig-r024-20230329   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                        randconfig-a001   clang
x86_64                        randconfig-a002   gcc  
x86_64                        randconfig-a003   clang
x86_64                        randconfig-a004   gcc  
x86_64                        randconfig-a005   clang
x86_64                        randconfig-a006   gcc  
x86_64                        randconfig-a011   gcc  
x86_64                        randconfig-a012   clang
x86_64                        randconfig-a013   gcc  
x86_64                        randconfig-a014   clang
x86_64                        randconfig-a015   gcc  
x86_64                        randconfig-a016   clang
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r004-20230329   gcc  
xtensa               randconfig-r022-20230329   gcc  
xtensa               randconfig-r031-20230329   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
