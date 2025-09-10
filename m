Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 67AFAB51BD0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Sep 2025 17:36:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 117C640DAF;
	Wed, 10 Sep 2025 15:36:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4jZB2aY1f2c4; Wed, 10 Sep 2025 15:36:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2C49040D96
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757518597;
	bh=pta5oQSlDoHinQZPJJYWcYL2AXyUB6/ZmyxSiMUhaY4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=jFWj52JwyeSUXJdo3oFMmg/ZPSwML2ICiq+k8CO1KYad9AoNm8BLceD2ZS9zoY7F2
	 X90brq2RZiFIMslhupVcv9ZNNksH0EozakHSnMpNA7VGOFO3EfIwsxEFg/KfHLAAA5
	 0CSueRydO10g4d2LcP3D40Lng65R+up8S1Iqjdja1QTaBIO0zMaGU0CQnJC0UiwRoN
	 mShhA8imXxxy2kAhj1tYMZ3NIYLsxrTK/RBEMApvIoNCbhXOrtKpNEXWg26qJpOH0X
	 /uWqJGRe02VgXrMfyUEvVbxcXc/s6BKghm9O6eG8d7EQbO7LNvPx/LD2iHoIJ5YA9A
	 PLj404AJ+/ekg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2C49040D96;
	Wed, 10 Sep 2025 15:36:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id DB76110E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Sep 2025 15:36:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C300883B72
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Sep 2025 15:36:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1buPJKkO0y0r for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Sep 2025 15:36:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 81DB683B52
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 81DB683B52
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 81DB683B52
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Sep 2025 15:36:33 +0000 (UTC)
X-CSE-ConnectionGUID: sHP4ymSPR/Gdr7cSlZDzaQ==
X-CSE-MsgGUID: 5mgMJMb6S8SIL+DsWraZvg==
X-IronPort-AV: E=McAfee;i="6800,10657,11549"; a="59527259"
X-IronPort-AV: E=Sophos;i="6.18,254,1751266800"; d="scan'208";a="59527259"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2025 08:36:33 -0700
X-CSE-ConnectionGUID: T09h+9I/RoCLK7yhQr4qiw==
X-CSE-MsgGUID: LB96cYLvS06ar2uo2RHPqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,254,1751266800"; d="scan'208";a="173802998"
Received: from lkp-server01.sh.intel.com (HELO 114d98da2b6c) ([10.239.97.150])
 by fmviesa008.fm.intel.com with ESMTP; 10 Sep 2025 08:36:31 -0700
Received: from kbuild by 114d98da2b6c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uwMs1-00064V-0h
 for intel-wired-lan@lists.osuosl.org; Wed, 10 Sep 2025 15:36:29 +0000
Date: Wed, 10 Sep 2025 23:35:42 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202509102332.XfE2md6C-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757518594; x=1789054594;
 h=date:from:to:subject:message-id;
 bh=WRg5GO5x2/i3jQVfMhrdHHEncT0dDcsyE7FulqxkDRo=;
 b=WXXAp04qTlsMsRE+YhY65JtUCEWUgltrK6EcS4tDFlt9HX6MXKBzdkMb
 u+fUBBs1Nn0neqdz+2U/Ts3VB7DVkic8MGhqQ9DCnEIqo29DoiBWvqRVU
 c2mI/OEl68iG84lKMTQZjflZHwQxSradVlJtc+3c5o3CefQrRhKTjr0z6
 nsJ71hWlx7myRlNU+XOVs6iL4lnwFR717DHioJ4L7uTMGGIMeMuPSyhn8
 GAfKAocOKWGkeNi9jIo587GBUO7vNSbpF4X0/g8sk47BbbK6Emh4Yw13K
 qnGKxqbx+/idV8C1Y6nqE0p80llnokKguNSj59e3CPEgyxtDCU17NhVQs
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WXXAp04q
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 f62e23ff5a9f28db5935f4b5ac1ddbbea0c2aa24
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
branch HEAD: f62e23ff5a9f28db5935f4b5ac1ddbbea0c2aa24  ice: add recovery clock and clock 1588 control for E825c

elapsed time: 1041m

configs tested: 219
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    clang-22
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    clang-19
alpha                            allyesconfig    gcc-15.1.0
alpha                               defconfig    clang-19
arc                              allmodconfig    clang-19
arc                               allnoconfig    clang-22
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    clang-19
arc                          axs101_defconfig    clang-22
arc                                 defconfig    clang-19
arc                 nsimosci_hs_smp_defconfig    clang-22
arc                   randconfig-001-20250910    gcc-13.4.0
arc                   randconfig-002-20250910    gcc-13.4.0
arc                   randconfig-002-20250910    gcc-8.5.0
arm                              allmodconfig    clang-19
arm                               allnoconfig    clang-22
arm                              allyesconfig    clang-19
arm                                 defconfig    clang-19
arm                            mps2_defconfig    clang-22
arm                   randconfig-001-20250910    gcc-13.4.0
arm                   randconfig-001-20250910    gcc-8.5.0
arm                   randconfig-002-20250910    gcc-13.4.0
arm                   randconfig-002-20250910    gcc-8.5.0
arm                   randconfig-003-20250910    clang-16
arm                   randconfig-003-20250910    gcc-13.4.0
arm                   randconfig-004-20250910    gcc-13.4.0
arm                   randconfig-004-20250910    gcc-8.5.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    clang-22
arm64                             allnoconfig    gcc-15.1.0
arm64                               defconfig    clang-19
arm64                 randconfig-001-20250910    clang-22
arm64                 randconfig-001-20250910    gcc-13.4.0
arm64                 randconfig-002-20250910    clang-22
arm64                 randconfig-002-20250910    gcc-13.4.0
arm64                 randconfig-003-20250910    gcc-13.4.0
arm64                 randconfig-003-20250910    gcc-9.5.0
arm64                 randconfig-004-20250910    gcc-13.4.0
csky                              allnoconfig    clang-22
csky                              allnoconfig    gcc-15.1.0
csky                                defconfig    clang-19
csky                  randconfig-001-20250910    clang-22
csky                  randconfig-001-20250910    gcc-12.5.0
csky                  randconfig-002-20250910    clang-22
csky                  randconfig-002-20250910    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    clang-19
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-19
hexagon                          allyesconfig    clang-22
hexagon                             defconfig    clang-19
hexagon               randconfig-001-20250910    clang-22
hexagon               randconfig-002-20250910    clang-22
i386                             allmodconfig    clang-20
i386                              allnoconfig    clang-20
i386                             allyesconfig    clang-20
i386        buildonly-randconfig-001-20250910    gcc-14
i386        buildonly-randconfig-002-20250910    gcc-13
i386        buildonly-randconfig-003-20250910    clang-20
i386        buildonly-randconfig-004-20250910    clang-20
i386        buildonly-randconfig-005-20250910    gcc-14
i386        buildonly-randconfig-006-20250910    clang-20
i386                                defconfig    clang-20
i386                  randconfig-001-20250910    clang-20
i386                  randconfig-002-20250910    clang-20
i386                  randconfig-003-20250910    clang-20
i386                  randconfig-004-20250910    clang-20
i386                  randconfig-005-20250910    clang-20
i386                  randconfig-006-20250910    clang-20
i386                  randconfig-007-20250910    clang-20
i386                  randconfig-011-20250910    clang-20
i386                  randconfig-012-20250910    clang-20
i386                  randconfig-013-20250910    clang-20
i386                  randconfig-014-20250910    clang-20
i386                  randconfig-015-20250910    clang-20
i386                  randconfig-016-20250910    clang-20
i386                  randconfig-017-20250910    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20250910    clang-18
loongarch             randconfig-001-20250910    clang-22
loongarch             randconfig-002-20250910    clang-18
loongarch             randconfig-002-20250910    clang-22
m68k                             allmodconfig    clang-19
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    clang-19
m68k                             allyesconfig    gcc-15.1.0
m68k                                defconfig    clang-19
microblaze                       allmodconfig    clang-19
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    clang-19
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
microblaze                      mmu_defconfig    clang-22
mips                              allnoconfig    gcc-15.1.0
mips                        maltaup_defconfig    clang-22
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-15.1.0
nios2                 randconfig-001-20250910    clang-22
nios2                 randconfig-001-20250910    gcc-11.5.0
nios2                 randconfig-002-20250910    clang-22
nios2                 randconfig-002-20250910    gcc-9.5.0
openrisc                          allnoconfig    clang-22
openrisc                         allyesconfig    gcc-15.1.0
openrisc                            defconfig    gcc-14
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    clang-22
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250910    clang-22
parisc                randconfig-001-20250910    gcc-10.5.0
parisc                randconfig-002-20250910    clang-22
parisc                randconfig-002-20250910    gcc-9.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    clang-22
powerpc                          allyesconfig    gcc-15.1.0
powerpc                      cm5200_defconfig    clang-22
powerpc                  mpc885_ads_defconfig    clang-22
powerpc               randconfig-001-20250910    clang-22
powerpc               randconfig-001-20250910    gcc-8.5.0
powerpc               randconfig-002-20250910    clang-22
powerpc               randconfig-002-20250910    gcc-8.5.0
powerpc               randconfig-003-20250910    clang-22
powerpc                    socrates_defconfig    clang-22
powerpc64             randconfig-001-20250910    gcc-12.5.0
powerpc64             randconfig-002-20250910    clang-22
powerpc64             randconfig-002-20250910    gcc-11.5.0
powerpc64             randconfig-003-20250910    clang-22
riscv                            allmodconfig    gcc-15.1.0
riscv                             allnoconfig    clang-22
riscv                            allyesconfig    gcc-15.1.0
riscv                               defconfig    gcc-14
riscv                 randconfig-001-20250910    clang-22
riscv                 randconfig-001-20250910    gcc-12.5.0
riscv                 randconfig-002-20250910    clang-22
riscv                 randconfig-002-20250910    gcc-12.5.0
s390                             allmodconfig    gcc-15.1.0
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    gcc-14
s390                  randconfig-001-20250910    clang-22
s390                  randconfig-001-20250910    gcc-12.5.0
s390                  randconfig-002-20250910    clang-22
s390                  randconfig-002-20250910    gcc-12.5.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-14
sh                    randconfig-001-20250910    gcc-12.5.0
sh                    randconfig-001-20250910    gcc-15.1.0
sh                    randconfig-002-20250910    gcc-12.5.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250910    gcc-12.5.0
sparc                 randconfig-001-20250910    gcc-8.5.0
sparc                 randconfig-002-20250910    gcc-12.5.0
sparc                 randconfig-002-20250910    gcc-8.5.0
sparc64                             defconfig    gcc-14
sparc64               randconfig-001-20250910    gcc-12.5.0
sparc64               randconfig-001-20250910    gcc-8.5.0
sparc64               randconfig-002-20250910    gcc-12.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    clang-19
um                               allyesconfig    gcc-14
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                    randconfig-001-20250910    clang-22
um                    randconfig-001-20250910    gcc-12.5.0
um                    randconfig-002-20250910    clang-22
um                    randconfig-002-20250910    gcc-12.5.0
um                           x86_64_defconfig    gcc-14
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250910    gcc-14
x86_64      buildonly-randconfig-002-20250910    clang-20
x86_64      buildonly-randconfig-002-20250910    gcc-14
x86_64      buildonly-randconfig-003-20250910    gcc-14
x86_64      buildonly-randconfig-004-20250910    clang-20
x86_64      buildonly-randconfig-004-20250910    gcc-14
x86_64      buildonly-randconfig-005-20250910    gcc-14
x86_64      buildonly-randconfig-006-20250910    clang-20
x86_64      buildonly-randconfig-006-20250910    gcc-14
x86_64                              defconfig    clang-20
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20250910    clang-20
x86_64                randconfig-002-20250910    clang-20
x86_64                randconfig-003-20250910    clang-20
x86_64                randconfig-004-20250910    clang-20
x86_64                randconfig-005-20250910    clang-20
x86_64                randconfig-006-20250910    clang-20
x86_64                randconfig-007-20250910    clang-20
x86_64                randconfig-008-20250910    clang-20
x86_64                randconfig-071-20250910    gcc-14
x86_64                randconfig-072-20250910    gcc-14
x86_64                randconfig-073-20250910    gcc-14
x86_64                randconfig-074-20250910    gcc-14
x86_64                randconfig-075-20250910    gcc-14
x86_64                randconfig-076-20250910    gcc-14
x86_64                randconfig-077-20250910    gcc-14
x86_64                randconfig-078-20250910    gcc-14
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-14
x86_64                          rhel-9.4-func    clang-20
x86_64                    rhel-9.4-kselftests    clang-20
x86_64                         rhel-9.4-kunit    gcc-14
x86_64                           rhel-9.4-ltp    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250910    gcc-12.5.0
xtensa                randconfig-001-20250910    gcc-8.5.0
xtensa                randconfig-002-20250910    gcc-10.5.0
xtensa                randconfig-002-20250910    gcc-12.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
