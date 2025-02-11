Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 88D34A30F22
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Feb 2025 16:04:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3240660BE4;
	Tue, 11 Feb 2025 15:04:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 70vadBucGd5y; Tue, 11 Feb 2025 15:04:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1C36060BAD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739286270;
	bh=JrXvoqRijnYv69Z30NXQleuRXylGBCfh5U0KUNONUk4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=PHqeSaFSIKQSYnKO3pUj/Fcs87zogWt6RlAdi4odsBTxrM4PXlnynAbm3NkGfa2kL
	 SqgJYUM3Ft0WbBZPLvCZupb/v4MY5vIqDBET8xyf+pSLdIZuAdasjlP+eV2aPBTCYK
	 fNuZNQU+cex12oRb24vjIYrHmSiY+es7Rz5GOrYOfBNTMnSyHRify7bNBwycral2DH
	 lZuovsizoH7FRMDlB4XWb3bafmDBCM6l2zSWTFrYkEFG6hdpRA4LQpUZoUBGMaw8gQ
	 znPfqIB2DhLuNz4k7mB/8bX9L4L+mGXYW1Rl5gn0y+GMKknBVMBDSGd9SB1BGYx2Cy
	 YbnK3B8dz+t8A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1C36060BAD;
	Tue, 11 Feb 2025 15:04:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 5D2286C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 15:04:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4C064404C9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 15:04:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id J8cg7SQhT3Mx for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Feb 2025 15:04:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 88D3540350
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 88D3540350
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 88D3540350
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 15:04:24 +0000 (UTC)
X-CSE-ConnectionGUID: Aotq/pGHRziJEr0wtrOxog==
X-CSE-MsgGUID: uweXVY7mSvSfjRFdsznbSg==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="50545041"
X-IronPort-AV: E=Sophos;i="6.13,277,1732608000"; d="scan'208";a="50545041"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 07:04:24 -0800
X-CSE-ConnectionGUID: F5hnaKxfTNap2Oc6sZ3pPQ==
X-CSE-MsgGUID: VF94+bCxQzCy91rztEkDCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,277,1732608000"; d="scan'208";a="113176082"
Received: from lkp-server01.sh.intel.com (HELO d63d4d77d921) ([10.239.97.150])
 by fmviesa009.fm.intel.com with ESMTP; 11 Feb 2025 07:04:23 -0800
Received: from kbuild by d63d4d77d921 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1throD-0014Ke-0d
 for intel-wired-lan@lists.osuosl.org; Tue, 11 Feb 2025 15:04:21 +0000
Date: Tue, 11 Feb 2025 23:04:17 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202502112311.Zt8f0VMD-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739286265; x=1770822265;
 h=date:from:to:subject:message-id;
 bh=PZoKkHdpgCrpzykjzfh54dqwGIM0n7W7krSB4KbUIME=;
 b=TJadEc4xIBkKD8W1LZATCDHHAPgSwbsePtgrKz84Co5A4puKSNBBGoQD
 hRMlXR97VBAf3y3N8Sxr3a8yPmi56TByCacsuF3k9PltdGqfh/Zl8ZYP8
 K0U51C2HNgiXJzy3T7QCunxYXVqGeRNl4M/RvFm72qVFTQPJ9LBbiA3wA
 X4pDMnf6lrUrGWZCCd5ajPQvl1c2QDJf09EWGAvXi3YLoom4tglMwJynY
 2phnKMb7DGI2NBDGnLtLhmFaBe3ZFFkVnSnd0JoUk6qL84I4HGaBVA3Px
 1LNsEVnTyIJ1nTmVmbXRm1jU1IQBCarZEsmfybx2CZ1NsKCJgI6MeH7Lh
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TJadEc4x
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 13e22972471d1639c16081e95b1caed9351ed3be
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: 13e22972471d1639c16081e95b1caed9351ed3be  e1000e: Fix real-time violations on link up

elapsed time: 1152m

configs tested: 189
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    clang-21
alpha                            allyesconfig    gcc-14.2.0
arc                              allmodconfig    clang-18
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-14.2.0
arc                              allyesconfig    clang-18
arc                              allyesconfig    gcc-13.2.0
arc                   randconfig-001-20250211    clang-19
arc                   randconfig-001-20250211    gcc-13.2.0
arc                   randconfig-002-20250211    clang-19
arc                   randconfig-002-20250211    gcc-13.2.0
arm                              allmodconfig    clang-18
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    gcc-14.2.0
arm                              allyesconfig    clang-18
arm                              allyesconfig    gcc-14.2.0
arm                   randconfig-001-20250211    clang-19
arm                   randconfig-001-20250211    gcc-14.2.0
arm                   randconfig-002-20250211    clang-19
arm                   randconfig-002-20250211    clang-21
arm                   randconfig-003-20250211    clang-19
arm                   randconfig-003-20250211    gcc-14.2.0
arm                   randconfig-004-20250211    clang-19
arm                   randconfig-004-20250211    gcc-14.2.0
arm                        realview_defconfig    gcc-14.2.0
arm                         vf610m4_defconfig    gcc-14.2.0
arm64                            allmodconfig    clang-18
arm64                             allnoconfig    gcc-14.2.0
arm64                 randconfig-001-20250211    clang-17
arm64                 randconfig-001-20250211    clang-19
arm64                 randconfig-002-20250211    clang-19
arm64                 randconfig-003-20250211    clang-19
arm64                 randconfig-003-20250211    gcc-14.2.0
arm64                 randconfig-004-20250211    clang-19
csky                              allnoconfig    gcc-14.2.0
csky                                defconfig    gcc-14.2.0
csky                  randconfig-001-20250211    gcc-14.2.0
csky                  randconfig-002-20250211    gcc-14.2.0
hexagon                          allmodconfig    clang-21
hexagon                           allnoconfig    gcc-14.2.0
hexagon                          allyesconfig    clang-18
hexagon                          allyesconfig    clang-21
hexagon               randconfig-001-20250211    clang-18
hexagon               randconfig-002-20250211    clang-21
i386                             allmodconfig    clang-19
i386                             allmodconfig    gcc-12
i386                              allnoconfig    clang-19
i386                              allnoconfig    gcc-12
i386                             allyesconfig    clang-19
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250211    gcc-12
i386        buildonly-randconfig-002-20250211    gcc-12
i386        buildonly-randconfig-003-20250211    gcc-12
i386        buildonly-randconfig-004-20250211    gcc-12
i386        buildonly-randconfig-005-20250211    gcc-12
i386        buildonly-randconfig-006-20250211    clang-19
i386                                defconfig    clang-19
i386                  randconfig-001-20250211    gcc-12
i386                  randconfig-002-20250211    gcc-12
i386                  randconfig-003-20250211    gcc-12
i386                  randconfig-004-20250211    gcc-12
i386                  randconfig-005-20250211    gcc-12
i386                  randconfig-006-20250211    gcc-12
i386                  randconfig-007-20250211    gcc-12
i386                  randconfig-011-20250211    gcc-11
i386                  randconfig-012-20250211    gcc-11
i386                  randconfig-013-20250211    gcc-11
i386                  randconfig-014-20250211    gcc-11
i386                  randconfig-015-20250211    gcc-11
i386                  randconfig-016-20250211    gcc-11
i386                  randconfig-017-20250211    gcc-11
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch             randconfig-001-20250211    gcc-14.2.0
loongarch             randconfig-002-20250211    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
m68k                          amiga_defconfig    gcc-14.2.0
m68k                          hp300_defconfig    gcc-14.2.0
m68k                            q40_defconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                          ath79_defconfig    gcc-14.2.0
mips                        omega2p_defconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250211    gcc-14.2.0
nios2                 randconfig-002-20250211    gcc-14.2.0
openrisc                          allnoconfig    clang-21
openrisc                         allyesconfig    gcc-14.2.0
openrisc                            defconfig    gcc-12
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    clang-21
parisc                           allyesconfig    gcc-14.2.0
parisc                              defconfig    gcc-12
parisc                generic-32bit_defconfig    gcc-14.2.0
parisc                randconfig-001-20250211    gcc-14.2.0
parisc                randconfig-002-20250211    gcc-14.2.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    clang-21
powerpc                          allyesconfig    gcc-14.2.0
powerpc                        cell_defconfig    gcc-14.2.0
powerpc                         ps3_defconfig    gcc-14.2.0
powerpc               randconfig-001-20250211    clang-15
powerpc               randconfig-002-20250211    clang-21
powerpc               randconfig-003-20250211    clang-19
powerpc64             randconfig-001-20250211    clang-21
powerpc64             randconfig-002-20250211    gcc-14.2.0
powerpc64             randconfig-003-20250211    clang-17
riscv                            allmodconfig    gcc-14.2.0
riscv                             allnoconfig    clang-21
riscv                            allyesconfig    gcc-14.2.0
riscv                               defconfig    gcc-12
riscv                 randconfig-001-20250211    gcc-14.2.0
riscv                 randconfig-002-20250211    clang-19
s390                             allmodconfig    clang-19
s390                             allmodconfig    gcc-14.2.0
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-14.2.0
s390                                defconfig    gcc-12
s390                  randconfig-001-20250211    clang-21
s390                  randconfig-002-20250211    gcc-14.2.0
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                                  defconfig    gcc-12
sh                    randconfig-001-20250211    gcc-14.2.0
sh                    randconfig-002-20250211    gcc-14.2.0
sh                          rsk7201_defconfig    gcc-14.2.0
sh                           se7722_defconfig    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250211    gcc-14.2.0
sparc                 randconfig-002-20250211    gcc-14.2.0
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20250211    gcc-14.2.0
sparc64               randconfig-002-20250211    gcc-14.2.0
um                               allmodconfig    clang-21
um                                allnoconfig    clang-21
um                               allyesconfig    clang-21
um                               allyesconfig    gcc-12
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250211    clang-17
um                    randconfig-002-20250211    clang-15
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64      buildonly-randconfig-001-20250211    clang-19
x86_64      buildonly-randconfig-001-20250211    gcc-12
x86_64      buildonly-randconfig-002-20250211    gcc-12
x86_64      buildonly-randconfig-003-20250211    clang-19
x86_64      buildonly-randconfig-003-20250211    gcc-12
x86_64      buildonly-randconfig-004-20250211    gcc-11
x86_64      buildonly-randconfig-004-20250211    gcc-12
x86_64      buildonly-randconfig-005-20250211    clang-19
x86_64      buildonly-randconfig-005-20250211    gcc-12
x86_64      buildonly-randconfig-006-20250211    gcc-12
x86_64                              defconfig    clang-19
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-19
x86_64                randconfig-001-20250211    gcc-11
x86_64                randconfig-002-20250211    gcc-11
x86_64                randconfig-003-20250211    gcc-11
x86_64                randconfig-004-20250211    gcc-11
x86_64                randconfig-005-20250211    gcc-11
x86_64                randconfig-006-20250211    gcc-11
x86_64                randconfig-007-20250211    gcc-11
x86_64                randconfig-008-20250211    gcc-11
x86_64                randconfig-071-20250211    clang-19
x86_64                randconfig-072-20250211    clang-19
x86_64                randconfig-073-20250211    clang-19
x86_64                randconfig-074-20250211    clang-19
x86_64                randconfig-075-20250211    clang-19
x86_64                randconfig-076-20250211    clang-19
x86_64                randconfig-077-20250211    clang-19
x86_64                randconfig-078-20250211    clang-19
x86_64                               rhel-9.4    clang-19
x86_64                           rhel-9.4-bpf    clang-19
x86_64                         rhel-9.4-kunit    clang-19
x86_64                           rhel-9.4-ltp    clang-19
x86_64                          rhel-9.4-rust    clang-19
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20250211    gcc-14.2.0
xtensa                randconfig-002-20250211    gcc-14.2.0
xtensa                    xip_kc705_defconfig    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
