Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A5A8FA4642A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Feb 2025 16:10:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E229883417;
	Wed, 26 Feb 2025 15:10:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tlDgUF6CjhTp; Wed, 26 Feb 2025 15:10:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C8E30833DB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740582613;
	bh=v39uDgySliQ7Pa32zTp9e3/XgEEZGnoX9bRZAUjhRDU=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=txdoA5c541Le9tYryNQi8Nrz0YHIBmJygSCzMW/NOdYhU3X9EKke0rRzCFb2Pusa8
	 t2xcn/wM9X0Q56baqotvu7zj7/2VUV4XU8mCiXe83QIHqCjKjme9tGp5Fm6pRTiTy8
	 Yl/YZZ9UVjt1uXbRyEW5pHyQqUqYx47Ko8zZFKsuaDgKdxKLAesGmFGAapO9V5fDfh
	 qgBqYtQakw3Kz18j7ZLo9eZd8JwUimkvN2PKNuzcIPcfdzggXo0QB823lQova9Nsbz
	 dLgQqIIHUloYWJsVLKU8d+NiUu3B41hHaxxqXDr5keyNZxsXvZ9e82bGh4+uzOxiEE
	 msE5Vde1qfitA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C8E30833DB;
	Wed, 26 Feb 2025 15:10:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id E3E9E68
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Feb 2025 15:10:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D30AC61098
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Feb 2025 15:10:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7MjtxAQzfxf1 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Feb 2025 15:10:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 866F661096
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 866F661096
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 866F661096
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Feb 2025 15:10:10 +0000 (UTC)
X-CSE-ConnectionGUID: +LS9zh9LTkiCs/F3T1krWA==
X-CSE-MsgGUID: uLua/tLgS0CWD2JshP9z8g==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="52066964"
X-IronPort-AV: E=Sophos;i="6.13,317,1732608000"; d="scan'208";a="52066964"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 07:10:10 -0800
X-CSE-ConnectionGUID: ePn31G6DRO6TopEHkH/Ufg==
X-CSE-MsgGUID: eQ41BegXQ9KEHkDTAs0kSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,317,1732608000"; d="scan'208";a="121723409"
Received: from lkp-server02.sh.intel.com (HELO 76cde6cc1f07) ([10.239.97.151])
 by orviesa004.jf.intel.com with ESMTP; 26 Feb 2025 07:10:08 -0800
Received: from kbuild by 76cde6cc1f07 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tnJ30-000BrW-1P
 for intel-wired-lan@lists.osuosl.org; Wed, 26 Feb 2025 15:10:06 +0000
Date: Wed, 26 Feb 2025 23:09:54 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202502262344.KLp9YPYs-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740582610; x=1772118610;
 h=date:from:to:subject:message-id;
 bh=xEw5CzzeDfmvRAyEH1y4oBTfdk1c2XIDBKhUYlU7yLI=;
 b=TJAP2dCrJ/tveJ2Xsj78ZOqyNBjaLDdARW7n+Jsy4mH19hZHW3r/hb8u
 LdGoO+3yK5p9d+s7fseEzLyOU2hl/uiKcpBtXY0DLVik36h6rJ/bPBO46
 tk+kFRMlYTEJNWdIcaHK7JKP3TKzInvscDhTCFNRbcuvu64bUBejNu+kv
 Oxm5TbnvYFMjWj2SLV+aGJJIpM3nadSm4ahplPUlooJlGbWp1ANj/OlJm
 hGUy0gd3M7zubzAtF71fdDxt7fWU0vSCa6M/QdzxU9r4dPVAVQ0LoPULg
 SNt4Qjg1j9lbqa9FUoJ2fH3m+umWzZ3v3G/QCmV4iuv4GHumKB+lXeJtg
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TJAP2dCr
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 287044abff8291993ce9565ac6e6a72b85e33b85
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
branch HEAD: 287044abff8291993ce9565ac6e6a72b85e33b85  sctp: Remove unused payload from sctp_idatahdr

elapsed time: 1442m

configs tested: 181
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    clang-21
alpha                               defconfig    gcc-14.2.0
arc                              allmodconfig    clang-18
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-14.2.0
arc                              allyesconfig    clang-18
arc                              allyesconfig    gcc-13.2.0
arc                                 defconfig    gcc-14.2.0
arc                   randconfig-001-20250226    gcc-13.2.0
arc                   randconfig-002-20250226    gcc-13.2.0
arm                              allmodconfig    clang-18
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    gcc-14.2.0
arm                              allyesconfig    clang-18
arm                              allyesconfig    gcc-14.2.0
arm                                 defconfig    gcc-14.2.0
arm                   randconfig-001-20250226    gcc-14.2.0
arm                   randconfig-002-20250226    clang-21
arm                   randconfig-003-20250226    gcc-14.2.0
arm                   randconfig-004-20250226    gcc-14.2.0
arm64                            allmodconfig    clang-18
arm64                             allnoconfig    gcc-14.2.0
arm64                               defconfig    gcc-14.2.0
arm64                 randconfig-001-20250226    gcc-14.2.0
arm64                 randconfig-002-20250226    gcc-14.2.0
arm64                 randconfig-003-20250226    clang-21
arm64                 randconfig-004-20250226    gcc-14.2.0
csky                              allnoconfig    gcc-14.2.0
csky                                defconfig    gcc-14.2.0
csky                  randconfig-001-20250226    gcc-14.2.0
csky                  randconfig-002-20250226    gcc-14.2.0
hexagon                          allmodconfig    clang-21
hexagon                           allnoconfig    gcc-14.2.0
hexagon                          allyesconfig    clang-21
hexagon                             defconfig    gcc-14.2.0
hexagon               randconfig-001-20250226    clang-21
hexagon               randconfig-002-20250226    clang-21
i386                             allmodconfig    clang-19
i386                             allmodconfig    gcc-12
i386                              allnoconfig    clang-19
i386                              allnoconfig    gcc-12
i386                             allyesconfig    clang-19
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250226    clang-19
i386        buildonly-randconfig-001-20250226    gcc-12
i386        buildonly-randconfig-002-20250226    clang-19
i386        buildonly-randconfig-002-20250226    gcc-12
i386        buildonly-randconfig-003-20250226    clang-19
i386        buildonly-randconfig-003-20250226    gcc-12
i386        buildonly-randconfig-004-20250226    clang-19
i386        buildonly-randconfig-005-20250226    clang-19
i386        buildonly-randconfig-005-20250226    gcc-12
i386        buildonly-randconfig-006-20250226    clang-19
i386        buildonly-randconfig-006-20250226    gcc-12
i386                                defconfig    clang-19
i386                  randconfig-001-20250226    clang-19
i386                  randconfig-002-20250226    clang-19
i386                  randconfig-003-20250226    clang-19
i386                  randconfig-004-20250226    clang-19
i386                  randconfig-005-20250226    clang-19
i386                  randconfig-006-20250226    clang-19
i386                  randconfig-007-20250226    clang-19
i386                  randconfig-011-20250226    gcc-12
i386                  randconfig-012-20250226    gcc-12
i386                  randconfig-013-20250226    gcc-12
i386                  randconfig-014-20250226    gcc-12
i386                  randconfig-015-20250226    gcc-12
i386                  randconfig-016-20250226    gcc-12
i386                  randconfig-017-20250226    gcc-12
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch                           defconfig    gcc-14.2.0
loongarch             randconfig-001-20250226    gcc-14.2.0
loongarch             randconfig-002-20250226    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
m68k                                defconfig    gcc-14.2.0
m68k                       m5208evb_defconfig    gcc-14.2.0
m68k                        m5272c3_defconfig    gcc-14.2.0
m68k                       m5275evb_defconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
microblaze                          defconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                          ath25_defconfig    gcc-14.2.0
mips                       bmips_be_defconfig    gcc-14.2.0
mips                      bmips_stb_defconfig    gcc-14.2.0
mips                          eyeq5_defconfig    gcc-14.2.0
mips                           ip32_defconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-14.2.0
nios2                               defconfig    gcc-14.2.0
nios2                 randconfig-001-20250226    gcc-14.2.0
nios2                 randconfig-002-20250226    gcc-14.2.0
openrisc                          allnoconfig    clang-15
openrisc                         allyesconfig    gcc-14.2.0
openrisc                            defconfig    gcc-12
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    clang-15
parisc                           allyesconfig    gcc-14.2.0
parisc                              defconfig    gcc-12
parisc                randconfig-001-20250226    gcc-14.2.0
parisc                randconfig-002-20250226    gcc-14.2.0
parisc64                            defconfig    gcc-14.2.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    clang-15
powerpc                          allyesconfig    gcc-14.2.0
powerpc                      arches_defconfig    gcc-14.2.0
powerpc                     mpc83xx_defconfig    gcc-14.2.0
powerpc                      ppc6xx_defconfig    gcc-14.2.0
powerpc               randconfig-001-20250226    gcc-14.2.0
powerpc               randconfig-002-20250226    clang-18
powerpc               randconfig-003-20250226    clang-21
powerpc                     stx_gp3_defconfig    gcc-14.2.0
powerpc64             randconfig-001-20250226    clang-18
powerpc64             randconfig-002-20250226    gcc-14.2.0
powerpc64             randconfig-003-20250226    gcc-14.2.0
riscv                            allmodconfig    gcc-14.2.0
riscv                             allnoconfig    clang-15
riscv                            allyesconfig    gcc-14.2.0
riscv                               defconfig    gcc-12
riscv                 randconfig-001-20250226    clang-18
riscv                 randconfig-002-20250226    gcc-14.2.0
s390                             allmodconfig    clang-19
s390                             allmodconfig    gcc-14.2.0
s390                              allnoconfig    clang-15
s390                             allyesconfig    gcc-14.2.0
s390                                defconfig    gcc-12
s390                  randconfig-001-20250226    gcc-14.2.0
s390                  randconfig-002-20250226    clang-15
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                                  defconfig    gcc-12
sh                          polaris_defconfig    gcc-14.2.0
sh                    randconfig-001-20250226    gcc-14.2.0
sh                    randconfig-002-20250226    gcc-14.2.0
sh                           se7712_defconfig    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250226    gcc-14.2.0
sparc                 randconfig-002-20250226    gcc-14.2.0
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20250226    gcc-14.2.0
sparc64               randconfig-002-20250226    gcc-14.2.0
um                               allmodconfig    clang-21
um                                allnoconfig    clang-15
um                               allyesconfig    clang-21
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250226    clang-18
um                    randconfig-002-20250226    gcc-12
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64      buildonly-randconfig-001-20250226    clang-19
x86_64      buildonly-randconfig-002-20250226    clang-19
x86_64      buildonly-randconfig-003-20250226    clang-19
x86_64      buildonly-randconfig-003-20250226    gcc-12
x86_64      buildonly-randconfig-004-20250226    clang-19
x86_64      buildonly-randconfig-005-20250226    clang-19
x86_64      buildonly-randconfig-005-20250226    gcc-12
x86_64      buildonly-randconfig-006-20250226    clang-19
x86_64      buildonly-randconfig-006-20250226    gcc-12
x86_64                              defconfig    clang-19
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-19
x86_64                randconfig-001-20250226    clang-19
x86_64                randconfig-002-20250226    clang-19
x86_64                randconfig-003-20250226    clang-19
x86_64                randconfig-004-20250226    clang-19
x86_64                randconfig-005-20250226    clang-19
x86_64                randconfig-006-20250226    clang-19
x86_64                randconfig-007-20250226    clang-19
x86_64                randconfig-008-20250226    clang-19
x86_64                               rhel-9.4    clang-19
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20250226    gcc-14.2.0
xtensa                randconfig-002-20250226    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
