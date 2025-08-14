Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A7109B25BF8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Aug 2025 08:40:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A5B1440F16;
	Thu, 14 Aug 2025 06:40:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AffOeYAEIVlj; Thu, 14 Aug 2025 06:40:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CCF6440F23
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755153632;
	bh=UfzpAbhEFE1J4XgDNMp6BJDtit2RfMTKnR6C3lqGtz8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ksGpW3qTE3s0QK/5Jdn9EJ+ixtg2cEy2UXcF948emrJuqlNhmkQyH+/cfXc2N9KRT
	 VBsTZtdHjPEKpxVBhjppZ2dFNZr+9cg5fNL3VVlpNDgEIpoesdMt8w0rkg5RIFvpy5
	 MKtbnELoUQKVWHPF6A+xmc7KNLePrLnqwp0lrZDRiLTtAYB00TE+XjuuNwBqpT5XOO
	 0tzGu+IJjZCskfrJiJCecEPP9AuiyfBtrzQmNDQ8M9zES6B6UDirfOqPnMW3cgnPsT
	 iV9Gy0qh7ntyKmvJoRs/EeZxRw/Spyc3sA4FMs+BVkVo1T03bvJvxRGDmDwmhxk/FF
	 AAMnOYGRqln3g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CCF6440F23;
	Thu, 14 Aug 2025 06:40:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id C882B1BA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Aug 2025 06:40:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AE5204005C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Aug 2025 06:40:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jiADNte0yrwO for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Aug 2025 06:40:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B3D2440217
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B3D2440217
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B3D2440217
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Aug 2025 06:40:29 +0000 (UTC)
X-CSE-ConnectionGUID: t7z01ACgSMKGd3ncRcZkig==
X-CSE-MsgGUID: pVc592QhQ82qtl+xzxtf2w==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="57178408"
X-IronPort-AV: E=Sophos;i="6.17,287,1747724400"; d="scan'208";a="57178408"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2025 23:40:29 -0700
X-CSE-ConnectionGUID: BwglxZDlReCJGiYXcfIcBw==
X-CSE-MsgGUID: TML5KoTmRXyTOQhv3kTAiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,287,1747724400"; d="scan'208";a="167049579"
Received: from lkp-server02.sh.intel.com (HELO 4ea60e6ab079) ([10.239.97.151])
 by fmviesa009.fm.intel.com with ESMTP; 13 Aug 2025 23:40:28 -0700
Received: from kbuild by 4ea60e6ab079 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1umRdR-000Af7-2V
 for intel-wired-lan@lists.osuosl.org; Thu, 14 Aug 2025 06:40:25 +0000
Date: Thu, 14 Aug 2025 14:39:55 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202508141442.AZjXFREt-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755153630; x=1786689630;
 h=date:from:to:subject:message-id;
 bh=n8x6m0i1GzZElMBte9TSyStX+eUXzXoufPdsQZZI89w=;
 b=DdYZhuTbck0t7E0YMk8NwHQ5rilWyfG3B+LNqwECpQNUViAC7FK9O0hE
 vh6oW2eQmptPThSIXvsbgMitoflPCnvneedbIIsfMmf/v9ZjD717vlxud
 OiIznmcErwsCB8ADYItlCNHW2veZGJHCN0hxCERNyBeq6Z9Ye8gYrlrVD
 0YKGnLc+g3ROSK8Fj8rU/qwG7AnX07Zs1IeQmrvoYEcSbAm8aLryOC2F+
 uP6hGlQbuoehfOEKwoC6F7QT8BMuDpDxbbLjunq/C77L1Kue/gBoFArtR
 kXk7kly/6lHKsCDh6ahz9/p953urDIVL1JH09Szfq5hv4oEnbrEsuwtcC
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DdYZhuTb
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 d7e82594a45c5cb270940ac469846e8026c7db0f
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
branch HEAD: d7e82594a45c5cb270940ac469846e8026c7db0f  selftests: tls: test TCP stealing data from under the TLS socket

elapsed time: 1677m

configs tested: 98
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                   randconfig-001-20250814    gcc-12.5.0
arc                   randconfig-002-20250814    gcc-13.4.0
arm                               allnoconfig    clang-22
arm                   randconfig-001-20250814    clang-22
arm                   randconfig-002-20250814    clang-22
arm                   randconfig-003-20250814    gcc-10.5.0
arm                   randconfig-004-20250814    gcc-8.5.0
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250814    clang-17
arm64                 randconfig-002-20250814    gcc-8.5.0
arm64                 randconfig-003-20250814    gcc-10.5.0
arm64                 randconfig-004-20250814    gcc-13.4.0
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250814    gcc-15.1.0
csky                  randconfig-002-20250814    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-22
hexagon               randconfig-001-20250814    clang-20
hexagon               randconfig-002-20250814    clang-22
i386        buildonly-randconfig-001-20250813    gcc-11
i386        buildonly-randconfig-001-20250814    clang-20
i386        buildonly-randconfig-002-20250813    clang-20
i386        buildonly-randconfig-002-20250814    gcc-12
i386        buildonly-randconfig-003-20250813    gcc-11
i386        buildonly-randconfig-003-20250814    gcc-12
i386        buildonly-randconfig-004-20250813    clang-20
i386        buildonly-randconfig-004-20250814    clang-20
i386        buildonly-randconfig-005-20250813    gcc-12
i386        buildonly-randconfig-005-20250814    gcc-12
i386        buildonly-randconfig-006-20250813    gcc-12
i386        buildonly-randconfig-006-20250814    gcc-12
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch             randconfig-001-20250814    clang-22
loongarch             randconfig-002-20250814    gcc-15.1.0
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20250814    gcc-10.5.0
nios2                 randconfig-002-20250814    gcc-9.5.0
openrisc                          allnoconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250814    gcc-10.5.0
parisc                randconfig-002-20250814    gcc-13.4.0
parisc64                            defconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc               randconfig-001-20250814    gcc-8.5.0
powerpc               randconfig-002-20250814    gcc-8.5.0
powerpc               randconfig-003-20250814    gcc-10.5.0
powerpc64             randconfig-001-20250814    clang-22
powerpc64             randconfig-002-20250814    clang-22
powerpc64             randconfig-003-20250814    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                 randconfig-001-20250814    clang-22
riscv                 randconfig-002-20250814    clang-22
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20250814    clang-22
s390                  randconfig-002-20250814    gcc-8.5.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                    randconfig-001-20250814    gcc-9.5.0
sh                    randconfig-002-20250814    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250814    gcc-14.3.0
sparc                 randconfig-002-20250814    gcc-12.5.0
sparc64               randconfig-001-20250814    clang-22
sparc64               randconfig-002-20250814    gcc-8.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-12
um                    randconfig-001-20250814    clang-22
um                    randconfig-002-20250814    clang-22
x86_64      buildonly-randconfig-001-20250814    clang-20
x86_64      buildonly-randconfig-002-20250814    clang-20
x86_64      buildonly-randconfig-003-20250814    gcc-12
x86_64      buildonly-randconfig-004-20250814    clang-20
x86_64      buildonly-randconfig-005-20250814    gcc-12
x86_64      buildonly-randconfig-006-20250814    gcc-12
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250814    gcc-8.5.0
xtensa                randconfig-002-20250814    gcc-10.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
