Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D3709B997C
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Nov 2024 21:34:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D544F605E8;
	Fri,  1 Nov 2024 20:34:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UnsNS9zPfRkV; Fri,  1 Nov 2024 20:34:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7C755605F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730493245;
	bh=uwM/ZUDQjh/TNo1V3lxRn27uSM56ykew0YPY9cPHVIw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Z8Vw7g2lfNYUXfqDjoDGGAihe2oBxxe5hFxSG6d3DqqFDgDIvSa9OvXpgRV7T6jqd
	 gljDe4lecdxHNJLgzSPymv3VtneWhpXdw23sOCl9ylEKIXdGFCG0mGEqpiVd6H5VAp
	 oKux6q8XVAmxBSo2yStjJ5XM280KF0ZRJGm6+B88+Zzw5UgNv2cNjbg4oOaIx/A9cK
	 Wt3Wb0l4nzKHPclrPN8ffFpL6pQBqKEXkLk1vNA9fZtuwDlO4Vm5KhjIjRqp8i3UnS
	 EBf19r4/3LXUQ9rAtWXj8PxB8MQXKzNg7oLQ1EhdqXu9LSarJAj4ivab65kKrFPlM0
	 qX/oMhrAsh4qQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7C755605F5;
	Fri,  1 Nov 2024 20:34:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 10D36112A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Nov 2024 20:34:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E4B6A40163
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Nov 2024 20:34:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id T-ZpWXssDDGT for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Nov 2024 20:34:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7B2AC4012A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7B2AC4012A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7B2AC4012A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Nov 2024 20:34:00 +0000 (UTC)
X-CSE-ConnectionGUID: bwSZQm6PSWC/D2IEAdTTNw==
X-CSE-MsgGUID: oD6P528LRrmrLsbp8T7WNw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="47721432"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="47721432"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2024 13:34:00 -0700
X-CSE-ConnectionGUID: MgOAUsZpQ46h6ed5x8bXKA==
X-CSE-MsgGUID: QRCYYIRwQpe47T1//w6eIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="87842634"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
 by orviesa003.jf.intel.com with ESMTP; 01 Nov 2024 13:33:59 -0700
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1t6yLF-000i19-06
 for intel-wired-lan@lists.osuosl.org; Fri, 01 Nov 2024 20:33:57 +0000
Date: Sat, 02 Nov 2024 04:33:04 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202411020451.BpRCvbC3-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730493241; x=1762029241;
 h=date:from:to:subject:message-id;
 bh=iSz2aLIQPvluY/nyren7M/CUaXIajyxmV0X9erUQUwE=;
 b=Fq1DvRfkvxrotvGJC3E1oFeW2vKPKxFw7CbWhzxl3Dy3ryska8o+OC12
 JTJpNnyc9I256cYbgq//6myB8VX53w5BIsdpr7IyJwT3i2SBsKPEDwbeU
 Njc7GW1Khki8uL3KOtFyEAqXSbibqYoul80Rn92BdPiSS1DHwjpA1Ve7c
 +sBSy4OgTJif04SoxwEotyOz5GM22uiNJk2y7AQU1ynbADZIi2IWhCGxQ
 iVw3s7TY76Ebhy3jCzXZeEe6k5hobprN8CKqKivLI3ZGSDtDwxiOpwUHF
 hRAJJTAjrLMDTicaK1BB/EQoFwiI5IZDS6oHa4UEFWwIpTka7DvMEztDu
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Fq1DvRfk
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 dbb9a7ef347828870df3e5e6ddf19469a3277fc9
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
branch HEAD: dbb9a7ef347828870df3e5e6ddf19469a3277fc9  net: fjes: use ethtool string helpers

elapsed time: 1045m

configs tested: 127
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.1.0
alpha                            allyesconfig    clang-20
alpha                               defconfig    gcc-14.1.0
arc                              allmodconfig    clang-20
arc                               allnoconfig    gcc-14.1.0
arc                              allyesconfig    clang-20
arc                    vdk_hs38_smp_defconfig    gcc-14.1.0
arm                              allmodconfig    clang-20
arm                               allnoconfig    gcc-14.1.0
arm                              allyesconfig    clang-20
arm                           omap1_defconfig    gcc-14.1.0
arm64                            allmodconfig    clang-20
arm64                             allnoconfig    gcc-14.1.0
csky                              allnoconfig    gcc-14.1.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    gcc-14.1.0
hexagon                          allyesconfig    clang-20
i386                             allmodconfig    clang-19
i386                              allnoconfig    clang-19
i386                             allyesconfig    clang-19
i386        buildonly-randconfig-001-20241101    gcc-12
i386        buildonly-randconfig-002-20241101    gcc-12
i386        buildonly-randconfig-003-20241101    gcc-12
i386        buildonly-randconfig-004-20241101    gcc-12
i386        buildonly-randconfig-005-20241101    gcc-12
i386        buildonly-randconfig-006-20241101    gcc-12
i386                                defconfig    clang-19
i386                  randconfig-001-20241101    gcc-12
i386                  randconfig-002-20241101    gcc-12
i386                  randconfig-003-20241101    gcc-12
i386                  randconfig-004-20241101    gcc-12
i386                  randconfig-005-20241101    gcc-12
i386                  randconfig-006-20241101    gcc-12
i386                  randconfig-011-20241101    gcc-12
i386                  randconfig-012-20241101    gcc-12
i386                  randconfig-013-20241101    gcc-12
i386                  randconfig-014-20241101    gcc-12
i386                  randconfig-015-20241101    gcc-12
i386                  randconfig-016-20241101    gcc-12
loongarch                        allmodconfig    gcc-14.1.0
loongarch                         allnoconfig    gcc-14.1.0
m68k                             allmodconfig    gcc-14.1.0
m68k                              allnoconfig    gcc-14.1.0
m68k                             allyesconfig    gcc-14.1.0
m68k                           sun3_defconfig    gcc-14.1.0
microblaze                       allmodconfig    gcc-14.1.0
microblaze                        allnoconfig    gcc-14.1.0
microblaze                       allyesconfig    gcc-14.1.0
microblaze                      mmu_defconfig    gcc-14.1.0
mips                              allnoconfig    gcc-14.1.0
mips                           ci20_defconfig    gcc-14.1.0
nios2                             allnoconfig    gcc-14.1.0
openrisc                          allnoconfig    clang-20
openrisc                         allyesconfig    gcc-14.1.0
openrisc                            defconfig    gcc-12
openrisc                    or1ksim_defconfig    gcc-14.1.0
openrisc                 simple_smp_defconfig    gcc-14.1.0
parisc                           allmodconfig    gcc-14.1.0
parisc                            allnoconfig    clang-20
parisc                           allyesconfig    gcc-14.1.0
parisc                              defconfig    gcc-12
powerpc                          allmodconfig    gcc-14.1.0
powerpc                           allnoconfig    clang-20
powerpc                          allyesconfig    gcc-14.1.0
powerpc                      ppc44x_defconfig    gcc-14.1.0
powerpc                         wii_defconfig    gcc-14.1.0
riscv                            allmodconfig    gcc-14.1.0
riscv                             allnoconfig    clang-20
riscv                            allyesconfig    gcc-14.1.0
riscv                               defconfig    gcc-12
riscv             nommu_k210_sdcard_defconfig    gcc-14.1.0
s390                             allmodconfig    gcc-14.1.0
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.1.0
s390                                defconfig    gcc-12
sh                               allmodconfig    gcc-14.1.0
sh                                allnoconfig    gcc-14.1.0
sh                               allyesconfig    gcc-14.1.0
sh                        apsh4ad0a_defconfig    gcc-14.1.0
sh                                  defconfig    gcc-12
sh                            titan_defconfig    gcc-14.1.0
sparc                            allmodconfig    gcc-14.1.0
sparc                       sparc64_defconfig    gcc-14.1.0
sparc64                             defconfig    gcc-12
um                               allmodconfig    clang-20
um                                allnoconfig    clang-20
um                               allyesconfig    clang-20
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                           x86_64_defconfig    gcc-12
x86_64                           alldefconfig    gcc-14.1.0
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64      buildonly-randconfig-001-20241101    gcc-12
x86_64      buildonly-randconfig-002-20241101    gcc-12
x86_64      buildonly-randconfig-003-20241101    gcc-12
x86_64      buildonly-randconfig-004-20241101    gcc-12
x86_64      buildonly-randconfig-005-20241101    gcc-12
x86_64      buildonly-randconfig-006-20241101    gcc-12
x86_64                              defconfig    clang-19
x86_64                                  kexec    clang-19
x86_64                                  kexec    gcc-12
x86_64                randconfig-001-20241101    gcc-12
x86_64                randconfig-002-20241101    gcc-12
x86_64                randconfig-003-20241101    gcc-12
x86_64                randconfig-004-20241101    gcc-12
x86_64                randconfig-005-20241101    gcc-12
x86_64                randconfig-006-20241101    gcc-12
x86_64                randconfig-011-20241101    gcc-12
x86_64                randconfig-012-20241101    gcc-12
x86_64                randconfig-013-20241101    gcc-12
x86_64                randconfig-014-20241101    gcc-12
x86_64                randconfig-015-20241101    gcc-12
x86_64                randconfig-016-20241101    gcc-12
x86_64                randconfig-071-20241101    gcc-12
x86_64                randconfig-072-20241101    gcc-12
x86_64                randconfig-073-20241101    gcc-12
x86_64                randconfig-074-20241101    gcc-12
x86_64                randconfig-075-20241101    gcc-12
x86_64                randconfig-076-20241101    gcc-12
x86_64                               rhel-8.3    gcc-12
x86_64                           rhel-8.3-bpf    clang-19
x86_64                         rhel-8.3-kunit    clang-19
x86_64                           rhel-8.3-ltp    clang-19
x86_64                          rhel-8.3-rust    clang-19
xtensa                            allnoconfig    gcc-14.1.0
xtensa                         virt_defconfig    gcc-14.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
