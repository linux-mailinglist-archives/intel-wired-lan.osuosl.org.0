Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 111F5A1A8F2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Jan 2025 18:30:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B3FD84173B;
	Thu, 23 Jan 2025 17:30:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Zx2nZRwD8_uR; Thu, 23 Jan 2025 17:30:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2DC2B41794
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737653453;
	bh=MSkxH4Jh3YtnkouJePwPuSrb/rjMwhFyda8NwsN/IB4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=fADbKpeTHKFyEMGulLM8BU7SE2GWtju2T6BCr0LjwKgHd31UZMoaB9Z1MSPcMisD+
	 Rr0Qfo2Un2gewK3ACWg9cruwSdpZb5lj0lIwYisw/r1U6tdqrO2p1CgFHqMGOEiMI8
	 NFIrGOXkp3/OUaoZmxbYmrwIJiJcXdG4IM5QDj94+OtNCxjMMvLNMAd3lyZaxMAY2N
	 7LJjpH6sQb19kJeiarRva6tuaocQDKfrCB4BkEkYesAyepVg43HY8w6pYCuxVyV73I
	 mYF2PsW2T2mU9fj1aQcVjfK8VjaD4DYQt7YqzArV+tN0e767auk3wmb30PG/akVivk
	 qTVmG2Dvlx7kQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2DC2B41794;
	Thu, 23 Jan 2025 17:30:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id A697DB88
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2025 17:30:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 868F0704F5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2025 17:30:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AvYh3hxBzipR for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Jan 2025 17:30:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6731E704F1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6731E704F1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6731E704F1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2025 17:30:49 +0000 (UTC)
X-CSE-ConnectionGUID: BYNyX/EjT4+Wkq2o6WVNdg==
X-CSE-MsgGUID: 69ysk3phTs6KjgcIt1TPww==
X-IronPort-AV: E=McAfee;i="6700,10204,11324"; a="42096049"
X-IronPort-AV: E=Sophos;i="6.13,229,1732608000"; d="scan'208";a="42096049"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2025 09:30:48 -0800
X-CSE-ConnectionGUID: DBVPPbNGScSDidLYLWToKA==
X-CSE-MsgGUID: 7zgSAljtTcKySTAJS8VxJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="112663022"
Received: from lkp-server01.sh.intel.com (HELO d63d4d77d921) ([10.239.97.150])
 by orviesa005.jf.intel.com with ESMTP; 23 Jan 2025 09:30:47 -0800
Received: from kbuild by d63d4d77d921 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tb12T-000bRV-0P
 for intel-wired-lan@lists.osuosl.org; Thu, 23 Jan 2025 17:30:45 +0000
Date: Fri, 24 Jan 2025 01:29:54 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202501240149.E1Op3jlG-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737653449; x=1769189449;
 h=date:from:to:subject:message-id;
 bh=Fz1jtjOovwtIbSgcsd8Z08DT+D7BhJqzY5ZTo40GHao=;
 b=PgZewkV/HTbMsTm1lQR3WwBfjsXrA4I6JuZPA2USyYBChEL6sAqF6Hs8
 MOyxN46ORPcfTW0M9eGvj57PUAVJ9RtVR+gMJZI3znj76AEStGsIkI4nU
 +oTFRXIPv4nzzxDsJrvCHoAYCZ51rAXh8r+TK+kWSywpJZK5PBI6Drgzh
 bVOQpZbJPiLVoQLl2H/LXVfvtLiczizLPD5SVXdqOB2yLt4BOQWa9uqdp
 LH/MMlNkEPPEgnPSGf+xTwfiZuR+WEzcuPvkP12O9OENDXgSd+svjZWOA
 6YMCjwEttVNJuoPhzihi3LIZ3VPuHnhnHdvHy+JxdtSisM4sZbRPlSaRC
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PgZewkV/
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 6a56c31b8e7c1d23b104fb6b432870c5769c5b89
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
branch HEAD: 6a56c31b8e7c1d23b104fb6b432870c5769c5b89  ice: refactor ice_fdir_create_dflt_rules() function

elapsed time: 1442m

configs tested: 124
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    gcc-14.2.0
arc                               allnoconfig    gcc-13.2.0
arc                   randconfig-001-20250123    gcc-13.2.0
arc                   randconfig-002-20250123    gcc-13.2.0
arm                               allnoconfig    clang-17
arm                   randconfig-001-20250123    clang-20
arm                   randconfig-002-20250123    gcc-14.2.0
arm                   randconfig-003-20250123    gcc-14.2.0
arm                   randconfig-004-20250123    gcc-14.2.0
arm                         socfpga_defconfig    gcc-14.2.0
arm                        vexpress_defconfig    gcc-14.2.0
arm64                             allnoconfig    gcc-14.2.0
arm64                 randconfig-001-20250123    gcc-14.2.0
arm64                 randconfig-002-20250123    clang-20
arm64                 randconfig-003-20250123    clang-20
arm64                 randconfig-004-20250123    clang-16
csky                              allnoconfig    gcc-14.2.0
csky                  randconfig-001-20250123    gcc-14.2.0
csky                  randconfig-002-20250123    gcc-14.2.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    clang-20
hexagon                          allyesconfig    clang-18
hexagon               randconfig-001-20250123    clang-20
hexagon               randconfig-002-20250123    clang-20
i386                             alldefconfig    gcc-12
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250123    gcc-12
i386        buildonly-randconfig-002-20250123    clang-19
i386        buildonly-randconfig-003-20250123    gcc-12
i386        buildonly-randconfig-004-20250123    clang-19
i386        buildonly-randconfig-005-20250123    gcc-12
i386        buildonly-randconfig-006-20250123    clang-19
i386                                defconfig    clang-19
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch                 loongson3_defconfig    gcc-14.2.0
loongarch             randconfig-001-20250123    gcc-14.2.0
loongarch             randconfig-002-20250123    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                           ip32_defconfig    clang-20
mips                           jazz_defconfig    clang-20
mips                         rt305x_defconfig    clang-19
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250123    gcc-14.2.0
nios2                 randconfig-002-20250123    gcc-14.2.0
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
openrisc                            defconfig    gcc-14.2.0
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                              defconfig    gcc-14.2.0
parisc                randconfig-001-20250123    gcc-14.2.0
parisc                randconfig-002-20250123    gcc-14.2.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    gcc-14.2.0
powerpc                          allyesconfig    clang-16
powerpc                   bluestone_defconfig    clang-20
powerpc                      pasemi_defconfig    clang-20
powerpc               randconfig-001-20250123    gcc-14.2.0
powerpc               randconfig-002-20250123    clang-18
powerpc               randconfig-003-20250123    gcc-14.2.0
powerpc                     sequoia_defconfig    clang-17
powerpc                     tqm8555_defconfig    gcc-14.2.0
powerpc64             randconfig-001-20250123    gcc-14.2.0
powerpc64             randconfig-002-20250123    clang-16
riscv                            allmodconfig    clang-20
riscv                             allnoconfig    gcc-14.2.0
riscv                            allyesconfig    clang-20
riscv                               defconfig    clang-19
riscv                 randconfig-001-20250123    gcc-14.2.0
riscv                 randconfig-002-20250123    clang-20
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.2.0
s390                                defconfig    clang-15
s390                  randconfig-001-20250123    gcc-14.2.0
s390                  randconfig-002-20250123    clang-15
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                                  defconfig    gcc-14.2.0
sh                    randconfig-001-20250123    gcc-14.2.0
sh                    randconfig-002-20250123    gcc-14.2.0
sh                          rsk7264_defconfig    gcc-14.2.0
sh                          sdk7786_defconfig    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250123    gcc-14.2.0
sparc                 randconfig-002-20250123    gcc-14.2.0
sparc64                             defconfig    gcc-14.2.0
sparc64               randconfig-001-20250123    gcc-14.2.0
sparc64               randconfig-002-20250123    gcc-14.2.0
um                               allmodconfig    clang-20
um                                allnoconfig    clang-18
um                               allyesconfig    gcc-12
um                                  defconfig    clang-20
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250123    gcc-12
um                    randconfig-002-20250123    gcc-11
um                           x86_64_defconfig    clang-15
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64      buildonly-randconfig-001-20250123    clang-19
x86_64      buildonly-randconfig-002-20250123    clang-19
x86_64      buildonly-randconfig-003-20250123    gcc-12
x86_64      buildonly-randconfig-004-20250123    gcc-12
x86_64      buildonly-randconfig-005-20250123    clang-19
x86_64      buildonly-randconfig-006-20250123    clang-19
x86_64                              defconfig    gcc-11
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20250123    gcc-14.2.0
xtensa                randconfig-002-20250123    gcc-14.2.0
xtensa                    smp_lx200_defconfig    gcc-14.2.0
xtensa                    xip_kc705_defconfig    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
