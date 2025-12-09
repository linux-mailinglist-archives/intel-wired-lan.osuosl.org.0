Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CE57BCB1483
	for <lists+intel-wired-lan@lfdr.de>; Tue, 09 Dec 2025 23:21:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 587DA61463;
	Tue,  9 Dec 2025 22:21:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JjWnI5sCpoPD; Tue,  9 Dec 2025 22:21:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8E83D61471
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765318878;
	bh=FCwiUG6EP94ncZGr6Xp5a30SvljY4K4xsjgR9vYYD94=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=PdQtQzUPXc0rPUr3+AZa1uuSyAh9gw+EhCgZV5nd6t0tMm5ChyYUJLNYygUSXY/81
	 EdCMk2BJUzxd1Ch3Ajh8JYP/KYmkzn8+GKfG+zDLXlnSefvWBsh6+HRkqjLHL7Q3Dg
	 o7u/VXMtdtpNTT6CEuArBoiOaEf6hGpy1MF4LxYgb6t/4KcuCUM0oLgWwJrixnhVyU
	 043eGlwb0WmrDiLTSZiImJ0JDVTGin4Q6hNNbpVyEkKihRCaS5xU9FKIlnrcDTD2WL
	 /FWhBUQ1dIixN5hSKTYmFlcQsr4CY+vSa8rBOmI3rfPlY2F09jc3V3OR9FoHNSy7UL
	 wQebDMNJfacuw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8E83D61471;
	Tue,  9 Dec 2025 22:21:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 15E88E7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Dec 2025 22:21:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F0E2740333
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Dec 2025 22:21:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ULM8tmNTZvDm for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Dec 2025 22:21:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0D542402FE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0D542402FE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0D542402FE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Dec 2025 22:21:15 +0000 (UTC)
X-CSE-ConnectionGUID: d4ycNMqyTieAUzmOiSIS1g==
X-CSE-MsgGUID: DaFGY1iZT42EcJ4x7lSLPA==
X-IronPort-AV: E=McAfee;i="6800,10657,11637"; a="84891840"
X-IronPort-AV: E=Sophos;i="6.20,262,1758610800"; d="scan'208";a="84891840"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 14:21:15 -0800
X-CSE-ConnectionGUID: uCFiAi93RU2d4wbjFwvCjQ==
X-CSE-MsgGUID: rSEFpGLiSYqoZLA2I5+wRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,262,1758610800"; d="scan'208";a="195417201"
Received: from lkp-server01.sh.intel.com (HELO d335e3c6db51) ([10.239.97.150])
 by orviesa006.jf.intel.com with ESMTP; 09 Dec 2025 14:21:14 -0800
Received: from kbuild by d335e3c6db51 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vT651-000000002K5-3jxe
 for intel-wired-lan@lists.osuosl.org; Tue, 09 Dec 2025 22:21:11 +0000
Date: Wed, 10 Dec 2025 06:20:54 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202512100647.bpv3YKqZ-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765318876; x=1796854876;
 h=date:from:to:subject:message-id;
 bh=OM1ZfTRcPUnDU4Nf8VOemrA80gD7rq5wEZzfaS6oq10=;
 b=bOJ3AlQO88qZNA1PZMUmrLukzRNUoAYyQpA/VcUWGcI+dd+fMP2zThOK
 iHLG4KCWIH9slYNcgUihBBy2eyAmDm10Ychss5W94KBUq5aQYTxmAetBM
 okgfEBHSXxutR5kn3V1nDhQn0I+yPsKJIRNAnfRS2o1s4bJdwrM6omU60
 wpAZMRbECpNrojMXxauqWuY2Q31knKLnl/u9/VpD7XgsjsOLA1JCPpuGx
 ULPhsrY+aH/oEolBdXt7MpX+HZLvZpJIZF/KjzwpRuD/x72Sn8Z6sy3NB
 x4PzGrFDv5V9ZMTwTCL36Io0oi8GFWAXXDW06KtPD1J0nFNAgGalMzm1K
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=bOJ3AlQO
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 27193049307605254165bcbd4e5b6528016b0a36
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
branch HEAD: 27193049307605254165bcbd4e5b6528016b0a36  ice: add support for transmitting unreadable frags

elapsed time: 1463m

configs tested: 152
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig    gcc-15.1.0
alpha                               defconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                                 defconfig    gcc-15.1.0
arc                   randconfig-001-20251209    gcc-13.4.0
arc                   randconfig-002-20251209    gcc-9.5.0
arm                              allyesconfig    gcc-15.1.0
arm                                 defconfig    clang-22
arm                   randconfig-001-20251209    clang-19
arm                   randconfig-002-20251209    clang-20
arm                   randconfig-003-20251209    clang-22
arm                   randconfig-004-20251209    clang-22
arm                        realview_defconfig    clang-16
arm                           tegra_defconfig    gcc-15.1.0
arm64                               defconfig    gcc-15.1.0
arm64                 randconfig-001-20251209    gcc-8.5.0
arm64                 randconfig-002-20251209    gcc-9.5.0
arm64                 randconfig-003-20251209    clang-22
arm64                 randconfig-004-20251209    gcc-11.5.0
csky                             allmodconfig    gcc-15.1.0
csky                                defconfig    gcc-15.1.0
csky                  randconfig-001-20251209    gcc-15.1.0
csky                  randconfig-002-20251209    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                             defconfig    clang-22
hexagon               randconfig-001-20251209    clang-22
hexagon               randconfig-002-20251209    clang-22
i386                             allmodconfig    gcc-14
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20251209    clang-20
i386        buildonly-randconfig-002-20251209    clang-20
i386        buildonly-randconfig-003-20251209    gcc-14
i386        buildonly-randconfig-004-20251209    gcc-14
i386        buildonly-randconfig-005-20251209    gcc-14
i386        buildonly-randconfig-006-20251209    gcc-14
i386                                defconfig    clang-20
i386                  randconfig-001-20251209    gcc-14
i386                  randconfig-002-20251209    clang-20
i386                  randconfig-003-20251209    clang-20
i386                  randconfig-004-20251209    gcc-14
i386                  randconfig-005-20251209    gcc-14
i386                  randconfig-006-20251209    clang-20
i386                  randconfig-007-20251209    gcc-14
i386                  randconfig-011-20251209    clang-20
i386                  randconfig-012-20251209    clang-20
i386                  randconfig-013-20251209    clang-20
i386                  randconfig-014-20251209    clang-20
i386                  randconfig-015-20251209    clang-20
i386                  randconfig-016-20251209    clang-20
i386                  randconfig-017-20251209    gcc-14
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20251209    clang-22
loongarch             randconfig-002-20251209    clang-22
m68k                             allmodconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
m68k                          amiga_defconfig    gcc-15.1.0
m68k                                defconfig    gcc-15.1.0
m68k                       m5275evb_defconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                             allmodconfig    gcc-15.1.0
mips                             allyesconfig    gcc-15.1.0
mips                           ip28_defconfig    gcc-15.1.0
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20251209    gcc-8.5.0
nios2                 randconfig-002-20251209    gcc-11.5.0
openrisc                         allmodconfig    gcc-15.1.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                            defconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                generic-64bit_defconfig    gcc-15.1.0
parisc                randconfig-001-20251209    gcc-8.5.0
parisc                randconfig-002-20251209    gcc-13.4.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc               randconfig-001-20251209    gcc-14.3.0
powerpc               randconfig-002-20251209    clang-22
powerpc64             randconfig-001-20251209    gcc-14.3.0
powerpc64             randconfig-002-20251209    gcc-15.1.0
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    clang-22
riscv                 randconfig-001-20251209    clang-22
riscv                 randconfig-002-20251209    clang-18
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    clang-22
s390                  randconfig-001-20251209    gcc-12.5.0
s390                  randconfig-002-20251209    gcc-12.5.0
sh                               alldefconfig    gcc-15.1.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-15.1.0
sh                    randconfig-001-20251209    gcc-14.3.0
sh                    randconfig-002-20251209    gcc-13.4.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20251209    gcc-11.5.0
sparc                 randconfig-002-20251209    gcc-15.1.0
sparc64                          allmodconfig    clang-22
sparc64                             defconfig    clang-20
sparc64               randconfig-001-20251209    clang-22
sparc64               randconfig-002-20251209    clang-20
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-14
um                                  defconfig    clang-22
um                             i386_defconfig    gcc-14
um                    randconfig-001-20251209    gcc-14
um                    randconfig-002-20251209    gcc-14
um                           x86_64_defconfig    clang-22
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20251209    clang-20
x86_64      buildonly-randconfig-002-20251209    gcc-14
x86_64      buildonly-randconfig-003-20251209    gcc-14
x86_64      buildonly-randconfig-004-20251209    clang-20
x86_64      buildonly-randconfig-005-20251209    clang-20
x86_64      buildonly-randconfig-006-20251209    clang-20
x86_64                              defconfig    gcc-14
x86_64                randconfig-001-20251209    clang-20
x86_64                randconfig-002-20251209    clang-20
x86_64                randconfig-003-20251209    clang-20
x86_64                randconfig-004-20251209    gcc-14
x86_64                randconfig-005-20251209    gcc-14
x86_64                randconfig-006-20251209    gcc-14
x86_64                randconfig-011-20251209    gcc-14
x86_64                randconfig-012-20251209    clang-20
x86_64                randconfig-013-20251209    gcc-14
x86_64                randconfig-014-20251209    clang-20
x86_64                randconfig-015-20251209    clang-20
x86_64                randconfig-016-20251209    clang-20
x86_64                randconfig-071-20251209    clang-20
x86_64                randconfig-072-20251209    gcc-14
x86_64                randconfig-073-20251209    gcc-14
x86_64                randconfig-074-20251209    gcc-14
x86_64                randconfig-075-20251209    gcc-14
x86_64                randconfig-076-20251209    clang-20
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                           allyesconfig    gcc-15.1.0
xtensa                randconfig-001-20251209    gcc-13.4.0
xtensa                randconfig-002-20251209    gcc-10.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
