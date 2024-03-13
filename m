Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D38D087A55A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Mar 2024 10:59:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F164B40B7F;
	Wed, 13 Mar 2024 09:59:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vreBEdj8y-fZ; Wed, 13 Mar 2024 09:59:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 71B0940AA5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710323988;
	bh=qkNAqp+4fmFqOqlDmFntD2wmotPAhUJ7Fzks6/4eSjU=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=kLditzL8PheLuyDGMTEXT9RrOjKXbfT80W4RRxmlgL6RbXIbStxGGA+6Os9RLIhSu
	 Ou0yYqKcdMXJ2qvateiXx5jawAnKlujdjthkSAHAOeBhv4VaUv4uVx82dqNjC0Ful9
	 jWjGvlNZOR+9Q0bYuZMIrK+19MWpy83H7GzcxYAdvS0f+JDhuwXqgCWva29QkyV3yK
	 Qzq/DWjPb9+NWQFcdaPcgdeeGEyUQ1JA9v1GtZZH4YsEApBS8/DziC6NPu9nlWsyWv
	 +w8tD+8bqYIZHWt2p71y1e1LJmMR0VAdmqG7tRjxFeyMyeNKWGNI5hlbN96HaBt4Fe
	 n4wXtatVlTOMQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 71B0940AA5;
	Wed, 13 Mar 2024 09:59:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A65801BF255
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Mar 2024 09:59:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9FB5F81496
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Mar 2024 09:59:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ALboAD_XZLUu for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Mar 2024 09:59:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 86B3B81463
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 86B3B81463
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 86B3B81463
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Mar 2024 09:59:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="5200715"
X-IronPort-AV: E=Sophos;i="6.07,122,1708416000"; 
   d="scan'208";a="5200715"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2024 02:59:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,122,1708416000"; d="scan'208";a="49296851"
Received: from lkp-server01.sh.intel.com (HELO b21307750695) ([10.239.97.150])
 by orviesa001.jf.intel.com with ESMTP; 13 Mar 2024 02:59:43 -0700
Received: from kbuild by b21307750695 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rkLOf-000CFp-2B
 for intel-wired-lan@lists.osuosl.org; Wed, 13 Mar 2024 09:59:41 +0000
Date: Wed, 13 Mar 2024 17:59:35 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202403131732.yBcGz18k-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710323985; x=1741859985;
 h=date:from:to:subject:message-id;
 bh=oDW1AInjPMPc5XCBBNtQWBa/d1RfLkXMQYbtXOghwHE=;
 b=di2Th2fnpmOhldie6zBFiHsIKrhLAIVInMSD7PtFCo66W8pFZtQkMlu7
 wEWIn6XLShSyQEhl9/F43xoRZrF4jNywIY86SSEQrSVQKp70Zeh7gC3pq
 JQkPfATPdd8dXn0AEOH4L3dcMRFb/9z+dBWx2BlUOJi2G04mTzAmaVRpt
 MBzqzGzNYgFpZqMpd9OSRS0NWDDiF8O/egYzTPJmVCeCKK3Q3rx9lstcB
 ixgo8OsfwmPoNFyvNRr5kCGDsdeN77GHuylpg234PJSTG0C5DIoiGP5i5
 lWutL7PFnyfNJA8nVjIyVlSX318PgjMj9iwm0OsviDnweuUCrvObL/DSS
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=di2Th2fn
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 e0408f6331d365211bbddd83661c2d8f28617512
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
branch HEAD: e0408f6331d365211bbddd83661c2d8f28617512  ice: Remove ndo_get_phys_port_name

elapsed time: 733m

configs tested: 125
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
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240313   gcc  
i386         buildonly-randconfig-002-20240313   gcc  
i386         buildonly-randconfig-003-20240313   clang
i386         buildonly-randconfig-004-20240313   clang
i386         buildonly-randconfig-005-20240313   clang
i386         buildonly-randconfig-006-20240313   gcc  
i386                                defconfig   clang
i386                  randconfig-001-20240313   clang
i386                  randconfig-002-20240313   clang
i386                  randconfig-003-20240313   clang
i386                  randconfig-004-20240313   gcc  
i386                  randconfig-005-20240313   gcc  
i386                  randconfig-006-20240313   clang
i386                  randconfig-011-20240313   gcc  
i386                  randconfig-012-20240313   clang
i386                  randconfig-013-20240313   gcc  
i386                  randconfig-014-20240313   gcc  
i386                  randconfig-015-20240313   clang
i386                  randconfig-016-20240313   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
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
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
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
x86_64       buildonly-randconfig-001-20240313   clang
x86_64       buildonly-randconfig-002-20240313   gcc  
x86_64       buildonly-randconfig-003-20240313   clang
x86_64       buildonly-randconfig-004-20240313   clang
x86_64       buildonly-randconfig-005-20240313   gcc  
x86_64       buildonly-randconfig-006-20240313   clang
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20240313   clang
x86_64                randconfig-002-20240313   gcc  
x86_64                randconfig-003-20240313   clang
x86_64                randconfig-004-20240313   gcc  
x86_64                randconfig-005-20240313   gcc  
x86_64                randconfig-006-20240313   clang
x86_64                randconfig-011-20240313   clang
x86_64                randconfig-012-20240313   clang
x86_64                randconfig-013-20240313   clang
x86_64                randconfig-014-20240313   clang
x86_64                randconfig-015-20240313   gcc  
x86_64                randconfig-016-20240313   gcc  
x86_64                randconfig-071-20240313   gcc  
x86_64                randconfig-072-20240313   clang
x86_64                randconfig-073-20240313   clang
x86_64                randconfig-074-20240313   gcc  
x86_64                randconfig-075-20240313   clang
x86_64                randconfig-076-20240313   clang
x86_64                          rhel-8.3-rust   clang
xtensa                            allnoconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
