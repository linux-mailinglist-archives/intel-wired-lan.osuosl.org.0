Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 818B9A36543
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Feb 2025 19:08:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9C51C40958;
	Fri, 14 Feb 2025 18:08:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2uK8eVWuV2jz; Fri, 14 Feb 2025 18:08:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0D8F3408EA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739556480;
	bh=1i9retiesAmPAb7ZRZoRUTSyB8OW9SoEMWOIS4tGNLE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=WnAvZxYUF1VCY1wHBufRfhDfhNnSgD/tfcF+jd3bbhnVxTaeomuNz8iYpCHmhHlWe
	 YtvsU1Q+QGFjKRlhNrgPjf1+HPRawEdk2qkBW918+VQF4RDlnAGk/PBxn5kR3KP1xg
	 wWeCVz76cgVcrUc+QZgR2dPWsqil/OVHPsZ/UIhPFwIPJBs5xqxW2qygGKi6K5JKb+
	 37FXK9DcdilzzCz3rwWYnmztOvD36vCtTw85+vHUYP+zpvpgzO+umMAausRhmgTiEc
	 mMIJH818Si+0+bGC2sgaXJDFFeuzO7JDx7q7Rt7NyZkAhJOcSLF5SZm6DucXnpqUUa
	 1s1yK6INcHLYw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0D8F3408EA;
	Fri, 14 Feb 2025 18:08:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 8EB3D1E3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 18:07:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7DBB96FBE4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 18:07:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wYhhfP8Wk7Hn for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Feb 2025 18:07:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1E86D6081C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1E86D6081C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1E86D6081C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 18:07:55 +0000 (UTC)
X-CSE-ConnectionGUID: wvQ/OnpoSy6EbwUEDm8dHg==
X-CSE-MsgGUID: oiWZQOuIRBa0Cu62IS8f6Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11345"; a="65668577"
X-IronPort-AV: E=Sophos;i="6.13,286,1732608000"; d="scan'208";a="65668577"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 10:07:55 -0800
X-CSE-ConnectionGUID: L2x02s7kR1eEb9PHrcLO7Q==
X-CSE-MsgGUID: Ae8zSE7NRn+5d1W9yii5KQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,286,1732608000"; d="scan'208";a="144378438"
Received: from lkp-server01.sh.intel.com (HELO d63d4d77d921) ([10.239.97.150])
 by orviesa002.jf.intel.com with ESMTP; 14 Feb 2025 10:07:54 -0800
Received: from kbuild by d63d4d77d921 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tj06R-001A04-2S
 for intel-wired-lan@lists.osuosl.org; Fri, 14 Feb 2025 18:07:51 +0000
Date: Sat, 15 Feb 2025 02:07:21 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202502150214.coYMxunq-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739556476; x=1771092476;
 h=date:from:to:subject:message-id;
 bh=RVHMV5psdprCEvy4nXLr7YZnHXEcMinyszrhlKu1A1s=;
 b=VfUitFVSWbwDcAvRpCToaxxQ172/VNYpuWlSkuqGK/Fck+wtL0CeRzeO
 ZTCI+V9ekVVZh7U39pAF25F4jB33bS+7ieyJqn/oux5XOkHdWQhD59Qnz
 p1s+UchcCSPsyxpFOSe8HuQxHporjn45UsxMN88Lkxnz+eX93LCVvIJi2
 I6CmUKdLssCkZ+ZLYdEakLY6Ce6dZamrP6jTEKp28na7v9NGEVPZZ6rD6
 dOzgZEqWRfmc65YtXU4ffRntOUYRLbKq7n4tTR3Kd3dHoX5f7laZ24ZSB
 PcXMjw7+IbvEzkWq3r6g0kxenpQ45kIyxAkXsJJyIvtyvbmilCvStdCuo
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VfUitFVS
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 7a7e0197133d18cfd9931e7d3a842d0f5730223f
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
branch HEAD: 7a7e0197133d18cfd9931e7d3a842d0f5730223f  Merge git://git.kernel.org/pub/scm/linux/kernel/git/netdev/net

elapsed time: 1263m

configs tested: 208
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    clang-21
alpha                            allyesconfig    gcc-14.2.0
alpha                               defconfig    gcc-14.2.0
arc                              allmodconfig    clang-18
arc                               allnoconfig    gcc-14.2.0
arc                              allyesconfig    clang-18
arc                                 defconfig    gcc-14.2.0
arc                            hsdk_defconfig    gcc-14.2.0
arc                   randconfig-001-20250214    gcc-13.2.0
arc                   randconfig-001-20250214    gcc-14.2.0
arc                   randconfig-002-20250214    gcc-13.2.0
arc                   randconfig-002-20250214    gcc-14.2.0
arm                              allmodconfig    clang-18
arm                               allnoconfig    gcc-14.2.0
arm                              allyesconfig    clang-18
arm                                 defconfig    gcc-14.2.0
arm                   randconfig-001-20250214    clang-16
arm                   randconfig-001-20250214    gcc-14.2.0
arm                   randconfig-002-20250214    gcc-14.2.0
arm                   randconfig-003-20250214    clang-21
arm                   randconfig-003-20250214    gcc-14.2.0
arm                   randconfig-004-20250214    gcc-14.2.0
arm64                            allmodconfig    clang-18
arm64                             allnoconfig    gcc-14.2.0
arm64                               defconfig    gcc-14.2.0
arm64                 randconfig-001-20250214    gcc-14.2.0
arm64                 randconfig-002-20250214    gcc-14.2.0
arm64                 randconfig-003-20250214    gcc-14.2.0
arm64                 randconfig-004-20250214    gcc-14.2.0
csky                              allnoconfig    gcc-14.2.0
csky                                defconfig    gcc-14.2.0
csky                  randconfig-001-20250214    clang-21
csky                  randconfig-001-20250214    gcc-14.2.0
csky                  randconfig-002-20250214    clang-21
csky                  randconfig-002-20250214    gcc-14.2.0
hexagon                          allmodconfig    clang-21
hexagon                           allnoconfig    gcc-14.2.0
hexagon                          allyesconfig    clang-18
hexagon                          allyesconfig    clang-21
hexagon                             defconfig    gcc-14.2.0
hexagon               randconfig-001-20250214    clang-21
hexagon               randconfig-002-20250214    clang-15
hexagon               randconfig-002-20250214    clang-21
i386                             allmodconfig    clang-19
i386                              allnoconfig    clang-19
i386                             allyesconfig    clang-19
i386        buildonly-randconfig-001-20250214    gcc-12
i386        buildonly-randconfig-002-20250214    gcc-12
i386        buildonly-randconfig-003-20250214    clang-19
i386        buildonly-randconfig-003-20250214    gcc-12
i386        buildonly-randconfig-004-20250214    gcc-12
i386        buildonly-randconfig-005-20250214    gcc-12
i386        buildonly-randconfig-006-20250214    gcc-12
i386                                defconfig    clang-19
i386                  randconfig-001-20250214    gcc-12
i386                  randconfig-002-20250214    gcc-12
i386                  randconfig-003-20250214    gcc-12
i386                  randconfig-004-20250214    gcc-12
i386                  randconfig-005-20250214    gcc-12
i386                  randconfig-006-20250214    gcc-12
i386                  randconfig-007-20250214    gcc-12
i386                  randconfig-011-20250214    clang-19
i386                  randconfig-012-20250214    clang-19
i386                  randconfig-013-20250214    clang-19
i386                  randconfig-014-20250214    clang-19
i386                  randconfig-015-20250214    clang-19
i386                  randconfig-016-20250214    clang-19
i386                  randconfig-017-20250214    clang-19
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch                           defconfig    gcc-14.2.0
loongarch             randconfig-001-20250214    clang-21
loongarch             randconfig-001-20250214    gcc-14.2.0
loongarch             randconfig-002-20250214    clang-21
loongarch             randconfig-002-20250214    gcc-14.2.0
m68k                             alldefconfig    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
m68k                                defconfig    gcc-14.2.0
m68k                        m5272c3_defconfig    gcc-14.2.0
m68k                            q40_defconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
microblaze                          defconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-14.2.0
nios2                               defconfig    gcc-14.2.0
nios2                 randconfig-001-20250214    clang-21
nios2                 randconfig-001-20250214    gcc-14.2.0
nios2                 randconfig-002-20250214    clang-21
nios2                 randconfig-002-20250214    gcc-14.2.0
openrisc                          allnoconfig    clang-21
openrisc                         allyesconfig    gcc-14.2.0
openrisc                            defconfig    gcc-12
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    clang-21
parisc                           allyesconfig    gcc-14.2.0
parisc                              defconfig    gcc-12
parisc                randconfig-001-20250214    clang-21
parisc                randconfig-001-20250214    gcc-14.2.0
parisc                randconfig-002-20250214    clang-21
parisc                randconfig-002-20250214    gcc-14.2.0
parisc64                            defconfig    gcc-14.2.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    clang-21
powerpc                          allyesconfig    gcc-14.2.0
powerpc                      katmai_defconfig    gcc-14.2.0
powerpc               randconfig-001-20250214    clang-21
powerpc               randconfig-001-20250214    gcc-14.2.0
powerpc               randconfig-002-20250214    clang-18
powerpc               randconfig-002-20250214    clang-21
powerpc               randconfig-003-20250214    clang-21
powerpc64             randconfig-001-20250214    clang-18
powerpc64             randconfig-001-20250214    clang-21
powerpc64             randconfig-002-20250214    clang-21
powerpc64             randconfig-002-20250214    gcc-14.2.0
powerpc64             randconfig-003-20250214    clang-21
powerpc64             randconfig-003-20250214    gcc-14.2.0
riscv                            allmodconfig    gcc-14.2.0
riscv                             allnoconfig    clang-21
riscv                            allyesconfig    gcc-14.2.0
riscv                               defconfig    gcc-12
riscv                 randconfig-001-20250214    clang-16
riscv                 randconfig-001-20250214    clang-18
riscv                 randconfig-002-20250214    clang-16
riscv                 randconfig-002-20250214    gcc-14.2.0
s390                             allmodconfig    clang-19
s390                             allmodconfig    gcc-14.2.0
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-14.2.0
s390                                defconfig    gcc-12
s390                  randconfig-001-20250214    clang-16
s390                  randconfig-001-20250214    gcc-14.2.0
s390                  randconfig-002-20250214    clang-16
s390                  randconfig-002-20250214    clang-19
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                        apsh4ad0a_defconfig    gcc-14.2.0
sh                                  defconfig    gcc-12
sh                    randconfig-001-20250214    clang-16
sh                    randconfig-001-20250214    gcc-14.2.0
sh                    randconfig-002-20250214    clang-16
sh                    randconfig-002-20250214    gcc-14.2.0
sh                          rsk7201_defconfig    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250214    clang-16
sparc                 randconfig-001-20250214    gcc-14.2.0
sparc                 randconfig-002-20250214    clang-16
sparc                 randconfig-002-20250214    gcc-14.2.0
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20250214    clang-16
sparc64               randconfig-001-20250214    gcc-14.2.0
sparc64               randconfig-002-20250214    clang-16
sparc64               randconfig-002-20250214    gcc-14.2.0
um                               allmodconfig    clang-21
um                                allnoconfig    clang-21
um                               allyesconfig    clang-21
um                               allyesconfig    gcc-12
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250214    clang-16
um                    randconfig-001-20250214    gcc-12
um                    randconfig-002-20250214    clang-16
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64      buildonly-randconfig-001-20250214    clang-19
x86_64      buildonly-randconfig-001-20250214    gcc-12
x86_64      buildonly-randconfig-002-20250214    clang-19
x86_64      buildonly-randconfig-002-20250214    gcc-12
x86_64      buildonly-randconfig-003-20250214    gcc-12
x86_64      buildonly-randconfig-004-20250214    clang-19
x86_64      buildonly-randconfig-004-20250214    gcc-12
x86_64      buildonly-randconfig-005-20250214    gcc-12
x86_64      buildonly-randconfig-006-20250214    gcc-12
x86_64                              defconfig    clang-19
x86_64                                  kexec    clang-19
x86_64                randconfig-001-20250214    clang-19
x86_64                randconfig-002-20250214    clang-19
x86_64                randconfig-003-20250214    clang-19
x86_64                randconfig-004-20250214    clang-19
x86_64                randconfig-005-20250214    clang-19
x86_64                randconfig-006-20250214    clang-19
x86_64                randconfig-007-20250214    clang-19
x86_64                randconfig-008-20250214    clang-19
x86_64                randconfig-071-20250214    gcc-12
x86_64                randconfig-072-20250214    gcc-12
x86_64                randconfig-073-20250214    gcc-12
x86_64                randconfig-074-20250214    gcc-12
x86_64                randconfig-075-20250214    gcc-12
x86_64                randconfig-076-20250214    gcc-12
x86_64                randconfig-077-20250214    gcc-12
x86_64                randconfig-078-20250214    gcc-12
x86_64                               rhel-9.4    clang-19
x86_64                           rhel-9.4-bpf    clang-19
x86_64                         rhel-9.4-kunit    clang-19
x86_64                           rhel-9.4-ltp    clang-19
x86_64                          rhel-9.4-rust    clang-19
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20250214    clang-16
xtensa                randconfig-001-20250214    gcc-14.2.0
xtensa                randconfig-002-20250214    clang-16
xtensa                randconfig-002-20250214    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
