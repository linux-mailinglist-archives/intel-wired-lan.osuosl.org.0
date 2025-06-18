Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D618EADE77C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Jun 2025 11:54:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8423C40834;
	Wed, 18 Jun 2025 09:54:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id m0DUip6YP1Ya; Wed, 18 Jun 2025 09:54:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 252D040843
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750240471;
	bh=0PpChM38jVcJctzg3O3wnaYVvwEZOu0Hd54WLTsbaL4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=4kebMwMTm0vLSaOsi9tEl4JZKWMErcdZEqB5PXI8hlpssFe7eh8GSbVWj+u5EC85g
	 dgCcB012dNBGBM8QQiG8arq/sfMIo8OWlwESbfKowu+8XjYW7fdDKldZnUsmi0c0yy
	 wdtCaWNIQ4soR1NfaoK2uVSiw1zstxieevZidpOPmCbY83aXAEXBl0ZfiOqtb9zsiN
	 uiGLBZetJbuMhuFbNMG2xdGNQYuWiro6HAz6EjVCbEmJspdsWjjvPqz4tsp/DPyrya
	 xLEZWkQcc1SoorakoefoaVsP0XJPIzpLMJinZGHvl+Cgfu3dVkVtDaM4JjBmipMQ3I
	 EJMGhDUvQWasA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 252D040843;
	Wed, 18 Jun 2025 09:54:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 76C1F151
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 09:54:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 68994607BE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 09:54:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5hj0JzcQiJtj for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Jun 2025 09:54:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5CB1960755
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5CB1960755
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5CB1960755
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 09:54:28 +0000 (UTC)
X-CSE-ConnectionGUID: mcdKuW7iRaC2FK8+SjUZZw==
X-CSE-MsgGUID: mUVJG5FMQRCa2WDs2J00dA==
X-IronPort-AV: E=McAfee;i="6800,10657,11467"; a="69892717"
X-IronPort-AV: E=Sophos;i="6.16,245,1744095600"; d="scan'208";a="69892717"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 02:54:28 -0700
X-CSE-ConnectionGUID: mH4etIviRACzMSdJ67e2sw==
X-CSE-MsgGUID: gA76W+6WR4qFNeY44L51Nw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,245,1744095600"; d="scan'208";a="154205764"
Received: from lkp-server01.sh.intel.com (HELO e8142ee1dce2) ([10.239.97.150])
 by orviesa004.jf.intel.com with ESMTP; 18 Jun 2025 02:54:27 -0700
Received: from kbuild by e8142ee1dce2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uRpUu-000JdY-0r
 for intel-wired-lan@lists.osuosl.org; Wed, 18 Jun 2025 09:54:24 +0000
Date: Wed, 18 Jun 2025 17:53:29 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202506181719.uYHyQ5Kl-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750240469; x=1781776469;
 h=date:from:to:subject:message-id;
 bh=OcD76KDaTkdiqWyIgCt4C4Zai58DC34Dx5EA6NQmPUc=;
 b=SGPX+M2wBNzkg6S2AOq2+tAzfWaBnzmp0Dc6edWXjhxfx9IfZIu8XJ9a
 CI1vUbeGhc4u47DFI4NyaY4PzXsWZWcdb13MpsoFz3zIdvF/HPoSuk85q
 zASXxjWkPKDqAgSUMg1FEsXDndqUga167LR8Mje0R6GFKIJR+3/2BVIAb
 lvCjHtxdsprXvHiXiQ0n/oPa0AL/++gvCepzbgBMGrkIDGzqQVM91xZwq
 9NlpfhKwNIxrvjJYkIQTyfzcLoQyitubDPMVUW80A8RlWXe1NM5fU0D5W
 /kR3tW1GEVIKbLcuc2QoBXUpi0UOrpDLa/xVjYwj1GjDu6s4eTOThYmjc
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SGPX+M2w
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 170e4e3944aa39accf64d869b27c187f8c08abc7
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 10GbE
branch HEAD: 170e4e3944aa39accf64d869b27c187f8c08abc7  net: phy: Add c45_phy_ids sysfs directory entry

elapsed time: 1171m

configs tested: 220
configs skipped: 9

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    clang-19
alpha                            allyesconfig    gcc-15.1.0
alpha                               defconfig    gcc-15.1.0
arc                              allmodconfig    clang-19
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    clang-19
arc                                 defconfig    gcc-15.1.0
arc                   randconfig-001-20250618    gcc-11.5.0
arc                   randconfig-002-20250618    gcc-11.5.0
arc                   randconfig-002-20250618    gcc-15.1.0
arm                              allmodconfig    clang-19
arm                               allnoconfig    clang-21
arm                               allnoconfig    gcc-15.1.0
arm                              allyesconfig    clang-19
arm                                 defconfig    gcc-15.1.0
arm                            hisi_defconfig    gcc-15.1.0
arm                         lpc32xx_defconfig    gcc-14.2.0
arm                          pxa3xx_defconfig    gcc-15.1.0
arm                   randconfig-001-20250618    gcc-11.5.0
arm                   randconfig-001-20250618    gcc-15.1.0
arm                   randconfig-002-20250618    gcc-10.5.0
arm                   randconfig-002-20250618    gcc-11.5.0
arm                   randconfig-003-20250618    clang-21
arm                   randconfig-003-20250618    gcc-11.5.0
arm                   randconfig-004-20250618    gcc-11.5.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                               defconfig    gcc-15.1.0
arm64                 randconfig-001-20250618    clang-21
arm64                 randconfig-001-20250618    gcc-11.5.0
arm64                 randconfig-002-20250618    clang-21
arm64                 randconfig-002-20250618    gcc-11.5.0
arm64                 randconfig-003-20250618    gcc-11.5.0
arm64                 randconfig-003-20250618    gcc-14.3.0
arm64                 randconfig-004-20250618    clang-16
arm64                 randconfig-004-20250618    gcc-11.5.0
csky                              allnoconfig    gcc-15.1.0
csky                                defconfig    gcc-15.1.0
csky                  randconfig-001-20250618    gcc-13.3.0
csky                  randconfig-001-20250618    gcc-8.5.0
csky                  randconfig-002-20250618    gcc-15.1.0
csky                  randconfig-002-20250618    gcc-8.5.0
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    clang-19
hexagon                           allnoconfig    clang-21
hexagon                           allnoconfig    gcc-15.1.0
hexagon                          allyesconfig    clang-19
hexagon                          allyesconfig    clang-21
hexagon                             defconfig    gcc-15.1.0
hexagon               randconfig-001-20250618    clang-19
hexagon               randconfig-001-20250618    gcc-8.5.0
hexagon               randconfig-002-20250618    clang-16
hexagon               randconfig-002-20250618    gcc-8.5.0
i386                             allmodconfig    clang-20
i386                             allmodconfig    gcc-12
i386                              allnoconfig    clang-20
i386                              allnoconfig    gcc-12
i386                             allyesconfig    clang-20
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250618    clang-20
i386        buildonly-randconfig-002-20250618    clang-20
i386        buildonly-randconfig-002-20250618    gcc-12
i386        buildonly-randconfig-003-20250618    clang-20
i386        buildonly-randconfig-004-20250618    clang-20
i386        buildonly-randconfig-005-20250618    clang-20
i386        buildonly-randconfig-006-20250618    clang-20
i386                                defconfig    clang-20
i386                  randconfig-001-20250618    gcc-12
i386                  randconfig-002-20250618    gcc-12
i386                  randconfig-003-20250618    gcc-12
i386                  randconfig-004-20250618    gcc-12
i386                  randconfig-005-20250618    gcc-12
i386                  randconfig-006-20250618    gcc-12
i386                  randconfig-007-20250618    gcc-12
i386                  randconfig-011-20250618    gcc-12
i386                  randconfig-012-20250618    gcc-12
i386                  randconfig-013-20250618    gcc-12
i386                  randconfig-014-20250618    gcc-12
i386                  randconfig-015-20250618    gcc-12
i386                  randconfig-016-20250618    gcc-12
i386                  randconfig-017-20250618    gcc-12
loongarch                        allmodconfig    gcc-15.1.0
loongarch                         allnoconfig    gcc-15.1.0
loongarch                           defconfig    gcc-15.1.0
loongarch             randconfig-001-20250618    gcc-15.1.0
loongarch             randconfig-001-20250618    gcc-8.5.0
loongarch             randconfig-002-20250618    gcc-15.1.0
loongarch             randconfig-002-20250618    gcc-8.5.0
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
m68k                                defconfig    gcc-15.1.0
m68k                          sun3x_defconfig    gcc-15.1.0
microblaze                       alldefconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                         db1xxx_defconfig    gcc-15.1.0
mips                           ip30_defconfig    gcc-14.2.0
nios2                            alldefconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-14.2.0
nios2                               defconfig    gcc-15.1.0
nios2                 randconfig-001-20250618    gcc-11.5.0
nios2                 randconfig-001-20250618    gcc-8.5.0
nios2                 randconfig-002-20250618    gcc-8.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
openrisc                            defconfig    gcc-12
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-12
parisc                randconfig-001-20250618    gcc-10.5.0
parisc                randconfig-001-20250618    gcc-8.5.0
parisc                randconfig-002-20250618    gcc-8.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    gcc-15.1.0
powerpc                      arches_defconfig    gcc-14.2.0
powerpc               randconfig-001-20250618    gcc-8.5.0
powerpc               randconfig-002-20250618    clang-19
powerpc               randconfig-002-20250618    gcc-8.5.0
powerpc               randconfig-003-20250618    clang-21
powerpc               randconfig-003-20250618    gcc-8.5.0
powerpc64             randconfig-001-20250618    gcc-8.5.0
powerpc64             randconfig-002-20250618    clang-21
powerpc64             randconfig-002-20250618    gcc-8.5.0
powerpc64             randconfig-003-20250618    gcc-15.1.0
riscv                            allmodconfig    gcc-15.1.0
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    gcc-15.1.0
riscv                               defconfig    gcc-12
riscv                    nommu_k210_defconfig    gcc-14.2.0
riscv                 randconfig-001-20250618    clang-20
riscv                 randconfig-001-20250618    gcc-15.1.0
riscv                 randconfig-002-20250618    clang-21
riscv                 randconfig-002-20250618    gcc-15.1.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    gcc-12
s390                  randconfig-001-20250618    gcc-15.1.0
s390                  randconfig-001-20250618    gcc-8.5.0
s390                  randconfig-002-20250618    gcc-15.1.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-12
sh                    randconfig-001-20250618    gcc-15.1.0
sh                    randconfig-002-20250618    gcc-15.1.0
sh                           sh2007_defconfig    gcc-14.2.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                 randconfig-001-20250618    gcc-15.1.0
sparc                 randconfig-001-20250618    gcc-8.5.0
sparc                 randconfig-002-20250618    gcc-13.3.0
sparc                 randconfig-002-20250618    gcc-15.1.0
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20250618    gcc-13.3.0
sparc64               randconfig-001-20250618    gcc-15.1.0
sparc64               randconfig-002-20250618    gcc-15.1.0
sparc64               randconfig-002-20250618    gcc-8.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    clang-19
um                               allyesconfig    gcc-12
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250618    clang-21
um                    randconfig-001-20250618    gcc-15.1.0
um                    randconfig-002-20250618    clang-21
um                    randconfig-002-20250618    gcc-15.1.0
um                           x86_64_defconfig    gcc-12
um                           x86_64_defconfig    gcc-14.2.0
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250618    clang-20
x86_64      buildonly-randconfig-001-20250618    gcc-12
x86_64      buildonly-randconfig-002-20250618    clang-20
x86_64      buildonly-randconfig-002-20250618    gcc-12
x86_64      buildonly-randconfig-003-20250618    gcc-12
x86_64      buildonly-randconfig-004-20250618    clang-20
x86_64      buildonly-randconfig-004-20250618    gcc-12
x86_64      buildonly-randconfig-005-20250618    clang-20
x86_64      buildonly-randconfig-005-20250618    gcc-12
x86_64      buildonly-randconfig-006-20250618    gcc-12
x86_64                              defconfig    clang-20
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20250618    gcc-12
x86_64                randconfig-002-20250618    gcc-12
x86_64                randconfig-003-20250618    gcc-12
x86_64                randconfig-004-20250618    gcc-12
x86_64                randconfig-005-20250618    gcc-12
x86_64                randconfig-006-20250618    gcc-12
x86_64                randconfig-007-20250618    gcc-12
x86_64                randconfig-008-20250618    gcc-12
x86_64                randconfig-071-20250618    clang-20
x86_64                randconfig-072-20250618    clang-20
x86_64                randconfig-073-20250618    clang-20
x86_64                randconfig-074-20250618    clang-20
x86_64                randconfig-075-20250618    clang-20
x86_64                randconfig-076-20250618    clang-20
x86_64                randconfig-077-20250618    clang-20
x86_64                randconfig-078-20250618    clang-20
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-12
x86_64                         rhel-9.4-kunit    gcc-12
x86_64                           rhel-9.4-ltp    gcc-12
x86_64                          rhel-9.4-rust    clang-18
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250618    gcc-13.3.0
xtensa                randconfig-001-20250618    gcc-15.1.0
xtensa                randconfig-002-20250618    gcc-11.5.0
xtensa                randconfig-002-20250618    gcc-15.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
