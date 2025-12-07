Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C8626CAB17F
	for <lists+intel-wired-lan@lfdr.de>; Sun, 07 Dec 2025 05:53:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E809D407A2;
	Sun,  7 Dec 2025 04:53:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NDLeCXnMFZjT; Sun,  7 Dec 2025 04:53:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F32A7407A8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765083207;
	bh=udpmn7wWJNdI3f497BvgcFT/gXm5Ot6/iYo0qsgbLyU=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=sHpxPJfdeUqc+BlKJA4jgpx+3XuIeSCP6iRhxEeiXASEcO4JIKUIWbc3lBd4huIxZ
	 dNtgGIXgZ0UPUZACQKSxsZO5L4jnoDmQFsko05UcAZ1ns0+1oH6Lt13VEzqO0HmRDE
	 vNDEAf1BUQA3hJSQSrjsdy8UCfHeTgqEKBODQVM/kXTJaprTzBLtUiWs7+qC7QNa2Y
	 ZwbTGqp4rARQHuvxYFjOXxu9/7kGQyv9cEq6BvyGamzrvyOsrBy48bJDKrQQfRvKWC
	 pS0EzNN3Kd6vXwZ5wXuhkuJ2KDjDTiLh21iZG7yK9mH2CENtNKV0+/yw2Fh0iS/T2G
	 3BhdEO8w5lEnw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id F32A7407A8;
	Sun,  7 Dec 2025 04:53:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9A6AB2CF
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Dec 2025 04:53:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 813A1822BD
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Dec 2025 04:53:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Gyza-3l1niaQ for <intel-wired-lan@lists.osuosl.org>;
 Sun,  7 Dec 2025 04:53:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4D67381DF9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4D67381DF9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4D67381DF9
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Dec 2025 04:53:23 +0000 (UTC)
X-CSE-ConnectionGUID: VEz9WOWgRGmLm9IUeXXjrQ==
X-CSE-MsgGUID: qHcxt8vrRvqS0Vmf5pzHpQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11634"; a="67101990"
X-IronPort-AV: E=Sophos;i="6.20,256,1758610800"; d="scan'208";a="67101990"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2025 20:53:23 -0800
X-CSE-ConnectionGUID: 8zbUpwRgQWSuwuyGWDfZ6g==
X-CSE-MsgGUID: evX7Jv/bRHyL02XQgiHYXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,256,1758610800"; d="scan'208";a="195709547"
Received: from lkp-server01.sh.intel.com (HELO 4664bbef4914) ([10.239.97.150])
 by orviesa008.jf.intel.com with ESMTP; 06 Dec 2025 20:53:23 -0800
Received: from kbuild by 4664bbef4914 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vS6ls-00000000J17-0cEP
 for intel-wired-lan@lists.osuosl.org; Sun, 07 Dec 2025 04:53:20 +0000
Date: Sun, 07 Dec 2025 12:52:44 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202512071234.ADVU8CUP-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765083204; x=1796619204;
 h=date:from:to:subject:message-id;
 bh=97AqBbjRAGRMq0D2o3Npvzso3WW3wE0Do677Yc6HjTc=;
 b=kzqMMYV/K1hGhZTHekWHnKJ1Y8YL3ZKbGDR5n83mD0wjaJ8WwbdEFTUI
 cgtXk0cFsubcSc5Q7WZmMcVjcqAYbk0Km3d/4gKl8I2gNxtqCCxp1b6hd
 5Dfw1RWVMYYI2tPyYX0BP3yOOauAEsRZQOn916pZIYXsBmwnB8ZCcVakR
 rxthwJv2eVQgLqxUeQKJpi40E1J5Uc93B2vQsXdZYQ+z6JlPvWcpF3LCP
 pHysxAw1tqY5js4hEsLUY3zgItegOjefwOfSymagCnob36UjPSVwosxS5
 KWC1KDA8xdRuqqJVYPUK2YfTeop/rPQ5tUvNBY82mA4EXD3ddOblGLvpP
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kzqMMYV/
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 fca15428c32349b4afd3d9e69458b6f46d0be14f
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
branch HEAD: fca15428c32349b4afd3d9e69458b6f46d0be14f  ice: stop counting UDP csum mismatch as rx_errors

elapsed time: 1835m

configs tested: 116
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig    gcc-15.1.0
alpha                               defconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                                 defconfig    gcc-15.1.0
arc                   randconfig-001-20251207    gcc-13.4.0
arc                   randconfig-002-20251207    gcc-8.5.0
arm                                 defconfig    clang-22
arm                       imx_v6_v7_defconfig    clang-16
arm                   randconfig-001-20251207    gcc-15.1.0
arm                   randconfig-002-20251207    clang-22
arm                   randconfig-003-20251207    gcc-8.5.0
arm                   randconfig-004-20251207    gcc-12.5.0
arm                         s5pv210_defconfig    gcc-15.1.0
arm64                               defconfig    gcc-15.1.0
arm64                 randconfig-001-20251207    clang-22
arm64                 randconfig-002-20251207    gcc-10.5.0
arm64                 randconfig-003-20251207    clang-18
arm64                 randconfig-004-20251207    gcc-13.4.0
csky                                defconfig    gcc-15.1.0
csky                  randconfig-001-20251207    gcc-15.1.0
csky                  randconfig-002-20251207    gcc-14.3.0
hexagon                          allmodconfig    clang-17
hexagon                             defconfig    clang-22
hexagon               randconfig-001-20251207    clang-22
hexagon               randconfig-002-20251207    clang-22
i386                             allmodconfig    gcc-14
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20251207    clang-20
i386        buildonly-randconfig-002-20251207    gcc-14
i386        buildonly-randconfig-003-20251207    gcc-14
i386        buildonly-randconfig-004-20251207    gcc-12
i386        buildonly-randconfig-005-20251207    clang-20
i386        buildonly-randconfig-006-20251207    gcc-14
i386                                defconfig    clang-20
i386                  randconfig-011-20251207    gcc-13
i386                  randconfig-012-20251207    clang-20
i386                  randconfig-013-20251207    clang-20
i386                  randconfig-014-20251207    gcc-14
i386                  randconfig-015-20251207    clang-20
i386                  randconfig-016-20251207    clang-20
i386                  randconfig-017-20251207    gcc-14
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20251207    gcc-14.3.0
loongarch             randconfig-002-20251207    clang-18
m68k                             allmodconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
m68k                                defconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20251207    gcc-11.5.0
nios2                 randconfig-002-20251207    gcc-11.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                            defconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20251207    gcc-8.5.0
parisc                randconfig-002-20251207    gcc-12.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                      cm5200_defconfig    clang-22
powerpc               randconfig-001-20251207    gcc-13.4.0
powerpc               randconfig-002-20251207    gcc-10.5.0
powerpc64             randconfig-001-20251207    clang-19
powerpc64             randconfig-002-20251207    gcc-10.5.0
riscv                             allnoconfig    gcc-15.1.0
riscv                               defconfig    clang-22
riscv                 randconfig-001-20251207    gcc-13.4.0
riscv                 randconfig-002-20251207    gcc-12.5.0
s390                              allnoconfig    clang-22
s390                                defconfig    clang-22
s390                  randconfig-001-20251207    clang-22
s390                  randconfig-002-20251207    clang-22
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                                  defconfig    gcc-15.1.0
sh                        edosk7760_defconfig    gcc-15.1.0
sh                            hp6xx_defconfig    gcc-15.1.0
sh                    randconfig-001-20251207    gcc-14.3.0
sh                    randconfig-002-20251207    gcc-14.3.0
sh                              ul2_defconfig    gcc-15.1.0
sparc                            alldefconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20251207    gcc-13.4.0
sparc                 randconfig-002-20251207    gcc-15.1.0
sparc64                             defconfig    clang-20
sparc64               randconfig-001-20251207    gcc-10.5.0
sparc64               randconfig-002-20251207    clang-22
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-14
um                                  defconfig    clang-22
um                             i386_defconfig    gcc-14
um                    randconfig-001-20251207    clang-22
um                    randconfig-002-20251207    gcc-14
um                           x86_64_defconfig    clang-22
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20251207    gcc-14
x86_64      buildonly-randconfig-002-20251207    gcc-14
x86_64      buildonly-randconfig-003-20251207    gcc-14
x86_64      buildonly-randconfig-004-20251207    clang-20
x86_64      buildonly-randconfig-005-20251207    clang-20
x86_64      buildonly-randconfig-006-20251207    gcc-14
x86_64                              defconfig    gcc-14
x86_64                randconfig-001-20251207    clang-20
x86_64                randconfig-002-20251207    gcc-14
x86_64                randconfig-003-20251207    gcc-14
x86_64                randconfig-004-20251207    gcc-14
x86_64                randconfig-005-20251207    clang-20
x86_64                randconfig-006-20251207    clang-20
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20251207    gcc-8.5.0
xtensa                randconfig-002-20251207    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
