Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B75C5AB91EC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 May 2025 23:46:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4EBEE83B31;
	Thu, 15 May 2025 21:46:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id g2Ov_7N_niXY; Thu, 15 May 2025 21:46:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 72A5A8354B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747345591;
	bh=MtlMLvsmodHz/QoDIQLV66KRXiMUmDtpLpSz/Ca+Y/0=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=g+k6MdO/oXPQBIyOYI6FMUnDxiq24G37C8vK/pb4o4QYZP1Rk/KS8bAHEBPdifViY
	 u1RmSmYqJ74JtBe6yJUlPgNzMSLldMjTftevuah/UCLHhfsP9Z4zKQsxfxto75Eu7W
	 gYIACw+1vgNhmSjZYMzfFAOhM9fLPw5wLKqDuuhm44XjfPGkr9uVrprrXYFid1lIGW
	 XgcRTj3vD0ZTqcBCK/qghuogb9s/h4jjY0H/wkd4FlwW5J9uUIZXa9Mrtbha29j7OY
	 PzlYMyAbJyelfrFZJ3whaIogHvXxG9RQ7XXQ8imNoKvx3lv6HYQQ6aji8K7iCPWvIY
	 KuyAPlijDMzEw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 72A5A8354B;
	Thu, 15 May 2025 21:46:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 6531A185
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 21:46:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 43EBE8354B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 21:46:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RDZtOdjxbCfn for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 May 2025 21:46:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5C5E483B19
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5C5E483B19
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5C5E483B19
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 21:46:27 +0000 (UTC)
X-CSE-ConnectionGUID: 5k+IH+0eSDuOvIkor4tUuQ==
X-CSE-MsgGUID: lLqsAO78RseAO7IzgYOQUQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11434"; a="66710561"
X-IronPort-AV: E=Sophos;i="6.15,292,1739865600"; d="scan'208";a="66710561"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2025 14:46:28 -0700
X-CSE-ConnectionGUID: y9EaAgxqTY+KgKs34+cisg==
X-CSE-MsgGUID: 39ctIyt+SqSUFlvTpuFhkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,292,1739865600"; d="scan'208";a="143734165"
Received: from lkp-server01.sh.intel.com (HELO 1992f890471c) ([10.239.97.150])
 by fmviesa004.fm.intel.com with ESMTP; 15 May 2025 14:46:26 -0700
Received: from kbuild by 1992f890471c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uFgPI-000Ilj-2R
 for intel-wired-lan@lists.osuosl.org; Thu, 15 May 2025 21:46:24 +0000
Date: Fri, 16 May 2025 05:45:56 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202505160546.cffwK06f-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747345589; x=1778881589;
 h=date:from:to:subject:message-id;
 bh=Sbn/g/B+OqFpcCaeHRrULUBKASNZUDctK2vpNeARp1I=;
 b=KBkzeDdwaTXn0QfO7E6M7Ia3LgwZxeYgxARzCXOW0CKwPS6BBwAbqV3V
 +065imCpvIBLHZNxKS26aoJGd3GfU+Mp/OSZOifQgmOlD+WS93ZHttW7o
 wlE0pQqkJNJsLxZ9ikuBUv6y65516nVuZqI3mbmeoUBFNo3Cs29DZMnuX
 Nt9/tsAj5cYZGbbmrOew2quSolCYkhvYyLmsV0s4bbYh4d3WOSfGgnUGJ
 vZkvtoclnAvdC6b1lxFO/nyG5PfX5rs4AFf1qY7KHG7VG/q932dAXJ3LC
 n1RE7t+lJFylVbjSNzCjHXJV94hYIEnVMQOQIhtAjOwS29JYBzW1IJsRP
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KBkzeDdw
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 8d59c2c88b0124372fd61de9dcf69932b6ffb7a4
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
branch HEAD: 8d59c2c88b0124372fd61de9dcf69932b6ffb7a4  ice: fix rebuilding the Tx scheduler tree for large queue counts

elapsed time: 1445m

configs tested: 111
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    gcc-14.2.0
arc                               allnoconfig    gcc-14.2.0
arc                          axs101_defconfig    gcc-14.2.0
arc                   randconfig-001-20250515    gcc-12.4.0
arc                   randconfig-002-20250515    gcc-14.2.0
arm                               allnoconfig    clang-21
arm                          gemini_defconfig    clang-20
arm                       imx_v6_v7_defconfig    clang-16
arm                   randconfig-001-20250515    clang-21
arm                   randconfig-002-20250515    gcc-8.5.0
arm                   randconfig-003-20250515    gcc-8.5.0
arm                   randconfig-004-20250515    clang-21
arm64                             allnoconfig    gcc-14.2.0
arm64                 randconfig-001-20250515    clang-21
arm64                 randconfig-002-20250515    clang-21
arm64                 randconfig-003-20250515    clang-20
arm64                 randconfig-004-20250515    gcc-6.5.0
csky                              allnoconfig    gcc-14.2.0
csky                  randconfig-001-20250515    gcc-14.2.0
csky                  randconfig-002-20250515    gcc-14.2.0
hexagon                           allnoconfig    clang-21
hexagon                          allyesconfig    clang-21
hexagon               randconfig-001-20250515    clang-16
hexagon               randconfig-002-20250515    clang-21
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386        buildonly-randconfig-001-20250515    gcc-11
i386        buildonly-randconfig-002-20250515    gcc-12
i386        buildonly-randconfig-003-20250515    clang-20
i386        buildonly-randconfig-004-20250515    clang-20
i386        buildonly-randconfig-005-20250515    gcc-12
i386        buildonly-randconfig-006-20250515    gcc-11
i386                                defconfig    clang-20
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch             randconfig-001-20250515    gcc-12.4.0
loongarch             randconfig-002-20250515    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
m68k                          hp300_defconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                        bcm63xx_defconfig    clang-21
mips                         bigsur_defconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250515    gcc-12.4.0
nios2                 randconfig-002-20250515    gcc-6.5.0
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                randconfig-001-20250515    gcc-13.3.0
parisc                randconfig-002-20250515    gcc-13.3.0
powerpc                    adder875_defconfig    gcc-14.2.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    gcc-14.2.0
powerpc                      bamboo_defconfig    clang-21
powerpc                     mpc83xx_defconfig    clang-21
powerpc                      pasemi_defconfig    clang-21
powerpc               randconfig-001-20250515    gcc-8.5.0
powerpc               randconfig-002-20250515    gcc-6.5.0
powerpc               randconfig-003-20250515    clang-21
powerpc                     sequoia_defconfig    clang-17
powerpc64             randconfig-001-20250515    clang-21
powerpc64             randconfig-002-20250515    gcc-8.5.0
powerpc64             randconfig-003-20250515    clang-21
riscv                             allnoconfig    gcc-14.2.0
riscv                 randconfig-001-20250515    gcc-8.5.0
riscv                 randconfig-002-20250515    gcc-14.2.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-14.2.0
s390                  randconfig-001-20250515    clang-21
s390                  randconfig-002-20250515    gcc-9.3.0
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                    randconfig-001-20250515    gcc-14.2.0
sh                    randconfig-002-20250515    gcc-10.5.0
sh                           se7724_defconfig    gcc-14.2.0
sh                           se7780_defconfig    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250515    gcc-6.5.0
sparc                 randconfig-002-20250515    gcc-10.3.0
sparc                       sparc64_defconfig    gcc-14.2.0
sparc64               randconfig-001-20250515    gcc-9.3.0
sparc64               randconfig-002-20250515    gcc-9.3.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    gcc-12
um                    randconfig-001-20250515    gcc-12
um                    randconfig-002-20250515    clang-21
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250515    clang-20
x86_64      buildonly-randconfig-002-20250515    clang-20
x86_64      buildonly-randconfig-003-20250515    clang-20
x86_64      buildonly-randconfig-004-20250515    clang-20
x86_64      buildonly-randconfig-005-20250515    clang-20
x86_64      buildonly-randconfig-006-20250515    gcc-12
x86_64                              defconfig    gcc-11
x86_64                          rhel-9.4-rust    clang-18
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20250515    gcc-14.2.0
xtensa                randconfig-002-20250515    gcc-13.3.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
