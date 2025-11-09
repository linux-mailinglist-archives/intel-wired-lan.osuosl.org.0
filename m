Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 19D78C43C37
	for <lists+intel-wired-lan@lfdr.de>; Sun, 09 Nov 2025 12:00:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 886DB4065B;
	Sun,  9 Nov 2025 11:00:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Dol5aheMQ94P; Sun,  9 Nov 2025 11:00:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C163240660
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762686039;
	bh=Kl53ALB8+s/v+Eg1zqa6Ooxj3vh9S0UrSUjVZjODbNg=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=IJqJS+a+N0BA1AIreaU5XrOR7FXY+z5CLOjPjYtqX4NAoRqCYqvLm2APnNHGf5swh
	 DHZUeWsT7STO3iqKWquf/N8PMqYiq2D56obIvXFyUnKn3BQmNBS2PWJQoKon2KKtUK
	 h3Gj2OjrOeC6bkQIAVa8LF0snRBC846HKLeKnv0VbLfiQJjUzkL3mpz5AzdX5o+J9T
	 JyPaZYdOeHwJ+/HtoTIsBpmCPczaS8oFWmnsXuWjNHsHKKAfrHXxoLfsgcNlDXpC07
	 OFNtSH3jN/cDxWALR58tq7itbCKJBCYZAnF4xFh2troQHLW7Dzx39I46XYPfAwYBuA
	 Yk33Tq7ZS/R1w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C163240660;
	Sun,  9 Nov 2025 11:00:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 8EEB61CD
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Nov 2025 11:00:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8BDE060819
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Nov 2025 11:00:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZwWaBJIQabYw for <intel-wired-lan@lists.osuosl.org>;
 Sun,  9 Nov 2025 11:00:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7AECD607EC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7AECD607EC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7AECD607EC
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Nov 2025 11:00:35 +0000 (UTC)
X-CSE-ConnectionGUID: wqGzjlNTSOmNAU6RM8YUsQ==
X-CSE-MsgGUID: 5jHUox2ASRyfe1FLOQss8Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11607"; a="87395430"
X-IronPort-AV: E=Sophos;i="6.19,291,1754982000"; d="scan'208";a="87395430"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2025 03:00:35 -0800
X-CSE-ConnectionGUID: T311c9+sQqKF0wR3guXcqA==
X-CSE-MsgGUID: GUUT9gocSRKjacsTciKaXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,291,1754982000"; d="scan'208";a="187691614"
Received: from lkp-server01.sh.intel.com (HELO 6ef82f2de774) ([10.239.97.150])
 by orviesa006.jf.intel.com with ESMTP; 09 Nov 2025 03:00:34 -0800
Received: from kbuild by 6ef82f2de774 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1vI39s-0001wh-0l
 for intel-wired-lan@lists.osuosl.org; Sun, 09 Nov 2025 11:00:32 +0000
Date: Sun, 09 Nov 2025 19:00:00 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202511091855.KWbr5tln-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762686036; x=1794222036;
 h=date:from:to:subject:message-id;
 bh=IKmH6LVpNGKCrQVB0xepGn/G0agL4oLcr5n9ChK2/j4=;
 b=JzRZUca1L4TMQCgTK2ZX8FoDJGhn00lytEktNmydwk7x8eJCfCzPxrZk
 RcKXWsCQNDCDmEqWSPStmH7SgIlbccef+6xujJPYxR/RUTTt9Av3V2Cb+
 HjtyYTWp325axtzH8EjPdV0D/D3D5163EyXbqmG0e2lGlw03+S3SSOjsX
 4GO+bppDxKkbK9hQK2yBkXr7cTubQZfGB4DPy0F7c68zsBuQQr3NBq8FY
 MFBbh5lezfCcaa3cxsTnf4HMRC2a0ak/obq/MU4gQ1IBisInvvgESI6Lj
 t5ZVMtDeNAA5orqQJj/OmXSAEg7tzQLv2GO3S4rHSFrsWpTJikxI4njwT
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JzRZUca1
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 e5d0260d61be4db18f1afe97a157e741a17a42f3
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
branch HEAD: e5d0260d61be4db18f1afe97a157e741a17a42f3  ixgbevf: ixgbevf_q_vector clean up

elapsed time: 2180m

configs tested: 105
configs skipped: 4

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
arm                                 defconfig    clang-22
arm                            qcom_defconfig    clang-22
arm                   randconfig-001-20251108    gcc-14.3.0
arm                   randconfig-002-20251108    gcc-15.1.0
arm                   randconfig-003-20251108    clang-22
arm                   randconfig-004-20251108    gcc-10.5.0
arm64                             allnoconfig    gcc-15.1.0
arm64                               defconfig    gcc-15.1.0
csky                              allnoconfig    gcc-15.1.0
csky                                defconfig    gcc-15.1.0
hexagon                           allnoconfig    clang-22
hexagon                             defconfig    clang-22
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
m68k                                defconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20251108    gcc-8.5.0
nios2                 randconfig-002-20251108    gcc-9.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                            defconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20251108    gcc-8.5.0
parisc                randconfig-002-20251108    gcc-8.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                    mvme5100_defconfig    gcc-15.1.0
powerpc                      pasemi_defconfig    clang-22
powerpc               randconfig-001-20251108    gcc-8.5.0
powerpc               randconfig-002-20251108    gcc-9.5.0
powerpc                     tqm8555_defconfig    gcc-15.1.0
powerpc64             randconfig-001-20251108    gcc-8.5.0
powerpc64             randconfig-002-20251108    gcc-8.5.0
riscv                             allnoconfig    gcc-15.1.0
riscv                               defconfig    clang-22
riscv                    nommu_virt_defconfig    clang-22
riscv                 randconfig-001-20251108    clang-19
riscv                 randconfig-002-20251108    gcc-12.5.0
s390                              allnoconfig    clang-22
s390                                defconfig    clang-22
s390                  randconfig-001-20251108    clang-22
s390                  randconfig-002-20251108    gcc-8.5.0
sh                                allnoconfig    gcc-15.1.0
sh                                  defconfig    gcc-15.1.0
sh                    randconfig-001-20251108    gcc-15.1.0
sh                    randconfig-002-20251108    gcc-13.4.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
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
x86_64      buildonly-randconfig-005-20251109    clang-20
x86_64      buildonly-randconfig-006-20251109    clang-20
x86_64                              defconfig    gcc-14
x86_64                randconfig-001-20251109    clang-20
x86_64                randconfig-002-20251109    clang-20
x86_64                randconfig-003-20251109    gcc-14
x86_64                randconfig-004-20251109    gcc-14
x86_64                randconfig-005-20251109    gcc-14
x86_64                randconfig-006-20251109    clang-20
x86_64                randconfig-011-20251109    gcc-14
x86_64                randconfig-012-20251109    clang-20
x86_64                randconfig-013-20251109    gcc-14
x86_64                randconfig-014-20251109    clang-20
x86_64                randconfig-015-20251109    clang-20
x86_64                randconfig-016-20251109    clang-20
xtensa                            allnoconfig    gcc-15.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
