Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 97225AE8ADA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Jun 2025 18:58:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 02CA382F41;
	Wed, 25 Jun 2025 16:58:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OGL7tgyX9mHz; Wed, 25 Jun 2025 16:58:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3B7C6811C7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750870688;
	bh=rdBTEwf1EipfCyw9sgNXKR2G8uTjqm5ea9bpcvgpmII=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=NDKQSGKGcUH2HrMyGTcR8UJHYe71+8EWOY642wS89UlAqyokZjXj4aNiYG3cvcPJ3
	 wvBS3QcZpPxad/C5tK22Ph+PhOoyDkGEO1hWoK2Uf5YThnxfhCzC2uawpUqmBLijn1
	 Kr4CCeXgs57UyI0MCt2qHK9vKo9oTs92tEFRlfWC4xDdK1X80AlxSeFXNUNM/GaG65
	 YZQnix8lW6yJ3m/BVoquuhQoFq4pmXJNYk2jUloLUIvmeXXKI/zjmAUNRkI5JyrkEt
	 fSU4in69UFm570mfB6nQDVAHsaCEgNVML2hhOhOlYkgTtJvzHG8P9jcSRc4bqolyVI
	 9789yAmP2ioxQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3B7C6811C7;
	Wed, 25 Jun 2025 16:58:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 13CE143F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 16:58:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8AFFD61595
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 16:58:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RznD0CCRY9q0 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Jun 2025 16:58:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8E0EF615A6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8E0EF615A6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8E0EF615A6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 16:58:05 +0000 (UTC)
X-CSE-ConnectionGUID: oTnfzsUMRlOoTSftNeHoCw==
X-CSE-MsgGUID: 8uNe+5NfRFaC+1SiMztxLA==
X-IronPort-AV: E=McAfee;i="6800,10657,11475"; a="64209225"
X-IronPort-AV: E=Sophos;i="6.16,265,1744095600"; d="scan'208";a="64209225"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 09:58:05 -0700
X-CSE-ConnectionGUID: 8Dz7dPl4QPiKWfEXRqxsPQ==
X-CSE-MsgGUID: cQc/xMukQhyYJWE4s1E5HQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,265,1744095600"; d="scan'208";a="157764184"
Received: from lkp-server01.sh.intel.com (HELO e8142ee1dce2) ([10.239.97.150])
 by fmviesa004.fm.intel.com with ESMTP; 25 Jun 2025 09:58:04 -0700
Received: from kbuild by e8142ee1dce2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uUTRh-000TLC-2C
 for intel-wired-lan@lists.osuosl.org; Wed, 25 Jun 2025 16:58:01 +0000
Date: Thu, 26 Jun 2025 00:57:50 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202506260040.kKn1CY6R-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750870686; x=1782406686;
 h=date:from:to:subject:message-id;
 bh=NjtpwDCAR28WzXiexsQOCaIznZ5hLrB1oDxdP69URyY=;
 b=LgNECVAUDtUNvta5adO0E5DXS8lQHZxVQYHUMPRBc+vS8h2uR3L0UWrY
 OIUXJySufaMPS2YOGSlpW74sS58iW0Cb1vmEm1plmxz1NkJALiNlpd6pc
 RCdSVMYba8ghF1jtIOdnl89P/wFZ3RsoORoAbxUpY7Wn+FO0n3aFGzpC0
 oW99UPzhkHIh8lRCNGk5tljXt/2rY+iVEcjhAx+q/aY4x12EBM2fO2yFw
 Z4VZZOwj4ydQc7AKfennmqusLbgBgds7jSSGzBVthRkeb6JqfjrcDY3kJ
 9Xp7nUC41MxKu8jR5RJY7dBb3j00BLZfGOUYeVA1Gn0OrDSdbO4uaEdAf
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LgNECVAU
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 46ab847d88fccfbd8df53f3cd63e84f657970155
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
branch HEAD: 46ab847d88fccfbd8df53f3cd63e84f657970155  ethernet: intel: fix building with large NR_CPUS

elapsed time: 1150m

configs tested: 105
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    clang-19
arc                              allmodconfig    clang-19
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    clang-19
arc                   randconfig-001-20250625    gcc-11.5.0
arc                   randconfig-002-20250625    gcc-11.5.0
arc                   randconfig-002-20250625    gcc-12.4.0
arm                              allmodconfig    clang-19
arm                               allnoconfig    clang-21
arm                               allnoconfig    gcc-15.1.0
arm                              allyesconfig    clang-19
arm                   randconfig-001-20250625    clang-21
arm                   randconfig-001-20250625    gcc-11.5.0
arm                   randconfig-002-20250625    gcc-11.5.0
arm                   randconfig-003-20250625    gcc-11.5.0
arm                   randconfig-003-20250625    gcc-13.3.0
arm                   randconfig-004-20250625    gcc-11.5.0
arm                   randconfig-004-20250625    gcc-15.1.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250625    gcc-11.5.0
arm64                 randconfig-002-20250625    clang-20
arm64                 randconfig-002-20250625    gcc-11.5.0
arm64                 randconfig-003-20250625    gcc-11.5.0
arm64                 randconfig-003-20250625    gcc-12.3.0
arm64                 randconfig-004-20250625    clang-20
arm64                 randconfig-004-20250625    gcc-11.5.0
csky                              allnoconfig    gcc-15.1.0
hexagon                          allmodconfig    clang-19
hexagon                           allnoconfig    clang-21
hexagon                           allnoconfig    gcc-15.1.0
hexagon                          allyesconfig    clang-19
i386                             allmodconfig    clang-20
i386                              allnoconfig    clang-20
i386                             allyesconfig    clang-20
i386        buildonly-randconfig-001-20250625    clang-20
i386        buildonly-randconfig-001-20250625    gcc-12
i386        buildonly-randconfig-002-20250625    gcc-12
i386        buildonly-randconfig-003-20250625    gcc-12
i386        buildonly-randconfig-004-20250625    gcc-12
i386        buildonly-randconfig-005-20250625    clang-20
i386        buildonly-randconfig-005-20250625    gcc-12
i386        buildonly-randconfig-006-20250625    clang-20
i386        buildonly-randconfig-006-20250625    gcc-12
i386                                defconfig    clang-20
loongarch                        allmodconfig    gcc-15.1.0
loongarch                         allnoconfig    gcc-15.1.0
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-15.1.0
openrisc                          allnoconfig    clang-21
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    clang-21
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    clang-21
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    gcc-15.1.0
riscv                            allmodconfig    gcc-15.1.0
riscv                             allnoconfig    clang-21
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    gcc-15.1.0
s390                             allmodconfig    clang-18
s390                             allmodconfig    gcc-15.1.0
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-15.1.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    clang-19
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250625    gcc-12
x86_64      buildonly-randconfig-002-20250625    clang-20
x86_64      buildonly-randconfig-002-20250625    gcc-12
x86_64      buildonly-randconfig-003-20250625    clang-20
x86_64      buildonly-randconfig-003-20250625    gcc-12
x86_64      buildonly-randconfig-004-20250625    clang-20
x86_64      buildonly-randconfig-004-20250625    gcc-12
x86_64      buildonly-randconfig-005-20250625    clang-20
x86_64      buildonly-randconfig-005-20250625    gcc-12
x86_64      buildonly-randconfig-006-20250625    clang-20
x86_64      buildonly-randconfig-006-20250625    gcc-12
x86_64                              defconfig    clang-20
x86_64                                  kexec    clang-20
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-12
x86_64                         rhel-9.4-kunit    gcc-12
x86_64                           rhel-9.4-ltp    gcc-12
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
