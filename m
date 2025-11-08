Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 397B8C42ED7
	for <lists+intel-wired-lan@lfdr.de>; Sat, 08 Nov 2025 16:28:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 96BE260629;
	Sat,  8 Nov 2025 15:28:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fgpBuAL5RbSl; Sat,  8 Nov 2025 15:28:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C8AA460634
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762615691;
	bh=1FrXkeO5O8EP75BJwhvwVnVvK82pnyu4ijX7VAtpfdU=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=IeK4wK39DWsOwidZMZI4Fca8Y28td0a1qC7GJbvg2hnBshdh95djD65mXixarsAGo
	 Qu3CqnTrWLsBoI54kJJaQaMvMm5A8VuIrqSvfdTVWB/9K6iN1BR8hjSu9qgOJmCv41
	 GrSwxQ+5RwnISjF2k6O/0PV/3dZKwtUMKOUByHhT3K0HCIsX8NkXGYYzYlodm1VyNY
	 kIoRm8LErLBCSfNOZuSKEPcjZpHYrLkrW72cLaMhdF92DulLMj8sCb492YaDDRECci
	 qjc8fQRqnRGpCwiIoVm/QrtlHkQQZobVX/4YcNJOzzLusTI4LbX4hjmQzyElJ65Cn3
	 67sDcZOZVVK8Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C8AA460634;
	Sat,  8 Nov 2025 15:28:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 77E5D1CD
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Nov 2025 15:28:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 69BCC60608
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Nov 2025 15:28:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Y__PxVyYHNau for <intel-wired-lan@lists.osuosl.org>;
 Sat,  8 Nov 2025 15:28:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 482FA60606
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 482FA60606
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 482FA60606
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Nov 2025 15:28:08 +0000 (UTC)
X-CSE-ConnectionGUID: 3TLhyIq5R/mXuskfYLu1eA==
X-CSE-MsgGUID: AbOdVHdsQAKjajO4n8/qcw==
X-IronPort-AV: E=McAfee;i="6800,10657,11607"; a="75431083"
X-IronPort-AV: E=Sophos;i="6.19,289,1754982000"; d="scan'208";a="75431083"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2025 07:28:08 -0800
X-CSE-ConnectionGUID: MOIa9xVIS+qbN08bALfZPw==
X-CSE-MsgGUID: RVGtXoX6QFOalQITujwqJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,289,1754982000"; d="scan'208";a="188130669"
Received: from lkp-server01.sh.intel.com (HELO 6ef82f2de774) ([10.239.97.150])
 by fmviesa006.fm.intel.com with ESMTP; 08 Nov 2025 07:28:08 -0800
Received: from kbuild by 6ef82f2de774 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1vHkrF-00018J-2g
 for intel-wired-lan@lists.osuosl.org; Sat, 08 Nov 2025 15:28:05 +0000
Date: Sat, 08 Nov 2025 23:27:21 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202511082316.Ww6k8EjO-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762615689; x=1794151689;
 h=date:from:to:subject:message-id;
 bh=CKupfYGAV4ozfilFUPz46bN0EQ9DuXmYsP20w8bpeMc=;
 b=hGyrU5PCimeyseAsm72B1vdYT5Byz2yUUTbhEK9I+IBn13k+sltQEQyi
 7eRX+Xlv0LhL/OrnCcr7FfBKqS+UoTzMlzKYXCofdiZYh+W4fd2xGVi8u
 jUGfJZlQWedRZcMkHxWslqLR2k7p5PnRXe+hcenZiPO6jN7vg/UF+KC7o
 l+8CVji98MUGwCmYKNzRF1Lyq7uN6zbxFchf/8/WSrzSiPUm/yzakck1k
 f8stqBe7qlsRbODtc2NFsvvhn92Kv77bgcPgMLKkWD7BKEkNPtCT8rtHd
 soqCm4cOobQg5FdUqVonSW9gramcklxzl3CMPSUjKq6fakKHuzUrWE32G
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hGyrU5PC
Subject: [Intel-wired-lan] [tnguy-next-queue:40GbE] BUILD SUCCESS
 3da28eb277c1c175df1aa048e404cc765ae04327
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 40GbE
branch HEAD: 3da28eb277c1c175df1aa048e404cc765ae04327  iavf: add RSS support for GTP protocol via ethtool

elapsed time: 2383m

configs tested: 131
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
alpha                               defconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                                 defconfig    gcc-15.1.0
arc                     nsimosci_hs_defconfig    gcc-15.1.0
arc                   randconfig-001-20251107    gcc-8.5.0
arc                   randconfig-002-20251107    gcc-9.5.0
arm                               allnoconfig    clang-22
arm                                 defconfig    clang-22
arm                   randconfig-001-20251107    clang-17
arm                   randconfig-002-20251107    gcc-13.4.0
arm                   randconfig-003-20251107    clang-22
arm                   randconfig-004-20251107    gcc-8.5.0
arm                        shmobile_defconfig    gcc-15.1.0
arm64                             allnoconfig    gcc-15.1.0
arm64                               defconfig    gcc-15.1.0
csky                              allnoconfig    gcc-15.1.0
csky                                defconfig    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-22
hexagon                             defconfig    clang-22
hexagon               randconfig-001-20251107    clang-22
hexagon               randconfig-002-20251107    clang-22
i386                              allnoconfig    gcc-14
i386        buildonly-randconfig-001-20251108    gcc-14
i386        buildonly-randconfig-002-20251108    gcc-14
i386        buildonly-randconfig-003-20251108    gcc-14
i386        buildonly-randconfig-004-20251108    gcc-14
i386        buildonly-randconfig-005-20251108    clang-20
i386        buildonly-randconfig-006-20251108    gcc-14
i386                                defconfig    clang-20
i386                  randconfig-001-20251108    clang-20
i386                  randconfig-002-20251108    clang-20
i386                  randconfig-003-20251108    gcc-12
i386                  randconfig-004-20251108    gcc-12
i386                  randconfig-005-20251108    clang-20
i386                  randconfig-006-20251108    gcc-14
i386                  randconfig-007-20251108    gcc-14
i386                  randconfig-011-20251108    gcc-14
i386                  randconfig-012-20251108    clang-20
i386                  randconfig-013-20251108    gcc-14
i386                  randconfig-014-20251108    clang-20
i386                  randconfig-015-20251108    gcc-14
i386                  randconfig-016-20251108    gcc-14
i386                  randconfig-017-20251108    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20251107    gcc-15.1.0
loongarch             randconfig-002-20251107    clang-19
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
m68k                          amiga_defconfig    gcc-15.1.0
m68k                          atari_defconfig    gcc-15.1.0
m68k                                defconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20251107    gcc-11.5.0
nios2                 randconfig-002-20251107    gcc-8.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                            defconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20251107    gcc-8.5.0
parisc                randconfig-002-20251107    gcc-12.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
riscv                            alldefconfig    gcc-15.1.0
riscv                             allnoconfig    gcc-15.1.0
riscv                               defconfig    clang-22
riscv                 randconfig-001-20251107    clang-22
riscv                 randconfig-002-20251107    gcc-13.4.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    clang-22
s390                  randconfig-001-20251107    gcc-8.5.0
s390                  randconfig-002-20251107    gcc-15.1.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                         ap325rxa_defconfig    gcc-15.1.0
sh                                  defconfig    gcc-15.1.0
sh                            hp6xx_defconfig    gcc-15.1.0
sh                    randconfig-001-20251107    gcc-13.4.0
sh                    randconfig-002-20251107    gcc-11.5.0
sh                          rsk7201_defconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc64                             defconfig    clang-20
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-14
um                                  defconfig    clang-22
um                             i386_defconfig    gcc-14
um                           x86_64_defconfig    clang-22
x86_64                            allnoconfig    clang-20
x86_64      buildonly-randconfig-001-20251108    gcc-14
x86_64      buildonly-randconfig-002-20251108    gcc-12
x86_64      buildonly-randconfig-003-20251108    clang-20
x86_64      buildonly-randconfig-004-20251108    gcc-14
x86_64      buildonly-randconfig-005-20251108    gcc-14
x86_64      buildonly-randconfig-006-20251108    gcc-14
x86_64                              defconfig    gcc-14
x86_64                randconfig-001-20251108    clang-20
x86_64                randconfig-002-20251108    clang-20
x86_64                randconfig-003-20251108    clang-20
x86_64                randconfig-004-20251108    gcc-14
x86_64                randconfig-005-20251108    clang-20
x86_64                randconfig-006-20251108    clang-20
x86_64                randconfig-011-20251108    clang-20
x86_64                randconfig-012-20251108    gcc-14
x86_64                randconfig-013-20251108    clang-20
x86_64                randconfig-014-20251108    clang-20
x86_64                randconfig-015-20251108    clang-20
x86_64                randconfig-016-20251108    gcc-14
x86_64                randconfig-071-20251108    gcc-14
x86_64                randconfig-072-20251108    clang-20
x86_64                randconfig-073-20251108    clang-20
x86_64                randconfig-074-20251108    clang-20
x86_64                randconfig-075-20251108    gcc-12
x86_64                randconfig-076-20251108    gcc-14
xtensa                            allnoconfig    gcc-15.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
