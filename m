Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 822169BD99D
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Nov 2024 00:20:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E2E4A60884;
	Tue,  5 Nov 2024 23:19:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5KhHYNVtAK1F; Tue,  5 Nov 2024 23:19:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EF43F6069E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730848797;
	bh=PTt+G465wDFj4tCJkn2gnilBay/rh3W/FPumP+JsRtM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=YXG3C1VcKEvnEjMzpqP92KbObBPkDh3FhxGeahJqrMP7L6IPJ1K4SOOwqSEIXfWMP
	 ISdQR+hrA6p7yWIgIcFLUQiipjKKDXnmfnJwZtLTAGZg9pSTApKAkLnPHW7y7zDs2Z
	 9Dp8m3fPsaqMpR3Q/tfsAM/s9qpRZGvmitRj3nupwg8er/mqmRC0iwlbYYtKXJ7X0g
	 zxrwYx+UfauTdv6CbTg2dj25OcjSAv6CkEvIRTtRm4t2xVzqy1ZMFVIJ0CS6ZeZPAN
	 QP/qWLjZPq9TRLwZbdDzznlW2sxPp71N/XjH0qpuzmvCP6x8kk+ZvyxjqsFR+HvTM4
	 q0GX+z56/rfuw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id EF43F6069E;
	Tue,  5 Nov 2024 23:19:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4F065B8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 23:19:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3C0AC40158
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 23:19:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tJdJRG7kcem7 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Nov 2024 23:19:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BF99740126
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BF99740126
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BF99740126
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 23:19:53 +0000 (UTC)
X-CSE-ConnectionGUID: eTcgkYVeSwy07kyo0mMZZA==
X-CSE-MsgGUID: t2wfyZHzR82zKG1ROUfytQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30398844"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30398844"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2024 15:19:53 -0800
X-CSE-ConnectionGUID: hATn5BQURHi8JhEUBbamYQ==
X-CSE-MsgGUID: ElyU+EbHRXqYgOqtOi7aBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,261,1725346800"; d="scan'208";a="84609840"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
 by orviesa007.jf.intel.com with ESMTP; 05 Nov 2024 15:19:52 -0800
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1t8Spx-000maH-2y
 for intel-wired-lan@lists.osuosl.org; Tue, 05 Nov 2024 23:19:49 +0000
Date: Wed, 06 Nov 2024 07:19:40 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202411060733.r2eiHqzh-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730848794; x=1762384794;
 h=date:from:to:subject:message-id;
 bh=w3txOouZKCrnbJsVryUqLgwDhJZZKx+8h6X1mmFhTaI=;
 b=PGLLMkHNEkvllqNQ9vj9pJjhI0+34Q1283vbzCMhRupNGwUG66tE/naZ
 3EOLm7Ejrwz1QKNmsfVj/UZln33Ua0wzuH2O4qErUcrpJtjfJQZutqOIx
 0Zj2CcLg0ww0ThFUFgbeTqWF5CHfaJAI8LB1Ct9FSbW1ndfCz/aBHa8Ii
 Rxw+HbIJqmfQO8OYxVCMRc47fzxMFQT1AqtrepUjfiizFbzZNTlfV41we
 ZgBL3jgz0bjwI9D7CGPTs968//dfKaCo6FTRl75WYusl5VQQ3pELkjfl0
 8myW8GgAhnwB4Mt298JWer8IVr77Gl5TVeke9TTy2GX0tRJJSWGglhF4j
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PGLLMkHN
Subject: [Intel-wired-lan] [tnguy-net-queue:100GbE] BUILD SUCCESS
 b8473723272e346e22aa487b9046fd324b73a0a5
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 100GbE
branch HEAD: b8473723272e346e22aa487b9046fd324b73a0a5  e1000e: Remove Meteor Lake SMBUS workarounds

elapsed time: 1456m

configs tested: 147
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-13.3.0
alpha                            allyesconfig    gcc-13.3.0
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-13.2.0
arc                              allyesconfig    gcc-13.2.0
arc                            hsdk_defconfig    gcc-13.2.0
arc                   randconfig-001-20241105    gcc-13.2.0
arc                   randconfig-002-20241105    gcc-13.2.0
arm                              allmodconfig    gcc-14.1.0
arm                               allnoconfig    clang-20
arm                              allyesconfig    gcc-14.1.0
arm                         axm55xx_defconfig    clang-20
arm                   randconfig-001-20241105    gcc-14.1.0
arm                   randconfig-002-20241105    clang-20
arm                   randconfig-003-20241105    gcc-14.1.0
arm                   randconfig-004-20241105    clang-16
arm                           sama5_defconfig    gcc-14.1.0
arm                        shmobile_defconfig    gcc-14.1.0
arm64                            allmodconfig    clang-20
arm64                             allnoconfig    gcc-14.1.0
arm64                 randconfig-001-20241105    gcc-14.1.0
arm64                 randconfig-002-20241105    gcc-14.1.0
arm64                 randconfig-003-20241105    gcc-14.1.0
arm64                 randconfig-004-20241105    gcc-14.1.0
csky                              allnoconfig    gcc-14.1.0
csky                  randconfig-001-20241105    gcc-14.1.0
csky                  randconfig-002-20241105    gcc-14.1.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    clang-20
hexagon                          allyesconfig    clang-20
hexagon               randconfig-001-20241105    clang-20
hexagon               randconfig-002-20241105    clang-20
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20241105    clang-19
i386        buildonly-randconfig-002-20241105    gcc-12
i386        buildonly-randconfig-003-20241105    clang-19
i386        buildonly-randconfig-004-20241105    gcc-12
i386        buildonly-randconfig-005-20241105    clang-19
i386        buildonly-randconfig-006-20241105    gcc-12
i386                                defconfig    clang-19
i386                  randconfig-001-20241105    gcc-12
i386                  randconfig-002-20241105    clang-19
i386                  randconfig-003-20241105    gcc-12
i386                  randconfig-004-20241105    clang-19
i386                  randconfig-005-20241105    clang-19
i386                  randconfig-006-20241105    gcc-12
i386                  randconfig-011-20241105    clang-19
i386                  randconfig-012-20241105    clang-19
i386                  randconfig-013-20241105    gcc-12
i386                  randconfig-014-20241105    gcc-12
i386                  randconfig-015-20241105    gcc-12
i386                  randconfig-016-20241105    gcc-12
loongarch                        allmodconfig    gcc-14.1.0
loongarch                         allnoconfig    gcc-14.1.0
loongarch             randconfig-001-20241105    gcc-14.1.0
loongarch             randconfig-002-20241105    gcc-14.1.0
m68k                             allmodconfig    gcc-14.1.0
m68k                              allnoconfig    gcc-14.1.0
m68k                             allyesconfig    gcc-14.1.0
m68k                       m5249evb_defconfig    gcc-14.1.0
microblaze                       allmodconfig    gcc-14.1.0
microblaze                        allnoconfig    gcc-14.1.0
microblaze                       allyesconfig    gcc-14.1.0
mips                              allnoconfig    gcc-14.1.0
mips                        vocore2_defconfig    clang-15
nios2                             allnoconfig    gcc-14.1.0
nios2                 randconfig-001-20241105    gcc-14.1.0
nios2                 randconfig-002-20241105    gcc-14.1.0
openrisc                          allnoconfig    gcc-14.1.0
openrisc                         allyesconfig    gcc-14.1.0
openrisc                    or1ksim_defconfig    gcc-14.1.0
parisc                           allmodconfig    gcc-14.1.0
parisc                            allnoconfig    gcc-14.1.0
parisc                           allyesconfig    gcc-14.1.0
parisc                randconfig-001-20241105    gcc-14.1.0
parisc                randconfig-002-20241105    gcc-14.1.0
powerpc                          allmodconfig    gcc-14.1.0
powerpc                           allnoconfig    gcc-14.1.0
powerpc                          allyesconfig    clang-20
powerpc                     ep8248e_defconfig    gcc-14.1.0
powerpc                     rainier_defconfig    gcc-14.1.0
powerpc               randconfig-001-20241105    gcc-14.1.0
powerpc               randconfig-002-20241105    gcc-14.1.0
powerpc               randconfig-003-20241105    gcc-14.1.0
powerpc                  storcenter_defconfig    gcc-14.1.0
powerpc64             randconfig-001-20241105    gcc-14.1.0
powerpc64             randconfig-002-20241105    clang-14
powerpc64             randconfig-003-20241105    gcc-14.1.0
riscv                             allnoconfig    gcc-14.1.0
riscv                            allyesconfig    clang-20
riscv                 randconfig-001-20241105    gcc-14.1.0
riscv                 randconfig-002-20241105    clang-20
s390                             allmodconfig    clang-20
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.1.0
s390                  randconfig-001-20241105    clang-20
s390                  randconfig-002-20241105    clang-20
sh                               allmodconfig    gcc-14.1.0
sh                                allnoconfig    gcc-14.1.0
sh                               allyesconfig    gcc-14.1.0
sh                ecovec24-romimage_defconfig    gcc-14.1.0
sh                    randconfig-001-20241105    gcc-14.1.0
sh                    randconfig-002-20241105    gcc-14.1.0
sh                     sh7710voipgw_defconfig    gcc-14.1.0
sh                        sh7763rdp_defconfig    gcc-14.1.0
sparc                            allmodconfig    gcc-14.1.0
sparc64               randconfig-001-20241105    gcc-14.1.0
sparc64               randconfig-002-20241105    gcc-14.1.0
um                               allmodconfig    clang-20
um                                allnoconfig    clang-17
um                               allyesconfig    gcc-12
um                    randconfig-001-20241105    gcc-12
um                    randconfig-002-20241105    gcc-12
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64      buildonly-randconfig-001-20241105    gcc-12
x86_64      buildonly-randconfig-002-20241105    gcc-12
x86_64      buildonly-randconfig-003-20241105    gcc-12
x86_64      buildonly-randconfig-004-20241105    gcc-12
x86_64      buildonly-randconfig-005-20241105    clang-19
x86_64      buildonly-randconfig-006-20241105    gcc-12
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-19
x86_64                randconfig-001-20241105    gcc-12
x86_64                randconfig-002-20241105    gcc-12
x86_64                randconfig-003-20241105    clang-19
x86_64                randconfig-004-20241105    clang-19
x86_64                randconfig-005-20241105    gcc-12
x86_64                randconfig-006-20241105    gcc-12
x86_64                randconfig-011-20241105    gcc-12
x86_64                randconfig-012-20241105    gcc-12
x86_64                randconfig-013-20241105    clang-19
x86_64                randconfig-014-20241105    gcc-12
x86_64                randconfig-015-20241105    clang-19
x86_64                randconfig-016-20241105    gcc-12
x86_64                randconfig-071-20241105    clang-19
x86_64                randconfig-072-20241105    clang-19
x86_64                randconfig-073-20241105    gcc-12
x86_64                randconfig-074-20241105    gcc-12
x86_64                randconfig-075-20241105    gcc-12
x86_64                randconfig-076-20241105    gcc-12
x86_64                               rhel-8.3    gcc-12
xtensa                            allnoconfig    gcc-14.1.0
xtensa                  audio_kc705_defconfig    gcc-14.1.0
xtensa                randconfig-002-20241105    gcc-14.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
