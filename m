Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E36D289DA37
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Apr 2024 15:29:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E35064152C;
	Tue,  9 Apr 2024 13:29:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RzNPvTlM086f; Tue,  9 Apr 2024 13:29:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B98414154A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712669357;
	bh=NXMza03iIvEMC/3EbWLlPx2do3/jcpAPAqnM6n/Kj2I=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=LDNlYOOvZi7eRJ9hk/V063OjM1gcElIn5PlSQC50j4TFolGA0YFTrlNLjcRjevvOD
	 jtBn6WQVYrQfDmEskzZdQo/sWRMd201milNpzkQW42XeiI1noyr8ov1U776/zXF+6n
	 x7NlmJbegZpfZGD2XubZ7GIxpePHIc/+nWv7ykQRdT/PbErP5rQgLebhCvVgN6dKNS
	 i119fzIVDqfHEpJLUGd/vVxxKFQbUXHfLUfvIZN4/S7k7nmJyDtBPoHvaf30awjrZD
	 GRlMMi+q8rCvcXopPPZ6wxt3kZbz7aTvzdQF6ANXPztf1k7ZiLx9fqHeuIs7u3lz6F
	 CAt5yLzawXDWg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B98414154A;
	Tue,  9 Apr 2024 13:29:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CFA3E1BF2A3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Apr 2024 13:29:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BB52F81769
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Apr 2024 13:29:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WTM9MAtMWgyA for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Apr 2024 13:29:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7EC3981586
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7EC3981586
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7EC3981586
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Apr 2024 13:29:14 +0000 (UTC)
X-CSE-ConnectionGUID: nQ55BugFTsCl7OdWGVBakw==
X-CSE-MsgGUID: DnF21FWBTyGNaUtroz08wg==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="11776425"
X-IronPort-AV: E=Sophos;i="6.07,189,1708416000"; d="scan'208";a="11776425"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2024 06:29:13 -0700
X-CSE-ConnectionGUID: wk9gji/tTJOpnPSPHDfB0Q==
X-CSE-MsgGUID: Q8HTnpg7TZCQmNw1td2UAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,189,1708416000"; d="scan'208";a="20250355"
Received: from lkp-server01.sh.intel.com (HELO e61807b1d151) ([10.239.97.150])
 by fmviesa006.fm.intel.com with ESMTP; 09 Apr 2024 06:29:11 -0700
Received: from kbuild by e61807b1d151 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ruBXB-00067b-1b
 for intel-wired-lan@lists.osuosl.org; Tue, 09 Apr 2024 13:29:09 +0000
Date: Tue, 09 Apr 2024 21:28:26 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202404092124.g1OqITPh-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712669355; x=1744205355;
 h=date:from:to:subject:message-id;
 bh=Ye3y+fOCr8F6dphB2BiFiK86jL0w9Awz316e00NpWz4=;
 b=dpg4772R5Hgl645mBESGba/3OKdwKWGDza5F105YW0qPus1iae8+zPiP
 gjx2fSjtGDOihyL5FJG/UY7AOyfzX/nBWbQBt2N3Qyzjrh1tRtdlVqTHN
 IXASvbUevIpoK1c6KIPRkhP+k2J9apEdBIkCPmKZrpSY25wreVHI5Gecv
 5f7cIOw/WLKaCEcbsXYwxZB8gsx348Dohq09fdQTBrDHOdXfPuDC2Afhn
 a/oZoA2ecokNm2PCRSc4QRHnYiQcC20DeDGdyvKpaFROFfrsDUvhfJtl/
 +1WrVfQgVb2XGAqNfwewQRlPY4c+7BWYqlC+lqmPdd/+H08EfAvebXNrE
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dpg4772R
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 3ca3256cde596573d060eda8c477996435c6d63f
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 3ca3256cde596573d060eda8c477996435c6d63f  iavf: Fix TC config comparison with existing adapter TC config

elapsed time: 1011m

configs tested: 156
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20240409   gcc  
arc                   randconfig-002-20240409   gcc  
arc                        vdk_hs38_defconfig   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                   randconfig-001-20240409   gcc  
arm                   randconfig-002-20240409   clang
arm                   randconfig-003-20240409   clang
arm                   randconfig-004-20240409   gcc  
arm                           sunxi_defconfig   gcc  
arm                    vt8500_v6_v7_defconfig   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   clang
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240409   gcc  
arm64                 randconfig-002-20240409   gcc  
arm64                 randconfig-003-20240409   clang
arm64                 randconfig-004-20240409   clang
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240409   gcc  
csky                  randconfig-002-20240409   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240409   clang
hexagon               randconfig-002-20240409   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240409   clang
i386         buildonly-randconfig-002-20240409   clang
i386         buildonly-randconfig-003-20240409   gcc  
i386         buildonly-randconfig-004-20240409   clang
i386         buildonly-randconfig-005-20240409   gcc  
i386         buildonly-randconfig-006-20240409   gcc  
i386                                defconfig   clang
i386                  randconfig-001-20240409   clang
i386                  randconfig-002-20240409   gcc  
i386                  randconfig-003-20240409   clang
i386                  randconfig-004-20240409   gcc  
i386                  randconfig-005-20240409   gcc  
i386                  randconfig-006-20240409   clang
i386                  randconfig-011-20240409   gcc  
i386                  randconfig-012-20240409   clang
i386                  randconfig-013-20240409   clang
i386                  randconfig-014-20240409   clang
i386                  randconfig-015-20240409   gcc  
i386                  randconfig-016-20240409   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240409   gcc  
loongarch             randconfig-002-20240409   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
microblaze                      mmu_defconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                       bmips_be_defconfig   gcc  
mips                     cu1830-neo_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240409   gcc  
nios2                 randconfig-002-20240409   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
openrisc                       virt_defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240409   gcc  
parisc                randconfig-002-20240409   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                  iss476-smp_defconfig   gcc  
powerpc                         ps3_defconfig   gcc  
powerpc               randconfig-001-20240409   clang
powerpc               randconfig-002-20240409   gcc  
powerpc               randconfig-003-20240409   clang
powerpc                  storcenter_defconfig   gcc  
powerpc64             randconfig-001-20240409   gcc  
powerpc64             randconfig-002-20240409   clang
powerpc64             randconfig-003-20240409   gcc  
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
riscv                 randconfig-001-20240409   clang
riscv                 randconfig-002-20240409   gcc  
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240409   gcc  
s390                  randconfig-002-20240409   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                            hp6xx_defconfig   gcc  
sh                    randconfig-001-20240409   gcc  
sh                    randconfig-002-20240409   gcc  
sh                           se7705_defconfig   gcc  
sh                           sh2007_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                               defconfig   gcc  
sparc                       sparc32_defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240409   gcc  
sparc64               randconfig-002-20240409   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                    randconfig-001-20240409   clang
um                    randconfig-002-20240409   gcc  
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64                              defconfig   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                generic_kc705_defconfig   gcc  
xtensa                randconfig-001-20240409   gcc  
xtensa                randconfig-002-20240409   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
