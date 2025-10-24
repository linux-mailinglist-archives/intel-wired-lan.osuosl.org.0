Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A093C082A6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Oct 2025 23:17:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 455A860E65;
	Fri, 24 Oct 2025 21:17:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JYFRpr3zky_i; Fri, 24 Oct 2025 21:17:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5FDA160E5E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761340621;
	bh=XDa7jhs6AdsI3dZP+EqtbngE4EErSqw9lfUZmSe5ZF8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=qc2pjqLqcl/LsVRjoX7bBmRtR5QIPBpOLHdnvpk9SXL9szMKkAtyf76R3ldO22pNa
	 yW75Crwm2iNQPPaxHb2xXSnYRGOm1YW7ixqAdVqjmDM5IOMCZ0z7ROFff6g1c02zPr
	 fg4Hf5I5bfkZOc9U59rXA1n+hKJ+/A43Vb+L/lFA+mimb+NSo3nNMPZc5/NmDOFAi6
	 sRXFG1ldmjOEeqqVgtzUThXNqBZTpmQZWJZ9PrTLdUHKdTfqvmpN2/t2c92kMJUsgY
	 NUB/mk+jaNSVLdreXcqI9sKNq2m+JT9HKATJrAcE4k4YVRz75qi2k1TNPA5oX9Es2G
	 dn23QMXubI+iA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5FDA160E5E;
	Fri, 24 Oct 2025 21:17:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 358CE43F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Oct 2025 21:16:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 26C618474D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Oct 2025 21:16:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V4BnRGgJ07uR for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Oct 2025 21:16:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B33AE84747
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B33AE84747
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B33AE84747
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Oct 2025 21:16:57 +0000 (UTC)
X-CSE-ConnectionGUID: KNTxz6qoRySLqkZdo7tb4w==
X-CSE-MsgGUID: UcMjASHcSm6os/PJ3Y2r+A==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="88997620"
X-IronPort-AV: E=Sophos;i="6.19,253,1754982000"; d="scan'208";a="88997620"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 14:16:57 -0700
X-CSE-ConnectionGUID: Xvwk3A3jSCmeXOctJwZJ5Q==
X-CSE-MsgGUID: iW8l92nFR6qBhkM3/FkRKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,253,1754982000"; d="scan'208";a="215435729"
Received: from lkp-server02.sh.intel.com (HELO 66d7546c76b2) ([10.239.97.151])
 by fmviesa001.fm.intel.com with ESMTP; 24 Oct 2025 14:16:56 -0700
Received: from kbuild by 66d7546c76b2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1vCP9Z-000Etl-2y
 for intel-wired-lan@lists.osuosl.org; Fri, 24 Oct 2025 21:16:53 +0000
Date: Sat, 25 Oct 2025 05:16:39 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202510250534.mDEZ0WE2-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761340618; x=1792876618;
 h=date:from:to:subject:message-id;
 bh=H4w0tI5Gz5m6OEeDALrRvmp0Rv5m1atzMqH2Xdb8Llg=;
 b=ICE1xm1JjTa0YFgaRgJvarG1pdGk1HeHkksciOCU9ExQ7OMsJigBEGbt
 J39cbBf7cDdx14GXmVighmPgpqcagzr6wKDty9gqF02YXXkKtV9J7pQ6D
 PdV2uXa4tKpm+vFS1fuZssXjqJjOr/jQY90MvKDV1Lb17jB4wMMlDyjsI
 Oy8Uq+84dkM4oWscU7sa/Kmor5ft1v06hshCQePfbwliaBOYXpo+zL6kj
 yAjak2omfL6NOo/YxmDMD2fczhddvxHwrRT/1O95EOFCmOIXOyJxge5TK
 gf5zimSxMK/Nv8yoB4gIzc9SPMefC0RcSSuKpipgZFQb4P6s7G0lOFnmp
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ICE1xm1J
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 f0a24b2547cfdd5ec85a131e386a2ce4ff9179cb
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
branch HEAD: f0a24b2547cfdd5ec85a131e386a2ce4ff9179cb  Merge branch 'net-dsa-lantiq_gswip-use-regmap-for-register-access'

elapsed time: 1086m

configs tested: 223
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    clang-22
alpha                            allyesconfig    clang-19
alpha                               defconfig    clang-19
arc                              allmodconfig    clang-19
arc                               allnoconfig    clang-22
arc                              allyesconfig    clang-19
arc                                 defconfig    clang-19
arc                   randconfig-001-20251024    clang-22
arc                   randconfig-001-20251025    gcc-10.5.0
arc                   randconfig-002-20251024    clang-22
arc                   randconfig-002-20251025    gcc-8.5.0
arm                              allmodconfig    clang-19
arm                               allnoconfig    clang-22
arm                              allyesconfig    clang-19
arm                                 defconfig    clang-19
arm                   randconfig-001-20251024    clang-22
arm                   randconfig-001-20251025    clang-22
arm                   randconfig-002-20251024    clang-22
arm                   randconfig-002-20251025    gcc-10.5.0
arm                   randconfig-003-20251024    clang-22
arm                   randconfig-003-20251025    clang-22
arm                   randconfig-004-20251024    clang-22
arm                   randconfig-004-20251025    clang-22
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    clang-22
arm64                            allyesconfig    gcc-15.1.0
arm64                               defconfig    clang-19
arm64                 randconfig-001-20251024    clang-22
arm64                 randconfig-001-20251025    gcc-14.3.0
arm64                 randconfig-002-20251024    clang-22
arm64                 randconfig-002-20251025    gcc-11.5.0
arm64                 randconfig-003-20251024    clang-22
arm64                 randconfig-003-20251025    gcc-9.5.0
arm64                 randconfig-004-20251024    clang-22
arm64                 randconfig-004-20251025    clang-22
csky                             allmodconfig    gcc-15.1.0
csky                              allnoconfig    clang-22
csky                             allyesconfig    gcc-15.1.0
csky                                defconfig    clang-19
csky                  randconfig-001-20251024    gcc-8.5.0
csky                  randconfig-001-20251025    gcc-11.5.0
csky                  randconfig-002-20251024    gcc-8.5.0
csky                  randconfig-002-20251025    gcc-13.4.0
hexagon                          allmodconfig    clang-19
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-19
hexagon                             defconfig    clang-19
hexagon               randconfig-001-20251024    gcc-8.5.0
hexagon               randconfig-001-20251025    clang-18
hexagon               randconfig-002-20251024    gcc-8.5.0
hexagon               randconfig-002-20251025    clang-20
i386                             allmodconfig    clang-20
i386                              allnoconfig    clang-20
i386                             allyesconfig    clang-20
i386        buildonly-randconfig-001-20251024    gcc-14
i386        buildonly-randconfig-001-20251025    gcc-14
i386        buildonly-randconfig-002-20251024    gcc-14
i386        buildonly-randconfig-002-20251025    gcc-14
i386        buildonly-randconfig-003-20251024    gcc-14
i386        buildonly-randconfig-003-20251025    clang-20
i386        buildonly-randconfig-004-20251024    gcc-14
i386        buildonly-randconfig-004-20251025    clang-20
i386        buildonly-randconfig-005-20251024    gcc-14
i386        buildonly-randconfig-005-20251025    clang-20
i386        buildonly-randconfig-006-20251024    gcc-14
i386        buildonly-randconfig-006-20251025    clang-20
i386                                defconfig    clang-20
i386                  randconfig-001-20251024    clang-20
i386                  randconfig-002-20251024    clang-20
i386                  randconfig-003-20251024    clang-20
i386                  randconfig-004-20251024    clang-20
i386                  randconfig-005-20251024    clang-20
i386                  randconfig-006-20251024    clang-20
i386                  randconfig-007-20251024    clang-20
i386                  randconfig-011-20251024    clang-20
i386                  randconfig-012-20251024    clang-20
i386                  randconfig-013-20251024    clang-20
i386                  randconfig-014-20251024    clang-20
i386                  randconfig-015-20251024    clang-20
i386                  randconfig-016-20251024    clang-20
i386                  randconfig-017-20251024    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch                        allyesconfig    gcc-15.1.0
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20251024    gcc-8.5.0
loongarch             randconfig-001-20251025    clang-22
loongarch             randconfig-002-20251024    gcc-8.5.0
loongarch             randconfig-002-20251025    clang-18
m68k                             allmodconfig    clang-19
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    clang-19
m68k                                defconfig    clang-19
microblaze                       allmodconfig    clang-19
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    clang-19
microblaze                          defconfig    gcc-15.1.0
mips                             allmodconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                             allyesconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-15.1.0
nios2                               defconfig    gcc-15.1.0
nios2                 randconfig-001-20251024    gcc-8.5.0
nios2                 randconfig-001-20251025    gcc-11.5.0
nios2                 randconfig-002-20251024    gcc-8.5.0
nios2                 randconfig-002-20251025    gcc-11.5.0
openrisc                          allnoconfig    clang-22
openrisc                         allyesconfig    gcc-15.1.0
openrisc                            defconfig    gcc-14
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    clang-22
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20251024    gcc-8.5.0
parisc                randconfig-001-20251025    gcc-14.3.0
parisc                randconfig-002-20251024    gcc-8.5.0
parisc                randconfig-002-20251025    gcc-8.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    clang-22
powerpc                          allyesconfig    gcc-15.1.0
powerpc               randconfig-001-20251024    gcc-8.5.0
powerpc               randconfig-001-20251025    gcc-11.5.0
powerpc               randconfig-002-20251024    gcc-8.5.0
powerpc               randconfig-002-20251025    clang-16
powerpc               randconfig-003-20251024    gcc-8.5.0
powerpc               randconfig-003-20251025    clang-22
powerpc64             randconfig-001-20251024    gcc-8.5.0
powerpc64             randconfig-001-20251025    clang-17
powerpc64             randconfig-002-20251024    gcc-8.5.0
powerpc64             randconfig-002-20251025    clang-16
powerpc64             randconfig-003-20251024    gcc-8.5.0
powerpc64             randconfig-003-20251025    gcc-10.5.0
riscv                            allmodconfig    gcc-15.1.0
riscv                             allnoconfig    clang-22
riscv                            allyesconfig    gcc-15.1.0
riscv                               defconfig    gcc-14
riscv                 randconfig-001-20251024    clang-22
riscv                 randconfig-001-20251025    clang-22
riscv                 randconfig-002-20251024    clang-22
riscv                 randconfig-002-20251025    clang-22
s390                             allmodconfig    gcc-15.1.0
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    gcc-14
s390                  randconfig-001-20251024    clang-22
s390                  randconfig-001-20251025    gcc-11.5.0
s390                  randconfig-002-20251024    clang-22
s390                  randconfig-002-20251025    gcc-8.5.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-14
sh                    randconfig-001-20251024    clang-22
sh                    randconfig-001-20251025    gcc-11.5.0
sh                    randconfig-002-20251024    clang-22
sh                    randconfig-002-20251025    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20251024    clang-22
sparc                 randconfig-001-20251025    gcc-11.5.0
sparc                 randconfig-002-20251024    clang-22
sparc                 randconfig-002-20251025    gcc-15.1.0
sparc64                             defconfig    gcc-14
sparc64               randconfig-001-20251024    clang-22
sparc64               randconfig-001-20251025    clang-22
sparc64               randconfig-002-20251024    clang-22
sparc64               randconfig-002-20251025    gcc-15.1.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    clang-19
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                    randconfig-001-20251024    clang-22
um                    randconfig-001-20251025    clang-22
um                    randconfig-002-20251024    clang-22
um                    randconfig-002-20251025    gcc-14
um                           x86_64_defconfig    gcc-14
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20251024    gcc-14
x86_64      buildonly-randconfig-001-20251025    gcc-14
x86_64      buildonly-randconfig-002-20251024    gcc-14
x86_64      buildonly-randconfig-002-20251025    gcc-14
x86_64      buildonly-randconfig-003-20251024    gcc-14
x86_64      buildonly-randconfig-003-20251025    gcc-14
x86_64      buildonly-randconfig-004-20251024    gcc-14
x86_64      buildonly-randconfig-004-20251025    clang-20
x86_64      buildonly-randconfig-005-20251024    gcc-14
x86_64      buildonly-randconfig-005-20251025    clang-20
x86_64      buildonly-randconfig-006-20251024    gcc-14
x86_64      buildonly-randconfig-006-20251025    clang-20
x86_64                              defconfig    clang-20
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20251024    gcc-14
x86_64                randconfig-002-20251024    gcc-14
x86_64                randconfig-003-20251024    gcc-14
x86_64                randconfig-004-20251024    gcc-14
x86_64                randconfig-005-20251024    gcc-14
x86_64                randconfig-006-20251024    gcc-14
x86_64                randconfig-007-20251024    gcc-14
x86_64                randconfig-008-20251024    gcc-14
x86_64                randconfig-071-20251024    clang-20
x86_64                randconfig-072-20251024    clang-20
x86_64                randconfig-073-20251024    clang-20
x86_64                randconfig-074-20251024    clang-20
x86_64                randconfig-075-20251024    clang-20
x86_64                randconfig-076-20251024    clang-20
x86_64                randconfig-077-20251024    clang-20
x86_64                randconfig-078-20251024    clang-20
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-14
x86_64                          rhel-9.4-func    clang-20
x86_64                    rhel-9.4-kselftests    clang-20
x86_64                         rhel-9.4-kunit    gcc-14
x86_64                           rhel-9.4-ltp    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20251024    clang-22
xtensa                randconfig-001-20251025    gcc-15.1.0
xtensa                randconfig-002-20251024    clang-22
xtensa                randconfig-002-20251025    gcc-14.3.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
