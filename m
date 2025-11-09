Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 619E8C439D5
	for <lists+intel-wired-lan@lfdr.de>; Sun, 09 Nov 2025 08:32:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EC23560803;
	Sun,  9 Nov 2025 07:32:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7bCdwk2jxD8k; Sun,  9 Nov 2025 07:32:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1E77860805
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762673543;
	bh=ILnF3MrUQp8oE1PiW3ZGETeL3om/gKliMFS/tDHEV3o=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=AKLYdHErqlsKzaUZlRwmwYQV4T+A7oN/kuULODQVbLxumveAVAb67uD4FONk5pdBY
	 7N/3l61mfWAjXKEH4pWzNtvMn2PvTqoS4rwnQlglcd/xlR5MLHRoI23ft6TaNWXVnG
	 XMlcqXTqthY0kulchrS3R/N/ccj63wJx+1WtZJFLO08A+3oDaXqltUsEDssx7kx/2F
	 wZElIJDbnz2xk5huE+HQBFLwjeycSD3FBq+SQKdlZjrRofcuXT3to1j6Q8BqXv1Lls
	 y3sFCZ2KujbXEVWIRG8ZRJBTAr8hP5np/ju14c1+aVtQsEQGFjMnm8jXs7GsjBzC4E
	 acqSz+Ns6+reA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1E77860805;
	Sun,  9 Nov 2025 07:32:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4167625D
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Nov 2025 07:32:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1FA604064D
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Nov 2025 07:32:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Jp0Vhf2rCcuL for <intel-wired-lan@lists.osuosl.org>;
 Sun,  9 Nov 2025 07:32:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0A3E440633
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0A3E440633
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0A3E440633
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Nov 2025 07:32:19 +0000 (UTC)
X-CSE-ConnectionGUID: TAC6Eu84TxeuXA5dUNEKwg==
X-CSE-MsgGUID: N11xqWXcSWqq3pkOzbh9cQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11607"; a="63968214"
X-IronPort-AV: E=Sophos;i="6.19,291,1754982000"; d="scan'208";a="63968214"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2025 23:32:19 -0800
X-CSE-ConnectionGUID: wmS0NkqBQiGrSHg12elsYA==
X-CSE-MsgGUID: Mwoe5u8JRoug3LgWFYXjUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,291,1754982000"; d="scan'208";a="192518332"
Received: from lkp-server01.sh.intel.com (HELO 6ef82f2de774) ([10.239.97.150])
 by orviesa003.jf.intel.com with ESMTP; 08 Nov 2025 23:32:18 -0800
Received: from kbuild by 6ef82f2de774 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1vHzuJ-0001rP-26
 for intel-wired-lan@lists.osuosl.org; Sun, 09 Nov 2025 07:32:15 +0000
Date: Sun, 09 Nov 2025 15:31:40 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202511091535.IbKwlM1w-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762673540; x=1794209540;
 h=date:from:to:subject:message-id;
 bh=4U1pyTLzs944rOLqZozOKyYwI/prF9JA38AjGE2Z90Y=;
 b=Y+BGJTj4eAyN9c8+vjwFQQmAsaFGxIq2sQcW4Rc/Ar6ZKfyqb3GFtlP2
 R4qEwtp50C32zpyvuADmpcNTR+Tn6d0DMU+aGDbLFIXvIL21GpM/QtuKT
 5A+L4IqlcCnfeDjOFB9zmLksqSrCU+wzAsUfThdLZzrjY3rwD0Dstj2KS
 EkXWRLS5kWWRQjqz4NY6LIIj/KOs1weiA8Tk+lsUNdpzYJSiXNfbbtIE8
 HdInNP0U2A/xgXQ6PzCkm6Nm4x6nFhhL9ExCHINHZ0pxYAsyN8Lnhw321
 3A8NTT8vIdGVj6Av2mJ32S0eOHbuKhKWXYkmUKHWEU06DJ2Z7J7O9jZgL
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Y+BGJTj4
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 d09b93f6a64921b5790ca0e096c4da18d39a0d8b
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
branch HEAD: d09b93f6a64921b5790ca0e096c4da18d39a0d8b  idpf: cap maximum Rx buffer size

elapsed time: 1972m

configs tested: 107
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                               defconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                                 defconfig    gcc-15.1.0
arc                   randconfig-001-20251108    gcc-12.5.0
arc                   randconfig-002-20251108    gcc-8.5.0
arm                               allnoconfig    clang-22
arm                   randconfig-001-20251108    gcc-14.3.0
arm                   randconfig-002-20251108    gcc-15.1.0
arm                   randconfig-003-20251108    clang-22
arm                   randconfig-004-20251108    gcc-10.5.0
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20251109    gcc-15.1.0
arm64                 randconfig-002-20251109    gcc-12.5.0
arm64                 randconfig-003-20251109    clang-19
arm64                 randconfig-004-20251109    gcc-8.5.0
csky                              allnoconfig    gcc-15.1.0
csky                                defconfig    gcc-15.1.0
csky                  randconfig-001-20251109    gcc-14.3.0
csky                  randconfig-002-20251109    gcc-11.5.0
hexagon                           allnoconfig    clang-22
hexagon               randconfig-001-20251108    clang-22
hexagon               randconfig-002-20251108    clang-22
i386                              allnoconfig    gcc-14
i386        buildonly-randconfig-001-20251109    gcc-14
i386        buildonly-randconfig-002-20251109    gcc-13
i386        buildonly-randconfig-003-20251109    clang-20
i386        buildonly-randconfig-004-20251109    clang-20
i386        buildonly-randconfig-005-20251109    clang-20
i386        buildonly-randconfig-006-20251109    clang-20
i386                                defconfig    clang-20
i386                  randconfig-001-20251109    clang-20
i386                  randconfig-002-20251109    gcc-14
i386                  randconfig-003-20251109    clang-20
i386                  randconfig-004-20251109    clang-20
i386                  randconfig-005-20251109    gcc-14
i386                  randconfig-006-20251109    clang-20
i386                  randconfig-007-20251109    clang-20
i386                  randconfig-011-20251109    clang-20
i386                  randconfig-012-20251109    clang-20
i386                  randconfig-013-20251109    gcc-14
i386                  randconfig-014-20251109    gcc-14
i386                  randconfig-015-20251109    gcc-12
i386                  randconfig-016-20251109    gcc-14
i386                  randconfig-017-20251109    gcc-14
loongarch                         allnoconfig    clang-22
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20251108    gcc-12.5.0
loongarch             randconfig-002-20251108    gcc-12.5.0
m68k                              allnoconfig    gcc-15.1.0
m68k                         amcore_defconfig    gcc-15.1.0
m68k                                defconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                           ip28_defconfig    gcc-15.1.0
mips                      maltaaprp_defconfig    clang-22
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20251108    gcc-8.5.0
nios2                 randconfig-002-20251108    gcc-9.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                            defconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                randconfig-001-20251108    gcc-8.5.0
parisc                randconfig-002-20251108    gcc-8.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc               randconfig-001-20251108    gcc-8.5.0
powerpc               randconfig-002-20251108    gcc-9.5.0
powerpc                    socrates_defconfig    gcc-15.1.0
powerpc64             randconfig-001-20251108    gcc-8.5.0
powerpc64             randconfig-002-20251108    gcc-8.5.0
riscv                             allnoconfig    gcc-15.1.0
riscv                    nommu_virt_defconfig    clang-22
riscv                 randconfig-001-20251108    clang-19
riscv                 randconfig-002-20251108    gcc-12.5.0
s390                              allnoconfig    clang-22
s390                  randconfig-001-20251108    clang-22
s390                  randconfig-002-20251108    gcc-8.5.0
sh                                allnoconfig    gcc-15.1.0
sh                                  defconfig    gcc-15.1.0
sh                            hp6xx_defconfig    gcc-15.1.0
sh                 kfr2r09-romimage_defconfig    gcc-15.1.0
sh                          r7785rp_defconfig    gcc-15.1.0
sh                    randconfig-001-20251108    gcc-15.1.0
sh                    randconfig-002-20251108    gcc-13.4.0
sparc                             allnoconfig    gcc-15.1.0
sparc64                             defconfig    clang-20
um                                allnoconfig    clang-22
um                                  defconfig    clang-22
um                             i386_defconfig    gcc-14
um                           x86_64_defconfig    clang-22
x86_64                            allnoconfig    clang-20
x86_64      buildonly-randconfig-001-20251109    clang-20
x86_64      buildonly-randconfig-002-20251109    gcc-14
x86_64      buildonly-randconfig-003-20251109    clang-20
x86_64      buildonly-randconfig-004-20251109    clang-20
x86_64                              defconfig    gcc-14
x86_64                randconfig-011-20251109    gcc-14
x86_64                randconfig-012-20251109    clang-20
x86_64                randconfig-013-20251109    gcc-14
x86_64                randconfig-014-20251109    clang-20
x86_64                randconfig-015-20251109    clang-20
x86_64                randconfig-016-20251109    clang-20
x86_64                randconfig-073-20251109    gcc-14
xtensa                            allnoconfig    gcc-15.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
