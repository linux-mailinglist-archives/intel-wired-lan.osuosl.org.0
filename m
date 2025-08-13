Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 67A28B25332
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Aug 2025 20:45:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E4A2261B51;
	Wed, 13 Aug 2025 18:45:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id p7knl5aWyqVY; Wed, 13 Aug 2025 18:45:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F19AD61B4F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755110711;
	bh=Siu2GFR+XgcrX+0sFoN5HV+A80qDHfDSvIDLYevO9Tk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=0+wNO17HOsdCKAYFzlZWbundDpuJxppj4LAcjl1kXbG1tkSK0sphtSseaK/pglPI3
	 a/BTihmd5hEg/qS/bzdMXjo5qdclUbtAUTS84Ux1HzJ1If0na44e6hf/AlczqZ9TmO
	 WKd+HuyAG9Rep/IuDwEehvM7g7xFyeoUrNBfyFZt2SCqiEFiXC6XQ7PTgd8V401nur
	 gPpBalygtHgiCAYqZjPmfwlCxuuj2V3fsk3jtP8nf9ZE1tA2x0HUAj7JGAMz74sVDZ
	 0Xvz5OHAKtKa2GjcRSF2RjGxXFnPBi7qH6ygPOnO2cnLJyHFWfSBzAc4NIN4UpdXs5
	 L++iR8pt/IVpg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id F19AD61B4F;
	Wed, 13 Aug 2025 18:45:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id B73F91C9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 18:45:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9D888811C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 18:45:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zCwup-ddMIeD for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Aug 2025 18:45:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 954E1811B5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 954E1811B5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 954E1811B5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 18:45:07 +0000 (UTC)
X-CSE-ConnectionGUID: NfwXKCJBSv+dD97NGSdmRg==
X-CSE-MsgGUID: yUN/Fq4kTDCS6zPjI0D0Rg==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="56442098"
X-IronPort-AV: E=Sophos;i="6.17,287,1747724400"; d="scan'208";a="56442098"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2025 11:45:07 -0700
X-CSE-ConnectionGUID: jPlQxl99Th2SiA2tA5r07A==
X-CSE-MsgGUID: aM8/YrCFT0q0syQNB7L/GA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,287,1747724400"; d="scan'208";a="166919897"
Received: from lkp-server02.sh.intel.com (HELO 4ea60e6ab079) ([10.239.97.151])
 by fmviesa008.fm.intel.com with ESMTP; 13 Aug 2025 11:45:05 -0700
Received: from kbuild by 4ea60e6ab079 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1umGT9-000AEK-2r
 for intel-wired-lan@lists.osuosl.org; Wed, 13 Aug 2025 18:45:03 +0000
Date: Thu, 14 Aug 2025 02:44:09 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202508140256.oBi9Q7Wg-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755110708; x=1786646708;
 h=date:from:to:subject:message-id;
 bh=WmbCIZ9Jnnazc08/uia1Cd5858qjG0o6yhRzYjogHwU=;
 b=nwgpildeJTUCcHljYM4u9SxohAJ6/2AJ/UO9KdFEiT9lNZBotoHA8U1U
 G3yfKC2MztocJdYQT3+2/E964wHEKkeFZHJIvQEmEdT3higX0xtGiX/4s
 Tepw8gFVCiTNaI+vLqF5F65qDzclAvQImYBV/M/8JPBQPFisKUp8dq41/
 KtlVuwsXYk4PbqhtCij/9Gjg/IWqRXFGtfjyTXhBoHeTNqeBZ2GeatdDT
 FLWMMnBFaUCEC3NDwWiADIX+bcTlwS3Xs30mgOszjRDxWL55JioUxbJyp
 LYSwqH2LAzVyzX4+BSYZVVcJ3m3oqAbm0DwniCGpxry33GeLtolXJrhYB
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nwgpilde
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 fdbe93b7f0f86c943351ceab26c8fad548869f91
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
branch HEAD: fdbe93b7f0f86c943351ceab26c8fad548869f91  Merge branch 'net-airoha-introduce-npu-callbacks-for-wlan-offloading'

elapsed time: 960m

configs tested: 230
configs skipped: 4

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
arc                   randconfig-001-20250813    clang-22
arc                   randconfig-001-20250814    gcc-12.5.0
arc                   randconfig-002-20250813    clang-22
arc                   randconfig-002-20250814    gcc-13.4.0
arm                              allmodconfig    clang-19
arm                               allnoconfig    clang-22
arm                              allyesconfig    clang-19
arm                         assabet_defconfig    clang-22
arm                                 defconfig    clang-19
arm                            mps2_defconfig    clang-22
arm                       multi_v4t_defconfig    clang-22
arm                   randconfig-001-20250813    clang-22
arm                   randconfig-001-20250814    clang-22
arm                   randconfig-002-20250813    clang-22
arm                   randconfig-002-20250814    clang-22
arm                   randconfig-003-20250813    clang-22
arm                   randconfig-003-20250814    gcc-10.5.0
arm                   randconfig-004-20250813    clang-22
arm                   randconfig-004-20250814    gcc-8.5.0
arm                    vt8500_v6_v7_defconfig    clang-22
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    clang-22
arm64                               defconfig    clang-19
arm64                 randconfig-001-20250813    clang-22
arm64                 randconfig-001-20250814    clang-17
arm64                 randconfig-002-20250813    clang-22
arm64                 randconfig-002-20250814    gcc-8.5.0
arm64                 randconfig-003-20250813    clang-22
arm64                 randconfig-003-20250814    gcc-10.5.0
arm64                 randconfig-004-20250813    clang-22
arm64                 randconfig-004-20250814    gcc-13.4.0
csky                              allnoconfig    clang-22
csky                                defconfig    clang-19
csky                  randconfig-001-20250813    clang-20
csky                  randconfig-001-20250814    gcc-15.1.0
csky                  randconfig-002-20250813    clang-20
csky                  randconfig-002-20250814    gcc-15.1.0
hexagon                          allmodconfig    clang-19
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-19
hexagon                             defconfig    clang-19
hexagon               randconfig-001-20250813    clang-20
hexagon               randconfig-001-20250814    clang-20
hexagon               randconfig-002-20250813    clang-20
hexagon               randconfig-002-20250814    clang-22
i386                             allmodconfig    clang-20
i386                              allnoconfig    clang-20
i386                             allyesconfig    clang-20
i386        buildonly-randconfig-001-20250813    gcc-11
i386        buildonly-randconfig-001-20250814    clang-20
i386        buildonly-randconfig-002-20250813    gcc-11
i386        buildonly-randconfig-002-20250814    gcc-12
i386        buildonly-randconfig-003-20250813    gcc-11
i386        buildonly-randconfig-003-20250814    gcc-12
i386        buildonly-randconfig-004-20250813    gcc-11
i386        buildonly-randconfig-004-20250814    clang-20
i386        buildonly-randconfig-005-20250813    gcc-11
i386        buildonly-randconfig-005-20250814    gcc-12
i386        buildonly-randconfig-006-20250813    gcc-11
i386        buildonly-randconfig-006-20250814    gcc-12
i386                                defconfig    clang-20
i386                  randconfig-001-20250813    clang-20
i386                  randconfig-002-20250813    clang-20
i386                  randconfig-003-20250813    clang-20
i386                  randconfig-004-20250813    clang-20
i386                  randconfig-005-20250813    clang-20
i386                  randconfig-006-20250813    clang-20
i386                  randconfig-007-20250813    clang-20
i386                  randconfig-011-20250813    gcc-11
i386                  randconfig-012-20250813    gcc-11
i386                  randconfig-013-20250813    gcc-11
i386                  randconfig-014-20250813    gcc-11
i386                  randconfig-015-20250813    gcc-11
i386                  randconfig-016-20250813    gcc-11
i386                  randconfig-017-20250813    gcc-11
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20250813    clang-20
loongarch             randconfig-001-20250814    clang-22
loongarch             randconfig-002-20250813    clang-20
loongarch             randconfig-002-20250814    gcc-15.1.0
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
nios2                             allnoconfig    gcc-11.5.0
nios2                             allnoconfig    gcc-15.1.0
nios2                               defconfig    gcc-15.1.0
nios2                 randconfig-001-20250813    clang-20
nios2                 randconfig-001-20250814    gcc-10.5.0
nios2                 randconfig-002-20250813    clang-20
nios2                 randconfig-002-20250814    gcc-9.5.0
openrisc                          allnoconfig    clang-22
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
openrisc                            defconfig    gcc-12
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    clang-22
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250813    clang-20
parisc                randconfig-001-20250814    gcc-10.5.0
parisc                randconfig-002-20250813    clang-20
parisc                randconfig-002-20250814    gcc-13.4.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    clang-22
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    gcc-15.1.0
powerpc               randconfig-001-20250813    clang-20
powerpc               randconfig-001-20250814    gcc-8.5.0
powerpc               randconfig-002-20250813    clang-20
powerpc               randconfig-002-20250814    gcc-8.5.0
powerpc               randconfig-003-20250813    clang-20
powerpc               randconfig-003-20250814    gcc-10.5.0
powerpc                     tqm8540_defconfig    clang-22
powerpc                     tqm8555_defconfig    clang-22
powerpc64             randconfig-001-20250813    clang-20
powerpc64             randconfig-001-20250814    clang-22
powerpc64             randconfig-002-20250813    clang-20
powerpc64             randconfig-002-20250814    clang-22
powerpc64             randconfig-003-20250813    clang-20
powerpc64             randconfig-003-20250814    clang-22
riscv                            allmodconfig    gcc-15.1.0
riscv                             allnoconfig    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    gcc-15.1.0
riscv                               defconfig    clang-22
riscv                               defconfig    gcc-12
riscv                 randconfig-001-20250813    clang-22
riscv                 randconfig-001-20250814    clang-22
riscv                 randconfig-002-20250813    clang-22
riscv                 randconfig-002-20250814    clang-22
s390                             allmodconfig    gcc-15.1.0
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    gcc-12
s390                  randconfig-001-20250813    clang-22
s390                  randconfig-001-20250814    clang-22
s390                  randconfig-002-20250813    clang-22
s390                  randconfig-002-20250814    gcc-8.5.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-12
sh                    randconfig-001-20250813    clang-22
sh                    randconfig-001-20250814    gcc-9.5.0
sh                    randconfig-002-20250813    clang-22
sh                    randconfig-002-20250814    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250813    clang-22
sparc                 randconfig-001-20250814    gcc-14.3.0
sparc                 randconfig-002-20250813    clang-22
sparc                 randconfig-002-20250814    gcc-12.5.0
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20250813    clang-22
sparc64               randconfig-001-20250814    clang-22
sparc64               randconfig-002-20250813    clang-22
sparc64               randconfig-002-20250814    gcc-8.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    clang-19
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250813    clang-22
um                    randconfig-001-20250814    clang-22
um                    randconfig-002-20250813    clang-22
um                    randconfig-002-20250814    clang-22
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250813    clang-20
x86_64      buildonly-randconfig-001-20250814    clang-20
x86_64      buildonly-randconfig-002-20250813    clang-20
x86_64      buildonly-randconfig-002-20250814    clang-20
x86_64      buildonly-randconfig-003-20250813    clang-20
x86_64      buildonly-randconfig-003-20250814    gcc-12
x86_64      buildonly-randconfig-004-20250813    clang-20
x86_64      buildonly-randconfig-004-20250814    clang-20
x86_64      buildonly-randconfig-005-20250813    clang-20
x86_64      buildonly-randconfig-005-20250814    gcc-12
x86_64      buildonly-randconfig-006-20250813    clang-20
x86_64      buildonly-randconfig-006-20250814    gcc-12
x86_64                              defconfig    clang-20
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20250813    gcc-12
x86_64                randconfig-002-20250813    gcc-12
x86_64                randconfig-003-20250813    gcc-12
x86_64                randconfig-004-20250813    gcc-12
x86_64                randconfig-005-20250813    gcc-12
x86_64                randconfig-006-20250813    gcc-12
x86_64                randconfig-007-20250813    gcc-12
x86_64                randconfig-008-20250813    gcc-12
x86_64                randconfig-071-20250813    clang-20
x86_64                randconfig-072-20250813    clang-20
x86_64                randconfig-073-20250813    clang-20
x86_64                randconfig-074-20250813    clang-20
x86_64                randconfig-075-20250813    clang-20
x86_64                randconfig-076-20250813    clang-20
x86_64                randconfig-077-20250813    clang-20
x86_64                randconfig-078-20250813    clang-20
x86_64                               rhel-9.4    clang-20
x86_64                          rhel-9.4-func    clang-20
x86_64                    rhel-9.4-kselftests    clang-20
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250813    clang-22
xtensa                randconfig-001-20250814    gcc-8.5.0
xtensa                randconfig-002-20250813    clang-22
xtensa                randconfig-002-20250814    gcc-10.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
