Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 285AAB28FE8
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 Aug 2025 19:42:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2F82C612F3;
	Sat, 16 Aug 2025 17:42:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hn6ZZj9-J9zc; Sat, 16 Aug 2025 17:42:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E5AE2612F2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755366141;
	bh=Z0LNR3XY0D8vH+s5BQ0kjxtNjQFuAD+VGSJmcerK0ZI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=cwgo6nF2fDMkDm3vHZZiXVENSfXi2e6BXRq02lO8NKphkyRJ4Mi2xwDqfH+lIjxfY
	 UENjXjiQ+e3JAd0LFyrumvBIA6UejUC+h90GfOpYIC6K+jk5P0HvuWnjUrvXS51LiZ
	 aJpXB0EJkkFeYWkQwpHgymD+UjIZz81uM9mEclHRLtMhkxg8dBs7cCA8dz35OsYDXP
	 Kelf2kesGuSamTA4N0KcUUKuHhYw5V8BKgoWMANWu5YhdMIU1TUjIoLuhM/toLh0Z8
	 Xqlhn5BvV73lNleskfxNLSc6gmjrQpwfjHw12/R/gYsykHmmBsya77z8wQoJgD0bAh
	 5cDz7it0GtxWA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E5AE2612F2;
	Sat, 16 Aug 2025 17:42:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 87CD7223
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Aug 2025 17:42:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 791AE612D5
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Aug 2025 17:42:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WTgbVG8EYPsM for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 Aug 2025 17:42:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 734276116C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 734276116C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 734276116C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Aug 2025 17:42:18 +0000 (UTC)
X-CSE-ConnectionGUID: qbhQMoqBSLio/0NJQhNjrw==
X-CSE-MsgGUID: 5PNfAw6PRsa2+JoN4D16tw==
X-IronPort-AV: E=McAfee;i="6800,10657,11524"; a="56676371"
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="56676371"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2025 10:42:18 -0700
X-CSE-ConnectionGUID: wQsUynU/Q+e9jpozUA2AiA==
X-CSE-MsgGUID: XAXvOGPMTV6ha/xKvIx2Qg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="167203910"
Received: from lkp-server02.sh.intel.com (HELO 4ea60e6ab079) ([10.239.97.151])
 by orviesa007.jf.intel.com with ESMTP; 16 Aug 2025 10:42:16 -0700
Received: from kbuild by 4ea60e6ab079 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1unKur-000D3i-05
 for intel-wired-lan@lists.osuosl.org; Sat, 16 Aug 2025 17:42:06 +0000
Date: Sun, 17 Aug 2025 01:41:50 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202508170144.sbGGGeJU-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755366140; x=1786902140;
 h=date:from:to:subject:message-id;
 bh=8/xJ5rQZZ8lZ/Vein7yY4WlGor+6ZpN/pzaUSCBQEaY=;
 b=CtpyTbLTFl34YViC4O5SO7irJH31mVjBmc2hDcLqZmaLaLOKGP4zbSfm
 lC77sd0bmccVD6c9toVdgsXK8fX6j474DqBmSmjfqx0dRRd337mOVt3a+
 jIRrcbdL6KKITC4N/ySJR9AsM8EdWH5YQXsDZ99eXSp1sf/fwfsWc62Iy
 sFLVW3KiV6HQCSYl34EM/CFpR6KlSDQOJ4OQNFWuBXXpraCjvePZtUkvt
 Hx/MpoAINTdaGuxx99GT5e6qPuHKfFjE20ltIYjxMMtQJFzCX4n88UfaO
 4m2Sk51ej8Jx8amdEjzO8t4hHlPKy76pPqcp3yuRqiaNtBI6KIp/1IPS7
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CtpyTbLT
Subject: [Intel-wired-lan] [tnguy-net-queue:100GbE] BUILD SUCCESS
 02066fe7cbaab3d852f70d19616c42a193cc9c09
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
branch HEAD: 02066fe7cbaab3d852f70d19616c42a193cc9c09  igc: fix disabling L1.2 PCI-E link substate on I226 on init

elapsed time: 1243m

configs tested: 222
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
arc                   randconfig-001-20250816    gcc-8.5.0
arc                   randconfig-002-20250816    gcc-8.5.0
arm                              allmodconfig    clang-19
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    clang-19
arm                              allyesconfig    gcc-15.1.0
arm                                 defconfig    clang-19
arm                            mps2_defconfig    clang-22
arm                   randconfig-001-20250816    gcc-12.5.0
arm                   randconfig-001-20250816    gcc-8.5.0
arm                   randconfig-002-20250816    gcc-10.5.0
arm                   randconfig-002-20250816    gcc-8.5.0
arm                   randconfig-003-20250816    gcc-10.5.0
arm                   randconfig-003-20250816    gcc-8.5.0
arm                   randconfig-004-20250816    gcc-10.5.0
arm                   randconfig-004-20250816    gcc-8.5.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    clang-22
arm64                             allnoconfig    gcc-15.1.0
arm64                               defconfig    clang-19
arm64                 randconfig-001-20250816    clang-22
arm64                 randconfig-001-20250816    gcc-8.5.0
arm64                 randconfig-002-20250816    clang-22
arm64                 randconfig-002-20250816    gcc-8.5.0
arm64                 randconfig-003-20250816    gcc-8.5.0
arm64                 randconfig-004-20250816    clang-22
arm64                 randconfig-004-20250816    gcc-8.5.0
csky                              allnoconfig    clang-22
csky                              allnoconfig    gcc-15.1.0
csky                                defconfig    clang-19
csky                  randconfig-001-20250816    gcc-15.1.0
csky                  randconfig-002-20250816    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    clang-19
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-19
hexagon                          allyesconfig    clang-22
hexagon                             defconfig    clang-19
hexagon               randconfig-001-20250816    clang-19
hexagon               randconfig-002-20250816    clang-22
i386                             allmodconfig    clang-20
i386                             allmodconfig    gcc-12
i386                              allnoconfig    clang-20
i386                              allnoconfig    gcc-12
i386                             allyesconfig    clang-20
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250816    clang-20
i386        buildonly-randconfig-002-20250816    clang-20
i386        buildonly-randconfig-002-20250816    gcc-12
i386        buildonly-randconfig-003-20250816    clang-20
i386        buildonly-randconfig-003-20250816    gcc-12
i386        buildonly-randconfig-004-20250816    clang-20
i386        buildonly-randconfig-004-20250816    gcc-12
i386        buildonly-randconfig-005-20250816    clang-20
i386        buildonly-randconfig-005-20250816    gcc-12
i386        buildonly-randconfig-006-20250816    clang-20
i386                                defconfig    clang-20
i386                  randconfig-001-20250816    clang-20
i386                  randconfig-002-20250816    clang-20
i386                  randconfig-003-20250816    clang-20
i386                  randconfig-004-20250816    clang-20
i386                  randconfig-005-20250816    clang-20
i386                  randconfig-006-20250816    clang-20
i386                  randconfig-007-20250816    clang-20
i386                  randconfig-011-20250816    clang-20
i386                  randconfig-012-20250816    clang-20
i386                  randconfig-013-20250816    clang-20
i386                  randconfig-014-20250816    clang-20
i386                  randconfig-015-20250816    clang-20
i386                  randconfig-016-20250816    clang-20
i386                  randconfig-017-20250816    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20250816    gcc-15.1.0
loongarch             randconfig-002-20250816    gcc-14.3.0
m68k                             allmodconfig    clang-19
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    clang-19
m68k                             allyesconfig    gcc-15.1.0
m68k                                defconfig    clang-19
microblaze                       allmodconfig    clang-19
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    clang-19
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                       rbtx49xx_defconfig    clang-22
nios2                             allnoconfig    gcc-11.5.0
nios2                             allnoconfig    gcc-15.1.0
nios2                               defconfig    gcc-15.1.0
nios2                 randconfig-001-20250816    gcc-10.5.0
nios2                 randconfig-002-20250816    gcc-8.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
openrisc                            defconfig    gcc-12
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250816    gcc-10.5.0
parisc                randconfig-002-20250816    gcc-8.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-22
powerpc                          allyesconfig    gcc-15.1.0
powerpc                   currituck_defconfig    clang-22
powerpc                 mpc832x_rdb_defconfig    clang-22
powerpc               randconfig-001-20250816    clang-20
powerpc               randconfig-002-20250816    clang-22
powerpc               randconfig-003-20250816    clang-22
powerpc                     tqm8541_defconfig    clang-22
powerpc64             randconfig-001-20250816    gcc-8.5.0
powerpc64             randconfig-002-20250816    clang-22
powerpc64             randconfig-003-20250816    clang-16
riscv                            allmodconfig    clang-22
riscv                            allmodconfig    gcc-15.1.0
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                            allyesconfig    gcc-15.1.0
riscv                               defconfig    gcc-12
riscv                 randconfig-001-20250816    clang-22
riscv                 randconfig-002-20250816    clang-22
riscv                 randconfig-002-20250816    gcc-13.4.0
s390                             allmodconfig    clang-18
s390                             allmodconfig    gcc-15.1.0
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    gcc-12
s390                  randconfig-001-20250816    clang-22
s390                  randconfig-002-20250816    clang-22
s390                  randconfig-002-20250816    gcc-12.5.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-12
sh                          polaris_defconfig    clang-22
sh                    randconfig-001-20250816    clang-22
sh                    randconfig-001-20250816    gcc-15.1.0
sh                    randconfig-002-20250816    clang-22
sh                    randconfig-002-20250816    gcc-12.5.0
sh                      rts7751r2d1_defconfig    clang-22
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250816    clang-22
sparc                 randconfig-001-20250816    gcc-15.1.0
sparc                 randconfig-002-20250816    clang-22
sparc                 randconfig-002-20250816    gcc-15.1.0
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20250816    clang-22
sparc64               randconfig-001-20250816    gcc-11.5.0
sparc64               randconfig-002-20250816    clang-22
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    clang-19
um                               allyesconfig    gcc-12
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250816    clang-22
um                    randconfig-001-20250816    gcc-12
um                    randconfig-002-20250816    clang-22
um                    randconfig-002-20250816    gcc-12
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250816    gcc-12
x86_64      buildonly-randconfig-002-20250816    gcc-12
x86_64      buildonly-randconfig-003-20250816    gcc-12
x86_64      buildonly-randconfig-004-20250816    clang-20
x86_64      buildonly-randconfig-004-20250816    gcc-12
x86_64      buildonly-randconfig-005-20250816    clang-20
x86_64      buildonly-randconfig-005-20250816    gcc-12
x86_64      buildonly-randconfig-006-20250816    gcc-12
x86_64                              defconfig    clang-20
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20250816    clang-20
x86_64                randconfig-002-20250816    clang-20
x86_64                randconfig-003-20250816    clang-20
x86_64                randconfig-004-20250816    clang-20
x86_64                randconfig-005-20250816    clang-20
x86_64                randconfig-006-20250816    clang-20
x86_64                randconfig-007-20250816    clang-20
x86_64                randconfig-008-20250816    clang-20
x86_64                randconfig-071-20250816    gcc-11
x86_64                randconfig-072-20250816    gcc-11
x86_64                randconfig-073-20250816    gcc-11
x86_64                randconfig-074-20250816    gcc-11
x86_64                randconfig-075-20250816    gcc-11
x86_64                randconfig-076-20250816    gcc-11
x86_64                randconfig-077-20250816    gcc-11
x86_64                randconfig-078-20250816    gcc-11
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-12
x86_64                          rhel-9.4-func    clang-20
x86_64                    rhel-9.4-kselftests    clang-20
x86_64                         rhel-9.4-kunit    gcc-12
x86_64                           rhel-9.4-ltp    gcc-12
x86_64                          rhel-9.4-rust    clang-20
xtensa                           alldefconfig    clang-22
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250816    clang-22
xtensa                randconfig-001-20250816    gcc-10.5.0
xtensa                randconfig-002-20250816    clang-22
xtensa                randconfig-002-20250816    gcc-9.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
