Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id F240CC0274F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Oct 2025 18:31:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3FB8F8474C;
	Thu, 23 Oct 2025 16:31:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aRNnUq_8lNpf; Thu, 23 Oct 2025 16:31:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1821F84868
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761237097;
	bh=I10dNXlfqCPTL8wKgrz8cbc6ShkF4UwLvT7acWH5s5k=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Uj8wCtnG1nRGdnNWltQrnLHKUi5/8kv5K2srtKKKnC8wrDsklbKXrxZt2GpxyHC5G
	 r9gTW3oREHS5OwK4hG5Wblp9rPkaytJvEXSxTdUSoGip87d/6iPHhGb7tHtDixIQcf
	 EmH5uoxtT6aW+5/3RviX4l0BTDydpY+3FndgfVrMRhsnjk4IefUddPfe47vqYq0DaY
	 ye7raMDE3Pi3dBfYdiUS7aVIrLOsxMu/neQoLwS4TsCYFi09uw68DrB3eae8wIZ+SN
	 fehpvPF4KYuCj+AsCmJ1CFKQUcFKlZiI7Ums0gDY0BkUazN5GLs7HIaIurX/tPvDbM
	 TCtmhB95OlcVQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1821F84868;
	Thu, 23 Oct 2025 16:31:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 8170E43F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Oct 2025 16:31:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7E2C560B09
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Oct 2025 16:31:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V4Gy-pLnA8BQ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Oct 2025 16:31:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7B35760AFF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7B35760AFF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7B35760AFF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Oct 2025 16:31:34 +0000 (UTC)
X-CSE-ConnectionGUID: 28RQU6BMTbGJYvd+NtE2wA==
X-CSE-MsgGUID: ST5j/tUDQL2lNvQgzCOgvA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63305728"
X-IronPort-AV: E=Sophos;i="6.19,250,1754982000"; d="scan'208";a="63305728"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 09:31:34 -0700
X-CSE-ConnectionGUID: FADUy4eRTvWCPQYh+2Eo1Q==
X-CSE-MsgGUID: a33mnxpiTv+PVVSUh9PXXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,250,1754982000"; d="scan'208";a="214858469"
Received: from lkp-server02.sh.intel.com (HELO 66d7546c76b2) ([10.239.97.151])
 by orviesa002.jf.intel.com with ESMTP; 23 Oct 2025 09:31:34 -0700
Received: from kbuild by 66d7546c76b2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1vByDq-000Dgl-2m
 for intel-wired-lan@lists.osuosl.org; Thu, 23 Oct 2025 16:31:30 +0000
Date: Fri, 24 Oct 2025 00:30:49 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202510240043.evrgqHRg-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761237095; x=1792773095;
 h=date:from:to:subject:message-id;
 bh=QPYPNAY8noFVHMbby/nuDIPq9tk3WSpKAfj3GHCjXnY=;
 b=avyeGIaVXSiepHRHiqQM7dK/p7enJSITU4UhHKruDcySNGu5V1hDn0x8
 kAecyE7miK84gT9UmEfsq03tRcVulqdnfbDKc+2xWS0qIZMZtMg+BjZFl
 R+fZvUVcWv52fvKlxeJ0sB+ZHpH+2EFMF/U9TQCxdX3ktz1LiLGphco1o
 Yt9j0ykFa8Kbq1Sj92gCXiM//kDhbMYffq2hwshLVALYEmc8nu/0hivpl
 dHxLLiVaG6lqDFUm3M+29yluWnI+/XBYB3p4Puyd/9uxX89RswRoI0hLE
 63getprH7bj2/R64BtYxHj1JdeB97DbRRIxsPwp1+B/Rw4KZw7J2PenR1
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=avyeGIaV
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 962ac5ca99a5c3e7469215bf47572440402dfd59
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
branch HEAD: 962ac5ca99a5c3e7469215bf47572440402dfd59  net: macb: Remove duplicate linux/inetdevice.h header

elapsed time: 2294m

configs tested: 271
configs skipped: 9

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
arc                     nsimosci_hs_defconfig    gcc-15.1.0
arc                   randconfig-001-20251023    gcc-8.5.0
arc                   randconfig-002-20251023    gcc-8.5.0
arm                              alldefconfig    gcc-15.1.0
arm                              allmodconfig    clang-19
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    clang-19
arm                              allyesconfig    gcc-15.1.0
arm                     am200epdkit_defconfig    gcc-15.1.0
arm                                 defconfig    clang-19
arm                          gemini_defconfig    clang-20
arm                           h3600_defconfig    clang-22
arm                           h3600_defconfig    gcc-15.1.0
arm                        multi_v7_defconfig    gcc-15.1.0
arm                   randconfig-001-20251023    clang-22
arm                   randconfig-001-20251023    gcc-8.5.0
arm                   randconfig-002-20251023    clang-19
arm                   randconfig-002-20251023    gcc-8.5.0
arm                   randconfig-003-20251023    gcc-8.5.0
arm                   randconfig-004-20251023    gcc-8.5.0
arm                        vexpress_defconfig    gcc-15.1.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    clang-22
arm64                             allnoconfig    gcc-15.1.0
arm64                            allyesconfig    gcc-15.1.0
arm64                               defconfig    clang-19
arm64                 randconfig-001-20251023    clang-22
arm64                 randconfig-001-20251023    gcc-8.5.0
arm64                 randconfig-002-20251023    gcc-8.5.0
arm64                 randconfig-003-20251023    gcc-8.5.0
arm64                 randconfig-004-20251023    clang-17
arm64                 randconfig-004-20251023    gcc-8.5.0
csky                             allmodconfig    gcc-15.1.0
csky                              allnoconfig    clang-22
csky                              allnoconfig    gcc-15.1.0
csky                             allyesconfig    gcc-15.1.0
csky                                defconfig    clang-19
csky                  randconfig-001-20251023    gcc-10.5.0
csky                  randconfig-001-20251023    gcc-11.5.0
csky                  randconfig-002-20251023    gcc-10.5.0
csky                  randconfig-002-20251023    gcc-13.4.0
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    clang-19
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-19
hexagon                          allyesconfig    clang-22
hexagon                             defconfig    clang-19
hexagon               randconfig-001-20251023    clang-22
hexagon               randconfig-001-20251023    gcc-10.5.0
hexagon               randconfig-002-20251023    clang-22
hexagon               randconfig-002-20251023    gcc-10.5.0
i386                             allmodconfig    clang-20
i386                             allmodconfig    gcc-14
i386                              allnoconfig    clang-20
i386                              allnoconfig    gcc-14
i386                             allyesconfig    clang-20
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20251023    clang-20
i386        buildonly-randconfig-002-20251023    clang-20
i386        buildonly-randconfig-003-20251023    clang-20
i386        buildonly-randconfig-003-20251023    gcc-14
i386        buildonly-randconfig-004-20251023    clang-20
i386        buildonly-randconfig-005-20251023    clang-20
i386        buildonly-randconfig-006-20251023    clang-20
i386                                defconfig    clang-20
i386                  randconfig-001-20251023    clang-20
i386                  randconfig-002-20251023    clang-20
i386                  randconfig-003-20251023    clang-20
i386                  randconfig-004-20251023    clang-20
i386                  randconfig-005-20251023    clang-20
i386                  randconfig-006-20251023    clang-20
i386                  randconfig-007-20251023    clang-20
i386                  randconfig-011-20251023    gcc-14
i386                  randconfig-012-20251023    gcc-14
i386                  randconfig-013-20251023    gcc-14
i386                  randconfig-014-20251023    gcc-14
i386                  randconfig-015-20251023    gcc-14
i386                  randconfig-016-20251023    gcc-14
i386                  randconfig-017-20251023    gcc-14
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch                        allyesconfig    gcc-15.1.0
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20251023    clang-22
loongarch             randconfig-001-20251023    gcc-10.5.0
loongarch             randconfig-002-20251023    clang-18
loongarch             randconfig-002-20251023    gcc-10.5.0
m68k                             allmodconfig    clang-19
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    clang-19
m68k                             allyesconfig    gcc-15.1.0
m68k                         amcore_defconfig    clang-22
m68k                          amiga_defconfig    gcc-15.1.0
m68k                                defconfig    clang-19
m68k                        stmark2_defconfig    gcc-15.1.0
m68k                          sun3x_defconfig    gcc-15.1.0
microblaze                       allmodconfig    clang-19
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    clang-19
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                             allmodconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                             allyesconfig    gcc-15.1.0
mips                          eyeq5_defconfig    gcc-15.1.0
nios2                            alldefconfig    gcc-11.5.0
nios2                            allmodconfig    clang-22
nios2                             allnoconfig    gcc-11.5.0
nios2                             allnoconfig    gcc-15.1.0
nios2                            allyesconfig    clang-22
nios2                               defconfig    gcc-11.5.0
nios2                               defconfig    gcc-15.1.0
nios2                 randconfig-001-20251023    gcc-10.5.0
nios2                 randconfig-001-20251023    gcc-8.5.0
nios2                 randconfig-002-20251023    gcc-10.5.0
nios2                 randconfig-002-20251023    gcc-8.5.0
openrisc                         allmodconfig    clang-22
openrisc                          allnoconfig    clang-22
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
openrisc                            defconfig    gcc-14
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    clang-22
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20251023    gcc-10.5.0
parisc                randconfig-001-20251023    gcc-9.5.0
parisc                randconfig-002-20251023    gcc-10.5.0
parisc                randconfig-002-20251023    gcc-8.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    clang-22
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-22
powerpc                          allyesconfig    gcc-15.1.0
powerpc                     asp8347_defconfig    clang-22
powerpc                     ep8248e_defconfig    clang-22
powerpc                      mgcoge_defconfig    clang-22
powerpc               mpc834x_itxgp_defconfig    clang-22
powerpc                 mpc836x_rdk_defconfig    clang-22
powerpc                         ps3_defconfig    gcc-15.1.0
powerpc               randconfig-001-20251023    gcc-10.5.0
powerpc               randconfig-001-20251023    gcc-12.5.0
powerpc               randconfig-002-20251023    clang-22
powerpc               randconfig-002-20251023    gcc-10.5.0
powerpc               randconfig-003-20251023    clang-22
powerpc               randconfig-003-20251023    gcc-10.5.0
powerpc                 xes_mpc85xx_defconfig    clang-22
powerpc64             randconfig-001-20251023    clang-22
powerpc64             randconfig-001-20251023    gcc-10.5.0
powerpc64             randconfig-002-20251023    gcc-10.5.0
powerpc64             randconfig-003-20251023    gcc-10.5.0
riscv                            allmodconfig    clang-22
riscv                            allmodconfig    gcc-15.1.0
riscv                             allnoconfig    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                            allyesconfig    gcc-15.1.0
riscv                               defconfig    gcc-14
riscv                 randconfig-001-20251023    gcc-8.5.0
riscv                 randconfig-002-20251023    gcc-14.3.0
riscv                 randconfig-002-20251023    gcc-8.5.0
s390                             allmodconfig    clang-18
s390                             allmodconfig    gcc-15.1.0
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    gcc-14
s390                  randconfig-001-20251023    clang-19
s390                  randconfig-001-20251023    gcc-8.5.0
s390                  randconfig-002-20251023    gcc-8.5.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-14
sh                             espt_defconfig    gcc-15.1.0
sh                     magicpanelr2_defconfig    clang-22
sh                            migor_defconfig    clang-22
sh                    randconfig-001-20251023    gcc-15.1.0
sh                    randconfig-001-20251023    gcc-8.5.0
sh                    randconfig-002-20251023    gcc-15.1.0
sh                    randconfig-002-20251023    gcc-8.5.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                            allyesconfig    clang-22
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20251023    gcc-12.5.0
sparc                 randconfig-001-20251023    gcc-8.5.0
sparc                 randconfig-002-20251023    gcc-8.5.0
sparc64                          allmodconfig    clang-22
sparc64                          allyesconfig    clang-22
sparc64                             defconfig    gcc-14
sparc64               randconfig-001-20251023    clang-22
sparc64               randconfig-001-20251023    gcc-8.5.0
sparc64               randconfig-002-20251023    gcc-8.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    clang-19
um                               allyesconfig    gcc-14
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                    randconfig-001-20251023    gcc-13
um                    randconfig-001-20251023    gcc-8.5.0
um                    randconfig-002-20251023    gcc-14
um                    randconfig-002-20251023    gcc-8.5.0
um                           x86_64_defconfig    gcc-14
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20251022    clang-20
x86_64      buildonly-randconfig-001-20251023    clang-20
x86_64      buildonly-randconfig-001-20251023    gcc-14
x86_64      buildonly-randconfig-002-20251022    gcc-14
x86_64      buildonly-randconfig-002-20251023    gcc-13
x86_64      buildonly-randconfig-002-20251023    gcc-14
x86_64      buildonly-randconfig-003-20251022    gcc-14
x86_64      buildonly-randconfig-003-20251023    clang-20
x86_64      buildonly-randconfig-003-20251023    gcc-14
x86_64      buildonly-randconfig-004-20251022    clang-20
x86_64      buildonly-randconfig-004-20251023    gcc-14
x86_64      buildonly-randconfig-005-20251022    gcc-14
x86_64      buildonly-randconfig-005-20251023    clang-20
x86_64      buildonly-randconfig-005-20251023    gcc-14
x86_64      buildonly-randconfig-006-20251022    gcc-14
x86_64      buildonly-randconfig-006-20251023    gcc-14
x86_64                              defconfig    clang-20
x86_64                              defconfig    gcc-14
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20251023    clang-20
x86_64                randconfig-002-20251023    clang-20
x86_64                randconfig-003-20251023    clang-20
x86_64                randconfig-004-20251023    clang-20
x86_64                randconfig-005-20251023    clang-20
x86_64                randconfig-006-20251023    clang-20
x86_64                randconfig-007-20251023    clang-20
x86_64                randconfig-008-20251023    clang-20
x86_64                randconfig-071-20251023    clang-20
x86_64                randconfig-072-20251023    clang-20
x86_64                randconfig-073-20251023    clang-20
x86_64                randconfig-074-20251023    clang-20
x86_64                randconfig-075-20251023    clang-20
x86_64                randconfig-076-20251023    clang-20
x86_64                randconfig-077-20251023    clang-20
x86_64                randconfig-078-20251023    clang-20
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-14
x86_64                          rhel-9.4-func    clang-20
x86_64                    rhel-9.4-kselftests    clang-20
x86_64                         rhel-9.4-kunit    gcc-14
x86_64                           rhel-9.4-ltp    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                           allyesconfig    clang-22
xtensa                  audio_kc705_defconfig    clang-22
xtensa                randconfig-001-20251023    gcc-8.5.0
xtensa                randconfig-002-20251023    gcc-13.4.0
xtensa                randconfig-002-20251023    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
