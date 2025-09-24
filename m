Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EC37B9A22C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Sep 2025 15:59:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 372C740D39;
	Wed, 24 Sep 2025 13:59:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AdHj14Uvhrlw; Wed, 24 Sep 2025 13:59:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 49F2740C3A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758722345;
	bh=iEmWTPJuLP9xoFUwaeXdU/jmVAI7KKHZhx1vCWEW5s8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=VY3jInjnwvwC7f8SUvVlm08hwhNZ0uYAjeWc2eLJKBPCYDIz1Wf/3jVIm+E9p6IEy
	 rMkVJR8q1v7Tq+tAFubE29oFDX4wmUhzNMV3PVeGH2RvBjkg0tKbybbAqoU8r3ZRUZ
	 x6D7rpxwiK/hAo3ZsJCpvDi7OWiEdABfz6QCwwsCiof1+U1NmL0LWBUa5WXwbXbaRz
	 Bi4xiAm9WfJnhBJZKym4whiPNEHiGTG2mrPRKt2qClBiCu6qJGaZVCgRu1eFfTMp55
	 pyGVE3igAbQckvWQxVL7zqHwxeflDI5NuLfzykKv9oQ6TWZwjzWbVXYcg6PtQPVcLk
	 nmahodFDwW66w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 49F2740C3A;
	Wed, 24 Sep 2025 13:59:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 67936129
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Sep 2025 13:59:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 51C5B40692
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Sep 2025 13:59:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZAr2YaUwc6B3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Sep 2025 13:59:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 48D574003D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 48D574003D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 48D574003D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Sep 2025 13:59:01 +0000 (UTC)
X-CSE-ConnectionGUID: ilj/pnGLTJuo5dztfsWLTg==
X-CSE-MsgGUID: 3KbsliguSESArm6H4z75xA==
X-IronPort-AV: E=McAfee;i="6800,10657,11563"; a="61130539"
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="61130539"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 06:59:01 -0700
X-CSE-ConnectionGUID: aumKy8aDSEuCTxPFrKyIUQ==
X-CSE-MsgGUID: 7GswpMUARlqN3W0N4czKYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="176163423"
Received: from lkp-server02.sh.intel.com (HELO 84c55410ccf6) ([10.239.97.151])
 by orviesa006.jf.intel.com with ESMTP; 24 Sep 2025 06:59:00 -0700
Received: from kbuild by 84c55410ccf6 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1v1Q1J-0004Cb-2L
 for intel-wired-lan@lists.osuosl.org; Wed, 24 Sep 2025 13:58:57 +0000
Date: Wed, 24 Sep 2025 21:58:20 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202509242104.poMqP5Uq-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758722342; x=1790258342;
 h=date:from:to:subject:message-id;
 bh=pN2QYuWecl2KWPWnUIe7lL+ILIFJl2Fe/k7841GKtDI=;
 b=Xr90qVZn/FU2qElHf+yYT06DWpAkzJYagN1skiesUSWdOeYe+VLCBx5a
 bkIjSHfCJccG96V7cz/f/LBToVk1Glu1JO15iKaUkyFNTF2DWFYXUhRjc
 eaqL05Sl/Mo0OFr98M+hYjva0szPoypgBDpvHDuJLuFykhBwQuclLm2c8
 GF05saVSt+sdG+3zm5TJ0YKFEUT7BiVlyvRKAVgHuC6NpbCSTZkHbmIDt
 4TZgwuh4npvUMWhmPdrfUw372Gy1hT30lS2izKPiDgsa/xWDufT0Q2V6z
 O4/4y+6IxF+9kQSgmvcd6DnMXTcorhF88H9OuRaqKkuRw8w0xXLhC4uav
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Xr90qVZn
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 3d3aa9472c6dd0704e9961ed4769caac5b1c8d52
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 200GbE
branch HEAD: 3d3aa9472c6dd0704e9961ed4769caac5b1c8d52  bnxt_en: correct offset handling for IPv6 destination address

elapsed time: 2135m

configs tested: 234
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    clang-22
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    clang-19
alpha                            allyesconfig    gcc-15.1.0
alpha                               defconfig    clang-19
arc                              allmodconfig    clang-19
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    clang-22
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    clang-19
arc                              allyesconfig    gcc-15.1.0
arc                                 defconfig    clang-19
arc                   randconfig-001-20250924    gcc-11.5.0
arc                   randconfig-002-20250924    gcc-11.5.0
arc                   randconfig-002-20250924    gcc-14.3.0
arm                              allmodconfig    clang-19
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    clang-19
arm                              allyesconfig    gcc-15.1.0
arm                                 defconfig    clang-19
arm                            mmp2_defconfig    clang-22
arm                            mps2_defconfig    clang-22
arm                   randconfig-001-20250924    clang-22
arm                   randconfig-001-20250924    gcc-11.5.0
arm                   randconfig-002-20250924    clang-22
arm                   randconfig-002-20250924    gcc-11.5.0
arm                   randconfig-003-20250924    clang-22
arm                   randconfig-003-20250924    gcc-11.5.0
arm                   randconfig-004-20250924    gcc-11.5.0
arm                   randconfig-004-20250924    gcc-13.4.0
arm                             rpc_defconfig    clang-22
arm                           stm32_defconfig    clang-22
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    clang-22
arm64                             allnoconfig    gcc-15.1.0
arm64                               defconfig    clang-19
arm64                 randconfig-001-20250924    gcc-11.5.0
arm64                 randconfig-001-20250924    gcc-14.3.0
arm64                 randconfig-002-20250924    clang-18
arm64                 randconfig-002-20250924    gcc-11.5.0
arm64                 randconfig-003-20250924    gcc-11.5.0
arm64                 randconfig-003-20250924    gcc-12.5.0
arm64                 randconfig-004-20250924    clang-22
arm64                 randconfig-004-20250924    gcc-11.5.0
csky                              allnoconfig    clang-22
csky                              allnoconfig    gcc-15.1.0
csky                                defconfig    clang-19
csky                  randconfig-001-20250924    clang-22
csky                  randconfig-001-20250924    gcc-14.3.0
csky                  randconfig-002-20250924    clang-22
csky                  randconfig-002-20250924    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    clang-19
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-19
hexagon                          allyesconfig    clang-22
hexagon                             defconfig    clang-19
hexagon               randconfig-001-20250924    clang-22
hexagon               randconfig-002-20250924    clang-22
i386                             allmodconfig    clang-20
i386                             allmodconfig    gcc-14
i386                              allnoconfig    clang-20
i386                              allnoconfig    gcc-14
i386                             allyesconfig    clang-20
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20250923    gcc-14
i386        buildonly-randconfig-001-20250924    gcc-14
i386        buildonly-randconfig-002-20250923    clang-20
i386        buildonly-randconfig-002-20250924    clang-20
i386        buildonly-randconfig-003-20250923    clang-20
i386        buildonly-randconfig-003-20250924    gcc-13
i386        buildonly-randconfig-004-20250923    gcc-14
i386        buildonly-randconfig-004-20250924    gcc-14
i386        buildonly-randconfig-005-20250923    clang-20
i386        buildonly-randconfig-005-20250924    clang-20
i386        buildonly-randconfig-006-20250923    clang-20
i386        buildonly-randconfig-006-20250924    clang-20
i386                                defconfig    clang-20
i386                  randconfig-001-20250924    clang-20
i386                  randconfig-002-20250924    clang-20
i386                  randconfig-003-20250924    clang-20
i386                  randconfig-004-20250924    clang-20
i386                  randconfig-005-20250924    clang-20
i386                  randconfig-006-20250924    clang-20
i386                  randconfig-007-20250924    clang-20
i386                  randconfig-011-20250924    gcc-14
i386                  randconfig-012-20250924    gcc-14
i386                  randconfig-013-20250924    gcc-14
i386                  randconfig-014-20250924    gcc-14
i386                  randconfig-015-20250924    gcc-14
i386                  randconfig-016-20250924    gcc-14
i386                  randconfig-017-20250924    gcc-14
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20250924    clang-22
loongarch             randconfig-001-20250924    gcc-15.1.0
loongarch             randconfig-002-20250924    clang-22
loongarch             randconfig-002-20250924    gcc-14.3.0
m68k                             allmodconfig    clang-19
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    clang-19
m68k                             allyesconfig    gcc-15.1.0
m68k                                defconfig    clang-19
m68k                        mvme147_defconfig    clang-22
microblaze                       allmodconfig    clang-19
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    clang-19
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                               defconfig    gcc-15.1.0
nios2                 randconfig-001-20250924    clang-22
nios2                 randconfig-001-20250924    gcc-11.5.0
nios2                 randconfig-002-20250924    clang-22
nios2                 randconfig-002-20250924    gcc-8.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
openrisc                            defconfig    gcc-14
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250924    clang-22
parisc                randconfig-001-20250924    gcc-12.5.0
parisc                randconfig-002-20250924    clang-22
parisc                randconfig-002-20250924    gcc-13.4.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-22
powerpc                          allyesconfig    gcc-15.1.0
powerpc                     kmeter1_defconfig    clang-22
powerpc               randconfig-001-20250924    clang-18
powerpc               randconfig-001-20250924    clang-22
powerpc               randconfig-002-20250924    clang-18
powerpc               randconfig-002-20250924    clang-22
powerpc               randconfig-003-20250924    clang-22
powerpc                      tqm8xx_defconfig    clang-22
powerpc64             randconfig-001-20250924    clang-22
powerpc64             randconfig-002-20250924    clang-22
powerpc64             randconfig-002-20250924    gcc-15.1.0
powerpc64             randconfig-003-20250924    clang-22
powerpc64             randconfig-003-20250924    gcc-8.5.0
riscv                            allmodconfig    clang-22
riscv                            allmodconfig    gcc-15.1.0
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                            allyesconfig    gcc-15.1.0
riscv                               defconfig    gcc-14
riscv                 randconfig-001-20250924    gcc-8.5.0
riscv                 randconfig-002-20250924    clang-22
riscv                 randconfig-002-20250924    gcc-8.5.0
s390                             allmodconfig    clang-18
s390                             allmodconfig    gcc-15.1.0
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    gcc-14
s390                  randconfig-001-20250924    gcc-8.5.0
s390                  randconfig-002-20250924    clang-22
s390                  randconfig-002-20250924    gcc-8.5.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-14
sh                    randconfig-001-20250924    gcc-15.1.0
sh                    randconfig-001-20250924    gcc-8.5.0
sh                    randconfig-002-20250924    gcc-15.1.0
sh                    randconfig-002-20250924    gcc-8.5.0
sh                           se7705_defconfig    clang-22
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250924    gcc-15.1.0
sparc                 randconfig-001-20250924    gcc-8.5.0
sparc                 randconfig-002-20250924    gcc-8.5.0
sparc64                             defconfig    gcc-14
sparc64               randconfig-001-20250924    gcc-8.5.0
sparc64               randconfig-002-20250924    gcc-8.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    clang-19
um                               allyesconfig    gcc-14
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                    randconfig-001-20250924    clang-16
um                    randconfig-001-20250924    gcc-8.5.0
um                    randconfig-002-20250924    clang-19
um                    randconfig-002-20250924    gcc-8.5.0
um                           x86_64_defconfig    gcc-14
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250924    clang-20
x86_64      buildonly-randconfig-002-20250924    clang-20
x86_64      buildonly-randconfig-003-20250924    clang-20
x86_64      buildonly-randconfig-004-20250924    clang-20
x86_64      buildonly-randconfig-004-20250924    gcc-14
x86_64      buildonly-randconfig-005-20250924    clang-20
x86_64      buildonly-randconfig-006-20250924    clang-20
x86_64                              defconfig    clang-20
x86_64                              defconfig    gcc-14
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20250924    gcc-14
x86_64                randconfig-002-20250924    gcc-14
x86_64                randconfig-003-20250924    gcc-14
x86_64                randconfig-004-20250924    gcc-14
x86_64                randconfig-005-20250924    gcc-14
x86_64                randconfig-006-20250924    gcc-14
x86_64                randconfig-007-20250924    gcc-14
x86_64                randconfig-008-20250924    gcc-14
x86_64                randconfig-071-20250924    clang-20
x86_64                randconfig-072-20250924    clang-20
x86_64                randconfig-073-20250924    clang-20
x86_64                randconfig-074-20250924    clang-20
x86_64                randconfig-075-20250924    clang-20
x86_64                randconfig-076-20250924    clang-20
x86_64                randconfig-077-20250924    clang-20
x86_64                randconfig-078-20250924    clang-20
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-14
x86_64                          rhel-9.4-func    clang-20
x86_64                    rhel-9.4-kselftests    clang-20
x86_64                         rhel-9.4-kunit    gcc-14
x86_64                           rhel-9.4-ltp    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250924    gcc-13.4.0
xtensa                randconfig-001-20250924    gcc-8.5.0
xtensa                randconfig-002-20250924    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
