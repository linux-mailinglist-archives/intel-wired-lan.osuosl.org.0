Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E5598BB825
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 May 2024 01:21:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 65F5083C2A;
	Fri,  3 May 2024 23:21:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JhcVH3bJpncI; Fri,  3 May 2024 23:21:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4778483C27
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714778470;
	bh=BRXzlKs9dZ9m0yYtgT8C1JGGp2uKY+/m6RKtw8+Olcs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=us9ajC9oZIsXWpydMQGzt9Qwpk0eAKmFsywUfqa/FoahyprE02qnsYBH/FH6P2yQ9
	 B/qIkUk/v/MCVw8b7sWS6rVKuP2fnq7MRa/rpPm0tOAebID7r/RqBSB4XNl/hiJt1y
	 gBOc14kgeg42I6bMduH9ZpoFJKOg0pkYOTQzBFmILUSQxOGIne5tIiAoKdpT7mn3zy
	 0KCCSbcP7vhK/uX1TDH2bGhyF8zi9KjnMN3B0SOF1fz9JWA9jwQn84N1H+PcinrGV5
	 es1NP/lSw3IF9s17ysHNkuNjDmY2oH/565Sg5g8VovGyu/0h4KbaytWBqMr5UtXapj
	 ML6qJEqds24lQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4778483C27;
	Fri,  3 May 2024 23:21:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BE0FD1BF364
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 May 2024 23:21:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B44AE606CA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 May 2024 23:21:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gAv__mTYkYs5 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 May 2024 23:21:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A52AC606A2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A52AC606A2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A52AC606A2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 May 2024 23:21:05 +0000 (UTC)
X-CSE-ConnectionGUID: wApjqSqkQFi1Gijolaee3Q==
X-CSE-MsgGUID: BGS6H8ZzTtWNDo0+2omu7g==
X-IronPort-AV: E=McAfee;i="6600,9927,11063"; a="10528562"
X-IronPort-AV: E=Sophos;i="6.07,252,1708416000"; d="scan'208";a="10528562"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2024 16:21:04 -0700
X-CSE-ConnectionGUID: GJSG7ZrfR4q3jFAADVO3iQ==
X-CSE-MsgGUID: 4OCs5fROReewalA/1Zl3bA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,252,1708416000"; d="scan'208";a="32269143"
Received: from lkp-server01.sh.intel.com (HELO e434dd42e5a1) ([10.239.97.150])
 by orviesa003.jf.intel.com with ESMTP; 03 May 2024 16:21:04 -0700
Received: from kbuild by e434dd42e5a1 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1s32D7-000CBr-0k
 for intel-wired-lan@lists.osuosl.org; Fri, 03 May 2024 23:21:01 +0000
Date: Sat, 04 May 2024 07:20:12 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202405040711.3uggZp55-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714778465; x=1746314465;
 h=date:from:to:subject:message-id;
 bh=dLcmpnT6axKBwCcA5G9MpD3aoIeMiqBV4R8WAsldIWI=;
 b=IAMhUX49ls0Omnp0H/vqn6W6pY5LsZrKF/1abZo5dwMmR+j/Caz9tEAt
 Z5fSnGW5+DF5ma0R+pWAy64zBBLV+1aFpnccGxKfZtpJaiVZ8TpO4RuIR
 5F+g2WkNRpawKFZ+GErp6ltKB8Emx20gSqxFKn5/M52Acu+KUI/ppUF/9
 EKtdsChgBDmwDSpSOMta5r0Qy0z1meOBhA2+s7fDx4/gybY0LWkpQob9Z
 DpsRc0jdjpSLvLwSV+rTy+1/Bn78zHDBDnaVONj8DVydO1uFGpzjpS621
 PFxTWcXMMVQH1187tppqw6AiN6sbiGH/mbY0UXglhqnUw1glHJfCYxvvj
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IAMhUX49
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 347accb11091e87d3371029add27e0e3914b9d51
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
branch HEAD: 347accb11091e87d3371029add27e0e3914b9d51  ice: Adjust PTP init for 2x50G E825C devices

elapsed time: 1458m

configs tested: 138
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                               allnoconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20240504   gcc  
arc                   randconfig-002-20240504   gcc  
arm                               allnoconfig   clang
arm                                 defconfig   clang
arm                         mv78xx0_defconfig   clang
arm                       omap2plus_defconfig   gcc  
arm                             pxa_defconfig   gcc  
arm                   randconfig-001-20240504   clang
arm                   randconfig-002-20240504   clang
arm                   randconfig-003-20240504   clang
arm                   randconfig-004-20240504   clang
arm                           sama7_defconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240504   gcc  
arm64                 randconfig-002-20240504   gcc  
arm64                 randconfig-003-20240504   gcc  
arm64                 randconfig-004-20240504   clang
csky                              allnoconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240504   gcc  
csky                  randconfig-002-20240504   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240504   clang
hexagon               randconfig-002-20240504   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240503   clang
i386         buildonly-randconfig-002-20240503   clang
i386         buildonly-randconfig-003-20240503   gcc  
i386         buildonly-randconfig-004-20240503   gcc  
i386         buildonly-randconfig-005-20240503   gcc  
i386         buildonly-randconfig-006-20240503   clang
i386                                defconfig   clang
i386                  randconfig-001-20240503   gcc  
i386                  randconfig-002-20240503   clang
i386                  randconfig-003-20240503   clang
i386                  randconfig-004-20240503   gcc  
i386                  randconfig-005-20240503   clang
i386                  randconfig-006-20240503   clang
i386                  randconfig-011-20240503   clang
i386                  randconfig-012-20240503   gcc  
i386                  randconfig-013-20240503   gcc  
i386                  randconfig-014-20240503   gcc  
i386                  randconfig-015-20240503   gcc  
i386                  randconfig-016-20240503   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240504   gcc  
loongarch             randconfig-002-20240504   gcc  
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
mips                           ci20_defconfig   clang
mips                       lemote2f_defconfig   gcc  
mips                    maltaup_xpa_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240504   gcc  
nios2                 randconfig-002-20240504   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240504   gcc  
parisc                randconfig-002-20240504   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                       eiger_defconfig   clang
powerpc                        fsp2_defconfig   gcc  
powerpc               randconfig-001-20240504   gcc  
powerpc               randconfig-002-20240504   gcc  
powerpc               randconfig-003-20240504   gcc  
powerpc64             randconfig-001-20240504   clang
powerpc64             randconfig-002-20240504   clang
powerpc64             randconfig-003-20240504   clang
riscv                             allnoconfig   gcc  
riscv                               defconfig   clang
riscv                 randconfig-001-20240504   gcc  
riscv                 randconfig-002-20240504   gcc  
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240504   clang
s390                  randconfig-002-20240504   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                    randconfig-001-20240504   gcc  
sh                    randconfig-002-20240504   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240504   gcc  
sparc64               randconfig-002-20240504   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                    randconfig-001-20240504   gcc  
um                    randconfig-002-20240504   clang
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64                              defconfig   gcc  
x86_64                          rhel-8.3-rust   clang
xtensa                            allnoconfig   gcc  
xtensa                randconfig-001-20240504   gcc  
xtensa                randconfig-002-20240504   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
