Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 448558C1326
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 May 2024 18:40:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EB289404E8;
	Thu,  9 May 2024 16:40:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xvbqk4mwNR11; Thu,  9 May 2024 16:40:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C243D4057E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715272818;
	bh=5AKGKXx32znbA2iL9xMjv9lffhGmWUSgBSXFPcsM2zA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Dq8mNz0nZUviqB32thhLVOTQ5EXlnTzs70WFfVypKbQIKM3Xi/s7YWJV7AAr60Kp9
	 rOIYKY1uOqhgd0dqUiwh7PMZo9BVYFu8K9cO7hicAtPEwMr4fFEJw7KNj2yiygBeBv
	 ITg6rc2Wx6fsqv+tdsnKXvjm1pd3eIgT4twM2Y5C+UqMRXKgdKrtVVPvgp62IaLUo7
	 84kI1K2EuOc1faljfcNriyPyxHQecqQuXUhyGJ1NRlpFZ6aUjiaxg7o/fw7N0e2HjW
	 N1+T/fxfq2XLI3szKdGnxUgNorApo+QpsUdqcWtZxUdHiqJw8jYmwW9khaqAMHfo7b
	 pI74M3PDEZFqw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C243D4057E;
	Thu,  9 May 2024 16:40:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 761471BF337
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 May 2024 16:40:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5DBBB83D00
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 May 2024 16:40:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5KFgJsxF3TTv for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 May 2024 16:40:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 03A9783E4B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 03A9783E4B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 03A9783E4B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 May 2024 16:40:14 +0000 (UTC)
X-CSE-ConnectionGUID: dlIAtCtYSEW6MlP5AzJLhQ==
X-CSE-MsgGUID: JXMFc07pRF6oPIblcTZ76g==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="21776518"
X-IronPort-AV: E=Sophos;i="6.08,148,1712646000"; d="scan'208";a="21776518"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2024 09:40:14 -0700
X-CSE-ConnectionGUID: BhKnrAqYRYqcNequl23yvQ==
X-CSE-MsgGUID: 5XFQy73mStOh0ZP1p/AqUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,148,1712646000"; d="scan'208";a="33836210"
Received: from lkp-server01.sh.intel.com (HELO f8b243fe6e68) ([10.239.97.150])
 by fmviesa003.fm.intel.com with ESMTP; 09 May 2024 09:40:13 -0700
Received: from kbuild by f8b243fe6e68 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1s56oU-00058T-2p
 for intel-wired-lan@lists.osuosl.org; Thu, 09 May 2024 16:40:10 +0000
Date: Fri, 10 May 2024 00:39:11 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202405100010.XI9WZNvf-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715272815; x=1746808815;
 h=date:from:to:subject:message-id;
 bh=pQU10xwQAZgCxaPf8kBEn7R+3oVHWxNT4GvDbET4vdw=;
 b=RYvzEG+unNZw46wNl3bf++3aaxiv4FTZREtHy38w0D+0bwCs5rPH3jU1
 wkeiKTecHjiZXYhsY9i9f9K/rgZn7hIM89Vi5TzoHvzN2k2sw1Jfiii5b
 qPfpiExlYCZ4Fqrb+8JZI/dvgJW1uxxsd3hU57BtEoZnT+W+RfpDuSwwa
 ZxFa1y5X5U//gn8z2Zg4h17UiDSK4hUVEiBr3YrKuv3GAIfVKsdxCGe3j
 BJafH/3q7Eb/p5dpICA7xwOmNCXnpyNcARiN9LsAnAp2VyPNB/DpDiINZ
 V9WVn4J82wjCv69g3crq8zhBCdAi7wxIfBPn9HVeGh9CJCR2kl0pJlGkm
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RYvzEG+u
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 b902ace0425f5c91dc7517621699bf2635fc4176
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: b902ace0425f5c91dc7517621699bf2635fc4176  ice: update representor when VSI is ready

elapsed time: 1461m

configs tested: 123
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
arc                   randconfig-001-20240509   gcc  
arc                   randconfig-002-20240509   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                   randconfig-001-20240509   gcc  
arm                   randconfig-002-20240509   clang
arm                   randconfig-003-20240509   clang
arm                   randconfig-004-20240509   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240509   clang
arm64                 randconfig-002-20240509   clang
arm64                 randconfig-003-20240509   gcc  
arm64                 randconfig-004-20240509   clang
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240509   gcc  
csky                  randconfig-002-20240509   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240509   clang
hexagon               randconfig-002-20240509   clang
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240509   gcc  
i386         buildonly-randconfig-002-20240509   gcc  
i386         buildonly-randconfig-003-20240509   clang
i386         buildonly-randconfig-004-20240509   clang
i386         buildonly-randconfig-005-20240509   gcc  
i386         buildonly-randconfig-006-20240509   gcc  
i386                                defconfig   clang
i386                  randconfig-001-20240509   clang
i386                  randconfig-002-20240509   clang
i386                  randconfig-003-20240509   clang
i386                  randconfig-004-20240509   gcc  
i386                  randconfig-005-20240509   clang
i386                  randconfig-006-20240509   gcc  
i386                  randconfig-011-20240509   clang
i386                  randconfig-012-20240509   gcc  
i386                  randconfig-013-20240509   clang
i386                  randconfig-014-20240509   gcc  
i386                  randconfig-015-20240509   gcc  
i386                  randconfig-016-20240509   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240509   gcc  
loongarch             randconfig-002-20240509   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240509   gcc  
nios2                 randconfig-002-20240509   gcc  
openrisc                          allnoconfig   gcc  
openrisc                            defconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240509   gcc  
parisc                randconfig-002-20240509   gcc  
parisc64                            defconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc               randconfig-001-20240509   clang
powerpc               randconfig-002-20240509   clang
powerpc               randconfig-003-20240509   clang
powerpc64             randconfig-001-20240509   clang
powerpc64             randconfig-002-20240509   gcc  
powerpc64             randconfig-003-20240509   clang
riscv                             allnoconfig   gcc  
riscv                               defconfig   clang
riscv                 randconfig-001-20240509   gcc  
riscv                 randconfig-002-20240509   gcc  
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240509   gcc  
s390                  randconfig-002-20240509   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                    randconfig-001-20240509   gcc  
sh                    randconfig-002-20240509   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64                              defconfig   gcc  
x86_64                          rhel-8.3-rust   clang
xtensa                            allnoconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
