Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 561626E5CF9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Apr 2023 11:07:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 780DD81FC1;
	Tue, 18 Apr 2023 09:07:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 780DD81FC1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681808861;
	bh=iOXdQotYBdWCTax8RGv6diGnzEgUtM++5mP1dLAJOYQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=VTbhbxDQd/5jPddrO2M37JyMlxgdXLlkWOUNDmfzoRCT1pww4M2aAPcDNH+VEeU3K
	 XJgeoCgqNFccySVn4aJaxUfgKcC4Jxnta0JDciIPygVwb/KlymKr0fnETbhv+AqtV8
	 DWHs1PPiKWxObPqtUf6e1cj/dakXtLDCLRIHThWvBYoi1g1vip6Sny9MP9kkEsdWcr
	 NQI2Tr2LheFBvCNiF23O1D6QYKzihnHWG+Ts8OPvGacwWyi//BhT2Kx9hSG8LLr5Uo
	 7bousoZOfg7Myij7zM8LGjfqpslyBh5o39hWfh3nwQ0BHnu51Za61d1rSjUv3YNSvX
	 qQ7bOWJbjwd1w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pYvw_lvIAwQe; Tue, 18 Apr 2023 09:07:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3D0DA81FBC;
	Tue, 18 Apr 2023 09:07:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3D0DA81FBC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 457F51BF2A7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 09:07:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1FBAC4155F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 09:07:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1FBAC4155F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2b-OSwLusbjx for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Apr 2023 09:07:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 914E3410E9
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 914E3410E9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 09:07:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="347868940"
X-IronPort-AV: E=Sophos;i="5.99,206,1677571200"; d="scan'208";a="347868940"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 02:07:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="1020738768"
X-IronPort-AV: E=Sophos;i="5.99,206,1677571200"; d="scan'208";a="1020738768"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 18 Apr 2023 02:07:31 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pohJC-000dCd-2a;
 Tue, 18 Apr 2023 09:07:30 +0000
Date: Tue, 18 Apr 2023 17:07:11 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <643e5dbf.PSctTL5EQ3VXJ6aW%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681808853; x=1713344853;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=o8okWhxsN6L/TCdS5tVO6QYF83Ws+aIxsOmDB/RSr2Y=;
 b=SnuTZx3b5/m0LJvRVbAiA0b1p3gZmRDwxHZt11FxtLNcrpE//DMLrqV1
 O/KBO0CWR8QvW3zkpFRMZjhqdqFpT4glJCjULdD13b/4JRvlXfMNbJ5IM
 GoEufS79XeHUSbT1fMEwEuG0D5FrQWYEtklDf0VDoxdmNSsPCRUIFS5xK
 16/UUeKH+0hg5h+4SXhj5o05qy2+pQ12BIwcRS4KODWGSod6UU0NU+F7r
 aGTPg3N8lrgP8VbS7H7d9Kg92o/F7lWxgP2lhlwv81/p1nTFN0mb2DIWA
 npRZt+KAfLTJLvlPjX6SIqyhdvRTQEe9+Ge63N+5fpUzi9iPf6HELal3/
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SnuTZx3b
Subject: [Intel-wired-lan] [tnguy-net-queue:40GbE] BUILD SUCCESS
 c86c00c6935505929cc9adb29ddb85e48c71f828
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 40GbE
branch HEAD: c86c00c6935505929cc9adb29ddb85e48c71f828  i40e: fix i40e_setup_misc_vector() error handling

elapsed time: 723m

configs tested: 131
configs skipped: 11

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r002-20230417   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r026-20230417   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r004-20230416   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r035-20230417   gcc  
arc                  randconfig-r043-20230416   gcc  
arc                  randconfig-r043-20230417   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r002-20230416   clang
arm                                 defconfig   gcc  
arm                  randconfig-r015-20230416   clang
arm                  randconfig-r035-20230416   gcc  
arm                  randconfig-r046-20230416   clang
arm                  randconfig-r046-20230417   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r016-20230416   gcc  
arm64                randconfig-r023-20230416   gcc  
arm64                randconfig-r025-20230416   gcc  
arm64                randconfig-r033-20230417   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r003-20230417   gcc  
csky                 randconfig-r016-20230417   gcc  
csky                 randconfig-r034-20230417   gcc  
hexagon      buildonly-randconfig-r006-20230416   clang
hexagon      buildonly-randconfig-r006-20230417   clang
hexagon              randconfig-r002-20230416   clang
hexagon              randconfig-r041-20230416   clang
hexagon              randconfig-r041-20230417   clang
hexagon              randconfig-r045-20230416   clang
hexagon              randconfig-r045-20230417   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230417   gcc  
i386                 randconfig-a002-20230417   gcc  
i386                 randconfig-a003-20230417   gcc  
i386                 randconfig-a004-20230417   gcc  
i386                 randconfig-a005-20230417   gcc  
i386                 randconfig-a006-20230417   gcc  
i386                 randconfig-a011-20230417   clang
i386                 randconfig-a012-20230417   clang
i386                 randconfig-a013-20230417   clang
i386                 randconfig-a014-20230417   clang
i386                 randconfig-a015-20230417   clang
i386                 randconfig-a016-20230417   clang
i386                 randconfig-r013-20230417   clang
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r005-20230416   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r036-20230416   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r001-20230416   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r006-20230417   gcc  
m68k                 randconfig-r032-20230416   gcc  
m68k                 randconfig-r033-20230416   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r021-20230416   clang
nios2        buildonly-randconfig-r003-20230416   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r006-20230416   gcc  
nios2                randconfig-r025-20230417   gcc  
parisc       buildonly-randconfig-r004-20230417   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r001-20230416   gcc  
parisc               randconfig-r031-20230416   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r034-20230416   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r004-20230416   clang
riscv                randconfig-r022-20230417   clang
riscv                randconfig-r042-20230416   gcc  
riscv                randconfig-r042-20230417   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r005-20230417   gcc  
s390                 randconfig-r024-20230416   gcc  
s390                 randconfig-r024-20230417   clang
s390                 randconfig-r044-20230416   gcc  
s390                 randconfig-r044-20230417   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r011-20230416   gcc  
sh                   randconfig-r026-20230416   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r002-20230417   gcc  
sparc                randconfig-r003-20230416   gcc  
sparc                randconfig-r012-20230417   gcc  
sparc64      buildonly-randconfig-r003-20230417   gcc  
sparc64              randconfig-r004-20230417   gcc  
sparc64              randconfig-r014-20230417   gcc  
sparc64              randconfig-r022-20230416   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230417   gcc  
x86_64               randconfig-a002-20230417   gcc  
x86_64               randconfig-a003-20230417   gcc  
x86_64               randconfig-a004-20230417   gcc  
x86_64               randconfig-a005-20230417   gcc  
x86_64               randconfig-a006-20230417   gcc  
x86_64               randconfig-a011-20230417   clang
x86_64               randconfig-a012-20230417   clang
x86_64               randconfig-a013-20230417   clang
x86_64               randconfig-a014-20230417   clang
x86_64               randconfig-a015-20230417   clang
x86_64               randconfig-a016-20230417   clang
x86_64               randconfig-r011-20230417   clang
x86_64               randconfig-r031-20230417   gcc  
x86_64               randconfig-r032-20230417   gcc  
x86_64               randconfig-r036-20230417   gcc  
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r012-20230416   gcc  
xtensa               randconfig-r021-20230417   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
