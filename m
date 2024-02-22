Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B0CF585F8E9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Feb 2024 13:55:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D4D104155E;
	Thu, 22 Feb 2024 12:55:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W19kUpdt72G7; Thu, 22 Feb 2024 12:55:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A86984088C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708606518;
	bh=y71WVZQrka7Mbgsm/eTESVAM8uhiYaFg64lal3shtjY=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=KZHD7tEqb6XmAWyt3NV416ZjUBQ6TZixGOKKdR3Daunc5mrm0YABCY/HzDR/UJwdf
	 otYZ24SUc5HnDkdAcNbBUeTG3dg1ysNExOH6LSAWGcIdtIN3j6wavWR4fMhszSXVvH
	 mwlT2T8tLSyzzJBoXYCJmscO23Y09mtkEGJupABW9FEkQ4wym+/ZB/yg+dL7rfHLzi
	 +bO/123Et3CWh3LIrf9CL9xMSdWb3+t0ubDwMpPKF7CfdUaFj7lXAOCZgvflD/N+4k
	 x5x2Tepa+iv0h+Gbqa7NIU66Wttm8tm/mAsaTUAfZcPo9tL1yzC5EWCLphfKg7aCOC
	 /0oTXk57a4U1w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A86984088C;
	Thu, 22 Feb 2024 12:55:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7F98D1BF3E5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 12:55:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6B222407E3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 12:55:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tS48p8g3RL4n for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Feb 2024 12:55:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6693D407E1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6693D407E1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6693D407E1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 12:55:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="2743319"
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; 
   d="scan'208";a="2743319"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 04:55:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; d="scan'208";a="36493239"
Received: from lkp-server02.sh.intel.com (HELO 3c78fa4d504c) ([10.239.97.151])
 by fmviesa001.fm.intel.com with ESMTP; 22 Feb 2024 04:55:14 -0800
Received: from kbuild by 3c78fa4d504c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rd8b0-0006K8-1g
 for intel-wired-lan@lists.osuosl.org; Thu, 22 Feb 2024 12:54:53 +0000
Date: Thu, 22 Feb 2024 20:53:43 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202402222039.zXfxxPNe-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708606516; x=1740142516;
 h=date:from:to:subject:message-id;
 bh=lcz4UB+mhlDW2tWfvryIgBafnf5h2JysssG+4qgY0Vk=;
 b=Hfv1beu6mDgdlGEkyLP0Y8bMY3a3SJ39CfctwQWKivNUjfvq9ZOcq7vH
 anlDLOXTM7mf5qreoJ6J/ZS0gE6ahbzo8j/e1PW8l+37QGjmkb8LgA/Wx
 7HO6Uq1F5u9JdcVuU/UREea1EpqR/hytq+usrYR7zKjZpffAe+Cjow54Y
 DquTDN9k/nsnP9MQbsHc4pyHUpGUKGzDaeMpDb3M+V4IxcjL7QomjgkEb
 y0okvmXCe7ekaZFQ1DZ+uxtEp6GMiGaF2nkq9abB+pBNExhBs9KdEkUqQ
 4yIvJn1ipM6GMNYdh11fJ5Gh4hSRxdMtEQVzuvTdkpZY0g8lH5aea5IHk
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Hfv1beu6
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 590317286d5d7994c92312aa948a7f5ac77d8697
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
branch HEAD: 590317286d5d7994c92312aa948a7f5ac77d8697  igc: avoid returning frame twice in XDP_REDIRECT

elapsed time: 1136m

configs tested: 139
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
arc                   randconfig-001-20240222   gcc  
arc                   randconfig-002-20240222   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                   randconfig-001-20240222   gcc  
arm                   randconfig-002-20240222   gcc  
arm                   randconfig-003-20240222   clang
arm                   randconfig-004-20240222   clang
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240222   clang
arm64                 randconfig-002-20240222   gcc  
arm64                 randconfig-003-20240222   clang
arm64                 randconfig-004-20240222   clang
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240222   gcc  
csky                  randconfig-002-20240222   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240222   clang
hexagon               randconfig-002-20240222   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240222   gcc  
i386         buildonly-randconfig-002-20240222   clang
i386         buildonly-randconfig-003-20240222   clang
i386         buildonly-randconfig-004-20240222   gcc  
i386         buildonly-randconfig-005-20240222   clang
i386         buildonly-randconfig-006-20240222   gcc  
i386                                defconfig   clang
i386                  randconfig-001-20240222   clang
i386                  randconfig-002-20240222   clang
i386                  randconfig-003-20240222   gcc  
i386                  randconfig-004-20240222   clang
i386                  randconfig-005-20240222   gcc  
i386                  randconfig-006-20240222   clang
i386                  randconfig-011-20240222   gcc  
i386                  randconfig-012-20240222   clang
i386                  randconfig-013-20240222   gcc  
i386                  randconfig-014-20240222   gcc  
i386                  randconfig-015-20240222   clang
i386                  randconfig-016-20240222   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240222   gcc  
loongarch             randconfig-002-20240222   gcc  
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
nios2                 randconfig-001-20240222   gcc  
nios2                 randconfig-002-20240222   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240222   gcc  
parisc                randconfig-002-20240222   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc               randconfig-001-20240222   clang
powerpc               randconfig-002-20240222   clang
powerpc               randconfig-003-20240222   clang
powerpc64             randconfig-001-20240222   clang
powerpc64             randconfig-002-20240222   clang
powerpc64             randconfig-003-20240222   gcc  
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
riscv                 randconfig-001-20240222   clang
riscv                 randconfig-002-20240222   gcc  
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240222   gcc  
s390                  randconfig-002-20240222   clang
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                    randconfig-001-20240222   gcc  
sh                    randconfig-002-20240222   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240222   gcc  
sparc64               randconfig-002-20240222   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                    randconfig-001-20240222   clang
um                    randconfig-002-20240222   clang
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64                              defconfig   gcc  
x86_64                          rhel-8.3-rust   clang
xtensa                            allnoconfig   gcc  
xtensa                randconfig-001-20240222   gcc  
xtensa                randconfig-002-20240222   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
