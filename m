Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 456D9C7DA7D
	for <lists+intel-wired-lan@lfdr.de>; Sun, 23 Nov 2025 02:39:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E461D40851;
	Sun, 23 Nov 2025 01:39:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1gLVBYih0tWX; Sun, 23 Nov 2025 01:39:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 20B744083E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763861968;
	bh=ukeSw92b4as/7toVWgyisAMcWQrr0anxO2jkUcItxXA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=cf1gOtqs1iaKdsY9JODxNXfsovUTLAq1P1xVSxDM9w5o3wHMW69CO5ah/zBFAkMP+
	 T1aZ/QZuYCnvF4GyuyRX5ixZlpgShvwD0rB79l2QEVAGwhrlNJTuOVajbc/9LvXBIw
	 Cvx+3bHtHf84VNjxpUYGyb1N9y2aKQLayeGu+dmzrnM30iXz7SYoI5lVeRj9CfaJwS
	 ZqkxsjsfPZ4AwST9Idyg3coOX+I4zXLNYf7AUh6yIt8XG0+A2jXuilOjgvsOhZkQYu
	 nLW8wZfI4zJQLB9JWknZOS3gK/QfFzvZ4n571C/Wa7FeaAGRQji4euMbAPFtvnWcym
	 V0dVyByA8Df4w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 20B744083E;
	Sun, 23 Nov 2025 01:39:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id B5C9B158
 for <intel-wired-lan@lists.osuosl.org>; Sun, 23 Nov 2025 01:39:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9CCC440833
 for <intel-wired-lan@lists.osuosl.org>; Sun, 23 Nov 2025 01:39:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2IQ5U8TuX6Ab for <intel-wired-lan@lists.osuosl.org>;
 Sun, 23 Nov 2025 01:39:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5143040814
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5143040814
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5143040814
 for <intel-wired-lan@lists.osuosl.org>; Sun, 23 Nov 2025 01:39:23 +0000 (UTC)
X-CSE-ConnectionGUID: QE1U5YQ+S8+1WfzEjAS8bQ==
X-CSE-MsgGUID: i5N8YKG9SUGM3GNQj4oAJQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11621"; a="65848462"
X-IronPort-AV: E=Sophos;i="6.20,219,1758610800"; d="scan'208";a="65848462"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2025 17:39:24 -0800
X-CSE-ConnectionGUID: znO8o9xiR3OhG4A/KGRVxg==
X-CSE-MsgGUID: DJX05GIKQXqHBgZVy3UBUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,219,1758610800"; d="scan'208";a="196299626"
Received: from lkp-server01.sh.intel.com (HELO adf6d29aa8d9) ([10.239.97.150])
 by fmviesa005.fm.intel.com with ESMTP; 22 Nov 2025 17:39:22 -0800
Received: from kbuild by adf6d29aa8d9 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1vMz4S-0007y7-0J
 for intel-wired-lan@lists.osuosl.org; Sun, 23 Nov 2025 01:39:20 +0000
Date: Sun, 23 Nov 2025 09:38:44 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202511230939.Fq2uHAJ4-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763861965; x=1795397965;
 h=date:from:to:subject:message-id;
 bh=8Me1757XOq6bx0MW2j1G3gdUn0TxMWEbZXnkusbwSJM=;
 b=hncuo/q/5+i9HMqg6ReGo85ITCefHkpECSf6CXcKsKbX+gQRdpQ+CdEV
 J0CLTkbPuubRokRuwnWKO674JdsO8zlMpR9xXwlli49ob7xW7euKD+u4X
 LRJSRjOSWPU07fWupb7XpHrt9ntPGWmAoiir8I/dAIo2fEjojHmj4nK8o
 OOh0Ckj2JOHerJ0sEVrFKfDCG0mR9sFdI8kBTC8UncElYVtrfs6ENz3Kt
 z04TlZ/oeC9xHX8roPHLMoK+fLdmkVUzxe4G9pUqn1u9As2adgg4lHlhN
 d6AVEV99r8gOKQ/8WQpVyNhyjzM61P3/v0I8yHeKvY4K4W4LJTxGfTFYz
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hncuo/q/
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 a14602fcae17a3f1cb8a8521bedf31728f9e7e39
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
branch HEAD: a14602fcae17a3f1cb8a8521bedf31728f9e7e39  veth: reduce XDP no_direct return section to fix race

elapsed time: 2755m

configs tested: 113
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                          axs103_defconfig    gcc-15.1.0
arc                   randconfig-001-20251122    gcc-14.3.0
arc                   randconfig-002-20251122    gcc-9.5.0
arm                               allnoconfig    clang-22
arm                         assabet_defconfig    clang-18
arm                         mv78xx0_defconfig    clang-19
arm                   randconfig-001-20251122    clang-22
arm                   randconfig-002-20251122    clang-22
arm                   randconfig-003-20251122    clang-22
arm                   randconfig-004-20251122    gcc-12.5.0
arm                           spitz_defconfig    gcc-15.1.0
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20251122    gcc-8.5.0
arm64                 randconfig-002-20251122    gcc-9.5.0
arm64                 randconfig-003-20251122    gcc-10.5.0
arm64                 randconfig-004-20251122    clang-22
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20251122    gcc-15.1.0
csky                  randconfig-002-20251122    gcc-14.3.0
hexagon                           allnoconfig    clang-22
hexagon               randconfig-001-20251122    clang-22
hexagon               randconfig-002-20251122    clang-17
i386                             alldefconfig    gcc-14
i386                              allnoconfig    gcc-14
i386        buildonly-randconfig-001-20251123    clang-20
i386        buildonly-randconfig-002-20251123    clang-20
i386        buildonly-randconfig-003-20251123    gcc-14
i386        buildonly-randconfig-004-20251123    gcc-14
i386        buildonly-randconfig-005-20251123    clang-20
i386        buildonly-randconfig-006-20251123    gcc-14
i386                  randconfig-001-20251123    gcc-14
i386                  randconfig-002-20251123    gcc-14
i386                  randconfig-003-20251123    gcc-14
i386                  randconfig-004-20251123    gcc-14
i386                  randconfig-005-20251123    gcc-14
i386                  randconfig-006-20251123    clang-20
i386                  randconfig-007-20251123    gcc-14
loongarch                         allnoconfig    clang-22
loongarch             randconfig-001-20251122    gcc-12.5.0
loongarch             randconfig-002-20251122    gcc-14.3.0
m68k                              allnoconfig    gcc-15.1.0
m68k                          hp300_defconfig    gcc-15.1.0
m68k                        m5307c3_defconfig    gcc-15.1.0
m68k                            q40_defconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                       bmips_be_defconfig    gcc-15.1.0
mips                          eyeq6_defconfig    clang-22
nios2                         10m50_defconfig    gcc-11.5.0
nios2                            alldefconfig    gcc-11.5.0
nios2                             allnoconfig    gcc-11.5.0
nios2                 randconfig-001-20251122    gcc-11.5.0
nios2                 randconfig-002-20251122    gcc-8.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                            defconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20251123    gcc-14.3.0
parisc                randconfig-002-20251123    gcc-14.3.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                      chrp32_defconfig    clang-19
powerpc                          g5_defconfig    gcc-15.1.0
powerpc                 mpc8313_rdb_defconfig    gcc-15.1.0
powerpc               randconfig-001-20251123    clang-22
powerpc               randconfig-002-20251123    gcc-8.5.0
powerpc                     tqm8540_defconfig    gcc-15.1.0
powerpc                     tqm8555_defconfig    gcc-15.1.0
powerpc64             randconfig-001-20251123    clang-22
powerpc64             randconfig-002-20251123    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                               defconfig    clang-22
riscv                 randconfig-001-20251122    clang-22
riscv                 randconfig-002-20251122    clang-22
s390                              allnoconfig    clang-22
s390                                defconfig    clang-22
s390                  randconfig-001-20251122    clang-16
s390                  randconfig-002-20251122    gcc-13.4.0
sh                                allnoconfig    gcc-15.1.0
sh                                  defconfig    gcc-15.1.0
sh                        edosk7705_defconfig    gcc-15.1.0
sh                               j2_defconfig    gcc-15.1.0
sh                    randconfig-001-20251122    gcc-15.1.0
sh                    randconfig-002-20251122    gcc-10.5.0
sh                          rsk7203_defconfig    gcc-15.1.0
sh                      rts7751r2d1_defconfig    gcc-15.1.0
sh                             shx3_defconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20251123    gcc-8.5.0
sparc                 randconfig-002-20251123    gcc-15.1.0
sparc64                             defconfig    clang-20
sparc64               randconfig-001-20251123    clang-22
sparc64               randconfig-002-20251123    clang-22
um                                allnoconfig    clang-22
um                                  defconfig    clang-22
um                             i386_defconfig    gcc-14
um                    randconfig-001-20251123    gcc-14
um                    randconfig-002-20251123    gcc-14
um                           x86_64_defconfig    clang-22
x86_64                            allnoconfig    clang-20
x86_64      buildonly-randconfig-001-20251123    gcc-14
x86_64      buildonly-randconfig-002-20251123    gcc-12
x86_64      buildonly-randconfig-003-20251123    gcc-14
x86_64      buildonly-randconfig-004-20251123    clang-20
x86_64      buildonly-randconfig-005-20251123    gcc-14
x86_64      buildonly-randconfig-006-20251123    clang-20
x86_64                              defconfig    gcc-14
xtensa                            allnoconfig    gcc-15.1.0
xtensa                  audio_kc705_defconfig    gcc-15.1.0
xtensa                randconfig-001-20251123    gcc-14.3.0
xtensa                randconfig-002-20251123    gcc-10.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
