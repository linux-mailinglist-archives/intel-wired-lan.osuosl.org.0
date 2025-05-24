Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DD336AC3191
	for <lists+intel-wired-lan@lfdr.de>; Sat, 24 May 2025 23:56:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6160F6071C;
	Sat, 24 May 2025 21:56:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id toyeQOVeESqG; Sat, 24 May 2025 21:56:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4DC7460741
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748123803;
	bh=Y2FnvHqLg0dIMOlj64Xm/gf7ws+u6HQKuyxCKFzizIw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=rTHGJ9axSk3HvuZS8x5MiMFESHjauUZplgrd10qVUn9Iq8DOuzxWIAB50aZEcxyUl
	 PvfL/sl7El3Fs6SQnGIZu/q5Q/Qei4WjYsxtpOp5tQBbAnUQBDx7ODKv35Qirnrl8J
	 kHLmUs12EpJaormdabN8K/7cSsLCO9vefxxRyZ7wV/SoVDbPisyJ5VT5Zc8zbjbIVh
	 giMEkCRRQxVdR0UgOccaz34VchAfn6jRxM0hEVsabdV4Kevzq9F657D8iVVDQYwszD
	 pcVodT3ogNsJywEr+PIHrSCwyXidHmRW/Klh5Zyi4HDU0xhdor7F+XD3ybtoZIWrqN
	 hh21FkZ1mMIpg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4DC7460741;
	Sat, 24 May 2025 21:56:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 06898119
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 May 2025 21:56:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 03AFD606BE
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 May 2025 21:56:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id F03Dv9UxhH4G for <intel-wired-lan@lists.osuosl.org>;
 Sat, 24 May 2025 21:56:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C789F60680
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C789F60680
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C789F60680
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 May 2025 21:56:40 +0000 (UTC)
X-CSE-ConnectionGUID: K/lnBaUpSPieQBe12q/1qA==
X-CSE-MsgGUID: 3AjFJFziRnKiSG2igWZ1zw==
X-IronPort-AV: E=McAfee;i="6700,10204,11443"; a="53934489"
X-IronPort-AV: E=Sophos;i="6.15,311,1739865600"; d="scan'208";a="53934489"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2025 14:56:40 -0700
X-CSE-ConnectionGUID: 78MyJWjuTK+uCnb1ZgXSLg==
X-CSE-MsgGUID: lRZuZD3jSdW0RhMbFmWKOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,311,1739865600"; d="scan'208";a="146551596"
Received: from lkp-server01.sh.intel.com (HELO 1992f890471c) ([10.239.97.150])
 by fmviesa005.fm.intel.com with ESMTP; 24 May 2025 14:56:39 -0700
Received: from kbuild by 1992f890471c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uIwr6-000RTo-2l
 for intel-wired-lan@lists.osuosl.org; Sat, 24 May 2025 21:56:36 +0000
Date: Sun, 25 May 2025 05:56:09 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202505250500.Pbdtp4Dc-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748123801; x=1779659801;
 h=date:from:to:subject:message-id;
 bh=cxHhUnEunQrYnJ7mkGvV8PfRWawB0FopyKk0tVY/3qY=;
 b=D16UFbrReH/3qaOslhZMe2YbPgEWNPS5BYQOInmdDjr793LrWX7cfwsZ
 UHpTAM85RJm9OPTX4+s9IbH/6ZvgxWmDXXYmXwdmUotEXZrb9Vl2FTurZ
 x/ZrTwvzbEKCtp2i6r1KxLumld0lIC3C76I2A2Das/Uh0MMk26kISYJCC
 d/RBECXhbRZBgOh+kfyDPbd7qKKi9L6y6FiADX3XHoPAUFjFu+9KTo2Vm
 S9dPjp9shsZHn9hH0eohtike6knL/PvsqaGlu4AZoW6kX4pSHGDN9KWMs
 eeyidi5Akui3DT7s1leEo2R/hvRWE8wPcu83RE5js/nLHme5SI3/DSm0J
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=D16UFbrR
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 aea84c85ba9cee09d7be08ee9f550e39d4fdd1da
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: aea84c85ba9cee09d7be08ee9f550e39d4fdd1da  net: ice: Perform accurate aRFS flow match

elapsed time: 1412m

configs tested: 121
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    gcc-14.2.0
arc                              allmodconfig    gcc-14.2.0
arc                               allnoconfig    gcc-14.2.0
arc                              allyesconfig    gcc-14.2.0
arc                   randconfig-001-20250524    gcc-15.1.0
arc                   randconfig-002-20250524    gcc-15.1.0
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    clang-21
arm                              allyesconfig    gcc-14.2.0
arm                       aspeed_g4_defconfig    clang-21
arm                      integrator_defconfig    clang-21
arm                         lpc32xx_defconfig    clang-17
arm                          moxart_defconfig    gcc-14.2.0
arm                   randconfig-001-20250524    gcc-7.5.0
arm                   randconfig-002-20250524    gcc-7.5.0
arm                   randconfig-003-20250524    clang-20
arm                   randconfig-004-20250524    gcc-7.5.0
arm                        spear6xx_defconfig    clang-21
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-14.2.0
arm64                 randconfig-001-20250524    gcc-5.5.0
arm64                 randconfig-002-20250524    gcc-7.5.0
arm64                 randconfig-003-20250524    clang-19
arm64                 randconfig-004-20250524    gcc-7.5.0
csky                              allnoconfig    gcc-14.2.0
csky                  randconfig-001-20250524    gcc-11.5.0
csky                  randconfig-002-20250524    gcc-9.3.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-21
hexagon                          allyesconfig    clang-21
hexagon               randconfig-001-20250524    clang-21
hexagon               randconfig-002-20250524    clang-21
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250524    clang-20
i386        buildonly-randconfig-002-20250524    gcc-12
i386        buildonly-randconfig-003-20250524    gcc-12
i386        buildonly-randconfig-004-20250524    gcc-12
i386        buildonly-randconfig-005-20250524    clang-20
i386        buildonly-randconfig-006-20250524    clang-20
i386                                defconfig    clang-20
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch             randconfig-001-20250524    gcc-13.3.0
loongarch             randconfig-002-20250524    gcc-15.1.0
m68k                             alldefconfig    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
m68k                         amcore_defconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250524    gcc-13.3.0
nios2                 randconfig-002-20250524    gcc-9.3.0
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                randconfig-001-20250524    gcc-6.5.0
parisc                randconfig-002-20250524    gcc-8.5.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    gcc-14.2.0
powerpc                          allyesconfig    clang-21
powerpc                     asp8347_defconfig    clang-21
powerpc                      ppc64e_defconfig    gcc-14.2.0
powerpc               randconfig-001-20250524    gcc-5.5.0
powerpc               randconfig-002-20250524    gcc-7.5.0
powerpc               randconfig-003-20250524    clang-21
powerpc64             randconfig-001-20250524    gcc-7.5.0
powerpc64             randconfig-002-20250524    gcc-10.5.0
powerpc64             randconfig-003-20250524    clang-21
riscv                            allmodconfig    clang-21
riscv                             allnoconfig    gcc-14.2.0
riscv                            allyesconfig    clang-16
riscv                 randconfig-001-20250524    clang-21
riscv                 randconfig-002-20250524    gcc-9.3.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-14.2.0
s390                                defconfig    clang-21
s390                  randconfig-001-20250524    clang-17
s390                  randconfig-002-20250524    gcc-8.5.0
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                         ecovec24_defconfig    gcc-14.2.0
sh                            migor_defconfig    gcc-14.2.0
sh                    randconfig-001-20250524    gcc-13.3.0
sh                    randconfig-002-20250524    gcc-7.5.0
sh                           se7721_defconfig    gcc-14.2.0
sh                        sh7757lcr_defconfig    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250524    gcc-6.5.0
sparc                 randconfig-002-20250524    gcc-6.5.0
sparc64               randconfig-001-20250524    gcc-8.5.0
sparc64               randconfig-002-20250524    gcc-6.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    gcc-12
um                    randconfig-001-20250524    gcc-12
um                    randconfig-002-20250524    clang-21
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250524    gcc-12
x86_64      buildonly-randconfig-002-20250524    gcc-12
x86_64      buildonly-randconfig-003-20250524    gcc-12
x86_64      buildonly-randconfig-004-20250524    gcc-12
x86_64      buildonly-randconfig-005-20250524    gcc-11
x86_64      buildonly-randconfig-006-20250524    clang-20
x86_64                              defconfig    gcc-11
x86_64                          rhel-9.4-rust    clang-18
xtensa                            allnoconfig    gcc-14.2.0
xtensa                  nommu_kc705_defconfig    gcc-14.2.0
xtensa                randconfig-001-20250524    gcc-8.5.0
xtensa                randconfig-002-20250524    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
