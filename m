Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 84AADC4FBEB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Nov 2025 21:53:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BA62882262;
	Tue, 11 Nov 2025 20:53:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nA9rPqhw1Lzg; Tue, 11 Nov 2025 20:53:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6D1BF8225F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762894413;
	bh=aDLhwugjWE99rmgzRRlu0a4UgOyr1BGBuGCGvrLwqwk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=NrfAiWV3AbsmFNKWznCObEyolVZJxL8KMDe+jLJEawC+UxUS3tZlJK5crc6Ao5hoq
	 q+ggROdtFNcY3TCpHRyLtKP1XAxgzkMYSt2tlpVQFl7YkchwVBAENhQWlLa2uoL4h8
	 7L8/9U3PkI+Jj9c1fnqMATH2EFG3oGvSrJnljWqSb+6GH0fWuDE9PwxR0d0jTQ7JTO
	 k2yxUbtqaB3SAjmwtt4VcZvxA41fyQNMuMzABmbXUyYZYDoXEJ9KPLy/9DRNBq3ftO
	 5SSECGQ3WuCDQwQDVWwC6q4KF3z01BgxstWL/JEVxb7lEjkAV3TGES/3R0Y21WwR4Z
	 jZep17j1Gmkyw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6D1BF8225F;
	Tue, 11 Nov 2025 20:53:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 57BF9FA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Nov 2025 20:53:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3C40882257
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Nov 2025 20:53:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MxyCPe37CY_R for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Nov 2025 20:53:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0FF94821E5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0FF94821E5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0FF94821E5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Nov 2025 20:53:21 +0000 (UTC)
X-CSE-ConnectionGUID: HWmZbnfIR1+2TmUuoNucRw==
X-CSE-MsgGUID: itwkut7QS+6RA7C2cnPR8A==
X-IronPort-AV: E=McAfee;i="6800,10657,11610"; a="87590658"
X-IronPort-AV: E=Sophos;i="6.19,297,1754982000"; d="scan'208";a="87590658"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 12:53:21 -0800
X-CSE-ConnectionGUID: NV8v32fpQBK4dmq8+R/DbQ==
X-CSE-MsgGUID: BYlgH9AaT2Wgv4NZ+I+tmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,297,1754982000"; d="scan'208";a="219776778"
Received: from lkp-server01.sh.intel.com (HELO 7b01c990427b) ([10.239.97.150])
 by fmviesa001.fm.intel.com with ESMTP; 11 Nov 2025 12:53:20 -0800
Received: from kbuild by 7b01c990427b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1vIvMc-0003Yx-18
 for intel-wired-lan@lists.osuosl.org; Tue, 11 Nov 2025 20:53:18 +0000
Date: Wed, 12 Nov 2025 04:52:19 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202511120413.iP3VSvSt-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762894402; x=1794430402;
 h=date:from:to:subject:message-id;
 bh=82oaS1CRj3AWw69RkbAq1JS5tuChZimdWWcf8Z+NqyU=;
 b=blggepKbz+GMkwW0vYi7/SjkuA+cgD3fExxU1sXQNaRSXr1s0vrSQx07
 PbkPCUDUDbiDhaGpAHzqkFDH8P9D+PvCT9YTOExDLiDspH/sJoE2i9hsH
 27c4YcEO+PmZ/7S4OP8V3T0anejhlKpJdo210CPxcCLfqSXC8zX0paoUQ
 ezuoBZoNcVvCyyLcI8JrDOzLfaSsJylX/1BYLsw72v9dTohyovMmyfpwZ
 p9X63x/yZfxX1wSnwIybLsCSbU0Wodehh34SmG4KqdBRE7W8ZpaBCtavf
 s1TVCXyCKPQ/npC9YzbW9wOpPkmZMp8b/lwCakhhFOsJ6RnaUDhEh713U
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=blggepKb
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 a0c3aefb08cd81864b17c23c25b388dba90b9dad
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 10GbE
branch HEAD: a0c3aefb08cd81864b17c23c25b388dba90b9dad  Merge branch '40GbE' of git://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue

elapsed time: 5362m

configs tested: 131
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                   randconfig-001-20251111    gcc-11.5.0
arc                   randconfig-002-20251111    gcc-12.5.0
arm                               allnoconfig    clang-22
arm                         bcm2835_defconfig    clang-22
arm                            hisi_defconfig    gcc-15.1.0
arm                        neponset_defconfig    gcc-15.1.0
arm                   randconfig-001-20251111    clang-22
arm                   randconfig-002-20251111    clang-17
arm                   randconfig-003-20251111    clang-22
arm                   randconfig-004-20251111    gcc-10.5.0
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20251112    clang-22
arm64                 randconfig-002-20251112    gcc-10.5.0
arm64                 randconfig-003-20251112    gcc-8.5.0
arm64                 randconfig-004-20251112    clang-22
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20251112    gcc-13.4.0
csky                  randconfig-002-20251112    gcc-15.1.0
hexagon                           allnoconfig    clang-22
hexagon               randconfig-001-20251110    clang-22
hexagon               randconfig-001-20251111    clang-22
hexagon               randconfig-002-20251110    clang-22
hexagon               randconfig-002-20251111    clang-16
i386                              allnoconfig    gcc-14
i386        buildonly-randconfig-001-20251112    clang-20
i386        buildonly-randconfig-002-20251112    gcc-14
i386        buildonly-randconfig-003-20251112    clang-20
i386        buildonly-randconfig-004-20251112    clang-20
i386        buildonly-randconfig-005-20251112    gcc-13
i386        buildonly-randconfig-006-20251112    clang-20
i386                  randconfig-001-20251112    gcc-14
i386                  randconfig-002-20251112    gcc-14
i386                  randconfig-003-20251112    gcc-14
i386                  randconfig-004-20251112    clang-20
i386                  randconfig-005-20251112    clang-20
i386                  randconfig-006-20251112    clang-20
i386                  randconfig-007-20251112    gcc-13
i386                  randconfig-011-20251112    gcc-14
i386                  randconfig-012-20251112    gcc-14
i386                  randconfig-013-20251112    clang-20
i386                  randconfig-014-20251112    clang-20
i386                  randconfig-015-20251112    clang-20
i386                  randconfig-016-20251112    gcc-14
i386                  randconfig-017-20251112    clang-20
loongarch                         allnoconfig    clang-22
loongarch             randconfig-001-20251110    clang-22
loongarch             randconfig-001-20251111    gcc-15.1.0
loongarch             randconfig-002-20251110    clang-22
loongarch             randconfig-002-20251111    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                         amcore_defconfig    gcc-15.1.0
m68k                       m5275evb_defconfig    gcc-15.1.0
m68k                       m5475evb_defconfig    gcc-15.1.0
m68k                        stmark2_defconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                        bcm47xx_defconfig    clang-18
mips                         db1xxx_defconfig    clang-22
mips                           ip27_defconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-11.5.0
nios2                 randconfig-001-20251110    gcc-11.5.0
nios2                 randconfig-001-20251111    gcc-8.5.0
nios2                 randconfig-002-20251110    gcc-10.5.0
nios2                 randconfig-002-20251111    gcc-11.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                            defconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20251111    gcc-9.5.0
parisc                randconfig-002-20251111    gcc-8.5.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc               randconfig-001-20251111    gcc-8.5.0
powerpc               randconfig-002-20251111    clang-22
powerpc                     stx_gp3_defconfig    gcc-15.1.0
powerpc                     tqm8548_defconfig    clang-22
powerpc64             randconfig-001-20251111    gcc-8.5.0
powerpc64             randconfig-002-20251111    gcc-12.5.0
riscv                             allnoconfig    gcc-15.1.0
riscv                               defconfig    clang-22
riscv                 randconfig-001-20251110    clang-22
riscv                 randconfig-001-20251112    gcc-10.5.0
riscv                 randconfig-002-20251110    gcc-8.5.0
riscv                 randconfig-002-20251112    clang-22
s390                              allnoconfig    clang-22
s390                  randconfig-001-20251110    gcc-8.5.0
s390                  randconfig-001-20251112    clang-22
s390                  randconfig-002-20251110    gcc-8.5.0
s390                  randconfig-002-20251112    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                                  defconfig    gcc-15.1.0
sh                        edosk7760_defconfig    gcc-15.1.0
sh                          kfr2r09_defconfig    gcc-15.1.0
sh                          polaris_defconfig    gcc-15.1.0
sh                    randconfig-001-20251110    gcc-15.1.0
sh                    randconfig-001-20251112    gcc-10.5.0
sh                    randconfig-002-20251110    gcc-15.1.0
sh                    randconfig-002-20251112    gcc-15.1.0
sh                           se7721_defconfig    gcc-15.1.0
sh                           se7750_defconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20251112    gcc-8.5.0
sparc                 randconfig-002-20251112    gcc-14.3.0
sparc64                             defconfig    clang-20
sparc64               randconfig-001-20251112    gcc-8.5.0
sparc64               randconfig-002-20251112    clang-20
um                                allnoconfig    clang-22
um                                  defconfig    clang-22
um                             i386_defconfig    gcc-14
um                    randconfig-001-20251112    gcc-14
um                           x86_64_defconfig    clang-22
x86_64                           alldefconfig    gcc-14
x86_64                            allnoconfig    clang-20
x86_64      buildonly-randconfig-001-20251112    clang-20
x86_64      buildonly-randconfig-002-20251112    clang-20
x86_64      buildonly-randconfig-003-20251112    clang-20
x86_64      buildonly-randconfig-004-20251112    clang-20
x86_64      buildonly-randconfig-005-20251112    gcc-14
x86_64      buildonly-randconfig-006-20251112    gcc-14
x86_64                              defconfig    gcc-14
x86_64                randconfig-071-20251112    clang-20
x86_64                randconfig-072-20251112    clang-20
x86_64                randconfig-073-20251112    clang-20
x86_64                randconfig-074-20251112    gcc-13
x86_64                randconfig-075-20251112    clang-20
x86_64                randconfig-076-20251112    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                         virt_defconfig    gcc-15.1.0
xtensa                    xip_kc705_defconfig    gcc-15.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
