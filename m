Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3886E8C142A
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 May 2024 19:38:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C04D241DE3;
	Thu,  9 May 2024 17:38:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kVVeVs9VfPJs; Thu,  9 May 2024 17:38:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4F7F041DA5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715276301;
	bh=w0Hqs69zfZ5A0O41B5HplsVGxE16tEHoL4QqTCI/7+E=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Aek932DpbTKc0FCaQlavmQKAgso+zxhOm3Jc9Vb608beaI4sVf89WRQQos5y0IYb8
	 wPMphV9sKT5J1gtyYqCzRpl9QfuUGm53TSe2FaJSJUBty56JAvP6oE5uyX9iDGHlnD
	 N+7jY8XbH51o1Gn+wv4GrNfuW3ul7K5McmrRD+o7PhwhSc6q0IiKKli3z0IRlFtM5q
	 k7tOpXcnc6US+M5WSJwhZpgiFHwFfD0N6L2Fb+L0gAUCK9RTqCmRJMZ3H6h0cVapqz
	 vrbhDeOBpY3+scyxBsCqyHHcObjtN1kE1wPk92Mz6Tz5SecMLLxtCiKky9DLxY3z4f
	 s4sg8aUMhpd0A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4F7F041DA5;
	Thu,  9 May 2024 17:38:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 880571BF2F0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 May 2024 17:38:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 72D2640461
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 May 2024 17:38:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3GXCA6wAx6vm for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 May 2024 17:38:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7446540180
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7446540180
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7446540180
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 May 2024 17:38:17 +0000 (UTC)
X-CSE-ConnectionGUID: SnPBzK02SJGIhZnjdWETdw==
X-CSE-MsgGUID: VPrVrsI4R5OGcGITIwaVKQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="11343783"
X-IronPort-AV: E=Sophos;i="6.08,148,1712646000"; d="scan'208";a="11343783"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2024 10:38:17 -0700
X-CSE-ConnectionGUID: wp5rQljnSjyc7ORrbv9szA==
X-CSE-MsgGUID: A4q63Ly5Q4+5lxiFkRa3KQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,148,1712646000"; d="scan'208";a="33856632"
Received: from lkp-server01.sh.intel.com (HELO f8b243fe6e68) ([10.239.97.150])
 by fmviesa004.fm.intel.com with ESMTP; 09 May 2024 10:38:15 -0700
Received: from kbuild by f8b243fe6e68 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1s57if-0005Bb-1C
 for intel-wired-lan@lists.osuosl.org; Thu, 09 May 2024 17:38:13 +0000
Date: Fri, 10 May 2024 01:37:55 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202405100154.ZlLoaFcN-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715276298; x=1746812298;
 h=date:from:to:subject:message-id;
 bh=kHAZxHB2efys86jLvFZ8gLCD+pTWAR2H8LTvYuCL6c8=;
 b=TzO0o1w4LyukN51f/OJ5rFnlFIFYL2JGwAwuiTxQNJE+FuU1CPfhC/ml
 MKTGEKeruauAEpE5f9+5eGVjB+TrDdkwDG3isnBypkkQeIlKeGmxUvdfY
 euVV53QCixJPLNPfESsJoG0p0kXbtZL//QGV6jx55MLY6iLPaLOD/1UQ/
 i5hxd6GMFBBgEsszST1KjgIXl5ej1r9uyZ91kJVuq0Fggchm/9OPViWlp
 08/0mzXVWHCUYeZ/jhKsjes3Y8VxRMfjBrVebBvaLxCNLTRFrD68Drt2+
 qHH4F8F02WXvKVv8TtChvL8IRQFsrHT4AIbyKwWZi5CM/szMmo8U3uN2G
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TzO0o1w4
Subject: [Intel-wired-lan] [tnguy-next-queue:40GbE] BUILD SUCCESS
 6918107e25407ed0b5846af70449547263dcfef0
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 40GbE
branch HEAD: 6918107e25407ed0b5846af70449547263dcfef0  net: e1000e & ixgbe: Remove PCI_HEADER_TYPE_MFD duplicates

elapsed time: 1451m

configs tested: 132
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
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240509   clang
arm64                 randconfig-002-20240509   clang
arm64                 randconfig-003-20240509   gcc  
arm64                 randconfig-004-20240509   clang
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240509   gcc  
csky                  randconfig-002-20240509   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240509   clang
hexagon               randconfig-002-20240509   clang
i386                             allmodconfig   gcc  
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
sparc64               randconfig-001-20240509   gcc  
sparc64               randconfig-002-20240509   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                    randconfig-001-20240509   clang
um                    randconfig-002-20240509   gcc  
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64                              defconfig   gcc  
x86_64                          rhel-8.3-rust   clang
xtensa                            allnoconfig   gcc  
xtensa                randconfig-001-20240509   gcc  
xtensa                randconfig-002-20240509   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
