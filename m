Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E6AD9FA1B1
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Dec 2024 18:06:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EC1B2454B4;
	Sat, 21 Dec 2024 17:06:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tOYlCwOFihTL; Sat, 21 Dec 2024 17:06:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 252654EF37
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734800771;
	bh=/CARfcmbAlgkdsHjcNm5pVtPtnSPzSH6SA0TMcooG7A=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=yL1a4UIAOpxr3d6rSLMrZhqnlY/9W1as4RbPTGMIxypKVu1pATtFY3v4Egw6puNoF
	 AXcJQN/1NxeIZat7wdq+wvEVNzaRoP9JmzlLQ56qTQdDOngSmfsM33Ko+u9rLHvPlD
	 RW/UZ/+p+zepbY8C0+nPgkCNQ+BcSzl4RYzFIN6i2u/sbS91EFwkQExeJy/AVPr+rf
	 ut+SRcms7BIm5qd8IwNAwLPCGH83b1wPTF9bANO8d9bKgtnRNAlZBIwbsmsLw8SiIa
	 hkUrsARB/N0smqejw8iolmYHFATwRLNPaO0AX+MMSkTyYPDswki6IgbeeGqrjLOQo6
	 F9KgJI2HuUuPg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 252654EF37;
	Sat, 21 Dec 2024 17:06:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 22FBE75A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Dec 2024 17:06:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 03B81706CB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Dec 2024 17:06:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PlaNAwrTyrEN for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Dec 2024 17:06:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org CEC79706C7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CEC79706C7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CEC79706C7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Dec 2024 17:06:06 +0000 (UTC)
X-CSE-ConnectionGUID: 3Mh30iKsRG6YV3RgdAn3tA==
X-CSE-MsgGUID: rnFhJdQOTYuS+s9idFSEgA==
X-IronPort-AV: E=McAfee;i="6700,10204,11293"; a="34603642"
X-IronPort-AV: E=Sophos;i="6.12,253,1728975600"; d="scan'208";a="34603642"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2024 09:06:06 -0800
X-CSE-ConnectionGUID: Tzz+aKikQh+tcXdIP1vvCg==
X-CSE-MsgGUID: lHS1SkAOTi61MkNLL9w/pA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,253,1728975600"; d="scan'208";a="129625641"
Received: from lkp-server01.sh.intel.com (HELO a46f226878e0) ([10.239.97.150])
 by orviesa002.jf.intel.com with ESMTP; 21 Dec 2024 09:06:05 -0800
Received: from kbuild by a46f226878e0 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tP2vS-0002Kj-0z
 for intel-wired-lan@lists.osuosl.org; Sat, 21 Dec 2024 17:06:02 +0000
Date: Sun, 22 Dec 2024 01:05:17 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202412220112.otLmMEf4-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734800767; x=1766336767;
 h=date:from:to:subject:message-id;
 bh=XuusJg1kd3shlLYgJWHvyXWGKOJjGbFYICkHXqLI1R4=;
 b=f28cwyrJ/60aAWXFn0keDKZ+2Y//dCRes8EV/x8ZEI0tkHjEQfJvnPS0
 o4e4hzfPiMZ85BDUHWGYMMplPEeRLQMPIYsp1afE4nI2Kdkl17QneHHUS
 ljn9od1psKF6rSV48KwginiMBIimOn/ArA4Bx1BGH4qXcZnsVXfgWN/QA
 P7Q2phHLTjzvkRb4uwBQQ5hpuTfGayCAFniI07bfphI7fX9Av2lm79E55
 gdREyBciA0FtuUPF/1AOVZAeabKZyR09Ukk+k2Xo4kXoLVAdMdoQp6p+y
 XN3SWPXCBJIb3P7s9zkTafRlJAGl5h6ZEl8i66T81nh32z5HDu5GCab5g
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=f28cwyrJ
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 a5b61ad5b24406d56bc744c1539405f4429abea1
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
branch HEAD: a5b61ad5b24406d56bc744c1539405f4429abea1  igb: fix igb_msix_other() handling for PREEMPT_RT

elapsed time: 1443m

configs tested: 169
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-13.2.0
arc                               allnoconfig    gcc-14.2.0
arc                              allyesconfig    gcc-13.2.0
arc                            hsdk_defconfig    clang-20
arc                        nsim_700_defconfig    clang-20
arc                   randconfig-001-20241221    gcc-13.2.0
arc                   randconfig-002-20241221    gcc-13.2.0
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    clang-17
arm                               allnoconfig    gcc-14.2.0
arm                              allyesconfig    gcc-14.2.0
arm                   randconfig-001-20241221    gcc-13.2.0
arm                   randconfig-001-20241221    gcc-14.2.0
arm                   randconfig-002-20241221    gcc-13.2.0
arm                   randconfig-002-20241221    gcc-14.2.0
arm                   randconfig-003-20241221    gcc-13.2.0
arm                   randconfig-003-20241221    gcc-14.2.0
arm                   randconfig-004-20241221    clang-18
arm                   randconfig-004-20241221    gcc-13.2.0
arm                           sunxi_defconfig    clang-20
arm64                            allmodconfig    clang-18
arm64                             allnoconfig    gcc-14.2.0
arm64                 randconfig-001-20241221    clang-18
arm64                 randconfig-001-20241221    gcc-13.2.0
arm64                 randconfig-002-20241221    clang-16
arm64                 randconfig-002-20241221    gcc-13.2.0
arm64                 randconfig-003-20241221    clang-20
arm64                 randconfig-003-20241221    gcc-13.2.0
arm64                 randconfig-004-20241221    gcc-13.2.0
arm64                 randconfig-004-20241221    gcc-14.2.0
csky                             alldefconfig    gcc-14.2.0
csky                              allnoconfig    gcc-14.2.0
csky                  randconfig-001-20241221    gcc-14.2.0
csky                  randconfig-002-20241221    gcc-14.2.0
hexagon                           allnoconfig    clang-20
hexagon                           allnoconfig    gcc-14.2.0
hexagon               randconfig-001-20241221    clang-17
hexagon               randconfig-002-20241221    clang-20
i386                             allmodconfig    clang-19
i386                              allnoconfig    clang-19
i386                             allyesconfig    clang-19
i386        buildonly-randconfig-001-20241221    clang-19
i386        buildonly-randconfig-001-20241221    gcc-12
i386        buildonly-randconfig-002-20241221    clang-19
i386        buildonly-randconfig-002-20241221    gcc-12
i386        buildonly-randconfig-003-20241221    clang-19
i386        buildonly-randconfig-004-20241221    clang-19
i386        buildonly-randconfig-005-20241221    clang-19
i386        buildonly-randconfig-006-20241221    clang-19
i386                                defconfig    clang-19
i386                  randconfig-001-20241221    gcc-12
i386                  randconfig-002-20241221    gcc-12
i386                  randconfig-003-20241221    gcc-12
i386                  randconfig-004-20241221    gcc-12
i386                  randconfig-005-20241221    gcc-12
i386                  randconfig-006-20241221    gcc-12
i386                  randconfig-007-20241221    gcc-12
i386                  randconfig-011-20241221    gcc-12
i386                  randconfig-012-20241221    gcc-12
i386                  randconfig-013-20241221    gcc-12
i386                  randconfig-014-20241221    gcc-12
i386                  randconfig-015-20241221    gcc-12
i386                  randconfig-016-20241221    gcc-12
i386                  randconfig-017-20241221    gcc-12
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch             randconfig-001-20241221    gcc-14.2.0
loongarch             randconfig-002-20241221    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20241221    gcc-14.2.0
nios2                 randconfig-002-20241221    gcc-14.2.0
openrisc                          allnoconfig    clang-20
openrisc                         allyesconfig    gcc-14.2.0
openrisc                            defconfig    gcc-12
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    clang-20
parisc                           allyesconfig    gcc-14.2.0
parisc                              defconfig    gcc-12
parisc                randconfig-001-20241221    gcc-14.2.0
parisc                randconfig-002-20241221    gcc-14.2.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    clang-20
powerpc                          allyesconfig    clang-16
powerpc                 canyonlands_defconfig    clang-20
powerpc                      cm5200_defconfig    clang-20
powerpc                    gamecube_defconfig    clang-20
powerpc                        icon_defconfig    clang-20
powerpc                      katmai_defconfig    gcc-14.2.0
powerpc                   lite5200b_defconfig    gcc-14.2.0
powerpc                 mpc8315_rdb_defconfig    gcc-14.2.0
powerpc                  mpc866_ads_defconfig    clang-20
powerpc                     ppa8548_defconfig    gcc-14.2.0
powerpc               randconfig-001-20241221    gcc-14.2.0
powerpc               randconfig-002-20241221    gcc-14.2.0
powerpc               randconfig-003-20241221    gcc-14.2.0
powerpc64             randconfig-001-20241221    gcc-14.2.0
powerpc64             randconfig-002-20241221    gcc-14.2.0
powerpc64             randconfig-003-20241221    clang-18
riscv                             allnoconfig    clang-20
riscv                            allyesconfig    clang-20
riscv                               defconfig    gcc-12
riscv                 randconfig-001-20241221    gcc-14.2.0
riscv                 randconfig-002-20241221    gcc-14.2.0
s390                             allmodconfig    clang-19
s390                             allmodconfig    gcc-14.2.0
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.2.0
s390                                defconfig    gcc-12
s390                  randconfig-001-20241221    gcc-14.2.0
s390                  randconfig-002-20241221    gcc-14.2.0
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                         apsh4a3a_defconfig    gcc-14.2.0
sh                                  defconfig    gcc-12
sh                    randconfig-001-20241221    gcc-14.2.0
sh                    randconfig-002-20241221    gcc-14.2.0
sh                   sh7724_generic_defconfig    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20241221    gcc-14.2.0
sparc                 randconfig-002-20241221    gcc-14.2.0
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20241221    gcc-14.2.0
sparc64               randconfig-002-20241221    gcc-14.2.0
um                                allnoconfig    clang-20
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20241221    clang-18
um                    randconfig-002-20241221    gcc-12
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64      buildonly-randconfig-001-20241221    gcc-12
x86_64      buildonly-randconfig-002-20241221    gcc-12
x86_64      buildonly-randconfig-003-20241221    gcc-12
x86_64      buildonly-randconfig-004-20241221    gcc-12
x86_64      buildonly-randconfig-005-20241221    gcc-11
x86_64      buildonly-randconfig-005-20241221    gcc-12
x86_64      buildonly-randconfig-006-20241221    gcc-12
x86_64                              defconfig    clang-19
x86_64                                  kexec    clang-19
x86_64                randconfig-001-20241221    gcc-11
x86_64                randconfig-002-20241221    gcc-11
x86_64                randconfig-003-20241221    gcc-11
x86_64                randconfig-004-20241221    gcc-11
x86_64                randconfig-005-20241221    gcc-11
x86_64                randconfig-006-20241221    gcc-11
x86_64                randconfig-007-20241221    gcc-11
x86_64                randconfig-008-20241221    gcc-11
x86_64                randconfig-071-20241221    gcc-12
x86_64                randconfig-072-20241221    gcc-12
x86_64                randconfig-073-20241221    gcc-12
x86_64                randconfig-074-20241221    gcc-12
x86_64                randconfig-075-20241221    gcc-12
x86_64                randconfig-076-20241221    gcc-12
x86_64                randconfig-077-20241221    gcc-12
x86_64                randconfig-078-20241221    gcc-12
x86_64                               rhel-9.4    clang-19
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20241221    gcc-14.2.0
xtensa                randconfig-002-20241221    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
