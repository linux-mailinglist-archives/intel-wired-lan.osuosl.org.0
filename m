Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3198ACBA108
	for <lists+intel-wired-lan@lfdr.de>; Sat, 13 Dec 2025 00:43:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BBADF40AF4;
	Fri, 12 Dec 2025 23:43:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fLyGO_MDJ0-T; Fri, 12 Dec 2025 23:43:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D2C1A40B1B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765583023;
	bh=1iTIFfuX2LBRTdKWwZcM7jCZJZMDOCu5yTDD8VE1ado=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=BeL3nlD0wagSpk7vNaQfMNPZko+s+ckH2t1VefClqfmeVRUAzwuPJSMlZF/JE8SjP
	 u1JaqClorkeouxLBjpwLiuAMkWUVh+9IV/tGOSMSKR+J3UfOA71Q0MdXv4bV+DMXCJ
	 LKrwtpe7XX2PY1YmZIizKiMi0uZk5MPb/3fTcegWEM5nCwBGlATZx8lBWZ473FkdHr
	 kbZaxMt3Iui7dCMAfBN2A13sUSRhe1vmr4ZkZb4Vlc6FFBt5BDpbuaK6zrh6W6yJBJ
	 dzW7XnzzNhDKFaIni2F6/U995EVfakiTAj/h/VexP/pSpGwelO75fLd0umqLXRY+Jn
	 qvN9FeDD91NrA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D2C1A40B1B;
	Fri, 12 Dec 2025 23:43:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id A36A6E7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 23:43:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 898AB60899
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 23:43:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EChB9kD-22QD for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Dec 2025 23:43:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 90DD960723
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 90DD960723
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 90DD960723
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 23:43:41 +0000 (UTC)
X-CSE-ConnectionGUID: LQKTx5D9SMeUGrC4FbIlnA==
X-CSE-MsgGUID: /+DTlSL5QWubjgJ/4gelHg==
X-IronPort-AV: E=McAfee;i="6800,10657,11640"; a="66579163"
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="66579163"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 15:43:41 -0800
X-CSE-ConnectionGUID: B+xyZbupSAqiemNq8tN7iA==
X-CSE-MsgGUID: fSyDO5+lRneGPVqviofksw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="198031848"
Received: from lkp-server01.sh.intel.com (HELO d335e3c6db51) ([10.239.97.150])
 by fmviesa010.fm.intel.com with ESMTP; 12 Dec 2025 15:43:40 -0800
Received: from kbuild by d335e3c6db51 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vUCnR-000000006mM-2lru
 for intel-wired-lan@lists.osuosl.org; Fri, 12 Dec 2025 23:43:37 +0000
Date: Sat, 13 Dec 2025 07:42:57 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202512130751.2CVRcuGo-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765583022; x=1797119022;
 h=date:from:to:subject:message-id;
 bh=tallzXPg8i8c8tU/aXrSKfzFnzXxTEztBLVuCF59c2M=;
 b=RTN+bLOWhYBNZibN8MwpidcOGYTh1e08Js9WMcaoseBgmYd45GHhqF6a
 qGcpdkt8yuq6HROxhuub/HIOMo5C6+V1fjUmrYkqRRewUhySwrZ+bYQ82
 uqzLQz6jEdc3Mr6kA0+Mqk5ih/VOpSCs7afUmmhSIg14pWAeYq2nFFfC5
 f/dTXK4cdyDnj86IhnQQeqFRFLei9zn6IKlpL6K8PNCxC3Sqs/ydc5jCW
 MhsVhN29Bvp1ZZFraDZaKsNsEacT7xIjwXUejoN9BsJRv8SJ6QjeJ9sQS
 mTCdqn6s37Q2GEAIzYGvlAWn55oOoHtrBB27bTQ4h23rrDBB+kgvliCzH
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=RTN+bLOW
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 66fee3db2558d37d8dba81d023712f485c68dffe
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 66fee3db2558d37d8dba81d023712f485c68dffe  ice: Fix incorrect timeout ice_release_res()

elapsed time: 1457m

configs tested: 167
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
alpha                               defconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                                 defconfig    gcc-15.1.0
arc                   randconfig-001-20251212    gcc-8.5.0
arc                   randconfig-002-20251212    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    gcc-15.1.0
arm                                 defconfig    clang-22
arm                   randconfig-001-20251212    clang-22
arm                   randconfig-002-20251212    clang-22
arm                   randconfig-003-20251212    gcc-8.5.0
arm                   randconfig-004-20251212    gcc-15.1.0
arm                    vt8500_v6_v7_defconfig    gcc-15.1.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                               defconfig    gcc-15.1.0
arm64                 randconfig-001-20251212    clang-18
arm64                 randconfig-002-20251212    clang-19
arm64                 randconfig-003-20251212    clang-22
arm64                 randconfig-004-20251212    gcc-8.5.0
csky                             allmodconfig    gcc-15.1.0
csky                              allnoconfig    gcc-15.1.0
csky                                defconfig    gcc-15.1.0
csky                  randconfig-001-20251212    gcc-14.3.0
csky                  randconfig-002-20251212    gcc-13.4.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon                             defconfig    clang-22
hexagon               randconfig-001-20251212    clang-22
hexagon               randconfig-002-20251212    clang-22
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20251212    gcc-12
i386        buildonly-randconfig-002-20251212    gcc-12
i386        buildonly-randconfig-003-20251212    gcc-14
i386        buildonly-randconfig-004-20251212    gcc-14
i386        buildonly-randconfig-005-20251212    gcc-14
i386        buildonly-randconfig-006-20251212    gcc-14
i386                                defconfig    clang-20
i386                  randconfig-001-20251213    clang-20
i386                  randconfig-002-20251213    gcc-14
i386                  randconfig-003-20251213    gcc-13
i386                  randconfig-004-20251212    gcc-14
i386                  randconfig-004-20251213    clang-20
i386                  randconfig-005-20251213    clang-20
i386                  randconfig-006-20251213    gcc-14
i386                  randconfig-007-20251213    gcc-14
i386                  randconfig-011-20251212    gcc-14
i386                  randconfig-012-20251212    gcc-14
i386                  randconfig-013-20251212    gcc-14
i386                  randconfig-014-20251212    gcc-14
i386                  randconfig-015-20251212    clang-20
i386                  randconfig-016-20251212    gcc-14
i386                  randconfig-017-20251212    gcc-14
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20251212    clang-22
loongarch             randconfig-002-20251212    clang-18
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
m68k                                defconfig    gcc-15.1.0
m68k                        mvme147_defconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                             allmodconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                             allyesconfig    gcc-15.1.0
mips                           ip27_defconfig    gcc-15.1.0
mips                        vocore2_defconfig    clang-22
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20251212    gcc-11.5.0
nios2                 randconfig-002-20251212    gcc-8.5.0
openrisc                         allmodconfig    gcc-15.1.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                            defconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20251212    gcc-10.5.0
parisc                randconfig-002-20251212    gcc-12.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                       eiger_defconfig    clang-22
powerpc               randconfig-001-20251212    clang-22
powerpc               randconfig-002-20251212    gcc-12.5.0
powerpc64             randconfig-001-20251212    gcc-11.5.0
powerpc64             randconfig-002-20251212    clang-22
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    clang-22
riscv                 randconfig-001-20251212    clang-22
riscv                 randconfig-002-20251212    clang-17
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    clang-22
s390                  randconfig-001-20251212    clang-22
s390                  randconfig-002-20251212    clang-22
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-15.1.0
sh                    randconfig-001-20251212    gcc-14.3.0
sh                    randconfig-002-20251212    gcc-10.5.0
sh                          rsk7201_defconfig    gcc-15.1.0
sh                           se7780_defconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20251212    gcc-8.5.0
sparc                 randconfig-002-20251212    gcc-8.5.0
sparc64                          allmodconfig    clang-22
sparc64                             defconfig    clang-20
sparc64               randconfig-001-20251212    gcc-8.5.0
sparc64               randconfig-002-20251212    clang-22
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-14
um                                  defconfig    clang-22
um                             i386_defconfig    gcc-14
um                    randconfig-001-20251212    clang-22
um                    randconfig-002-20251212    gcc-14
um                           x86_64_defconfig    clang-22
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20251212    clang-20
x86_64      buildonly-randconfig-002-20251212    clang-20
x86_64      buildonly-randconfig-003-20251212    clang-20
x86_64      buildonly-randconfig-004-20251212    clang-20
x86_64      buildonly-randconfig-005-20251212    gcc-14
x86_64      buildonly-randconfig-006-20251212    clang-20
x86_64                              defconfig    gcc-14
x86_64                randconfig-001-20251212    gcc-14
x86_64                randconfig-002-20251212    clang-20
x86_64                randconfig-003-20251212    clang-20
x86_64                randconfig-004-20251212    clang-20
x86_64                randconfig-005-20251212    clang-20
x86_64                randconfig-006-20251212    clang-20
x86_64                randconfig-011-20251212    clang-20
x86_64                randconfig-012-20251212    gcc-14
x86_64                randconfig-013-20251212    gcc-14
x86_64                randconfig-014-20251212    clang-20
x86_64                randconfig-015-20251212    gcc-14
x86_64                randconfig-016-20251212    clang-20
x86_64                randconfig-071-20251212    gcc-12
x86_64                randconfig-072-20251212    gcc-14
x86_64                randconfig-073-20251212    clang-20
x86_64                randconfig-074-20251212    gcc-14
x86_64                randconfig-075-20251212    clang-20
x86_64                randconfig-076-20251212    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                           allyesconfig    gcc-15.1.0
xtensa                randconfig-001-20251212    gcc-8.5.0
xtensa                randconfig-002-20251212    gcc-9.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
