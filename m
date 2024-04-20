Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B06A78ABC5A
	for <lists+intel-wired-lan@lfdr.de>; Sat, 20 Apr 2024 18:07:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0E4856063A;
	Sat, 20 Apr 2024 16:07:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7ENVIPL5E5pK; Sat, 20 Apr 2024 16:07:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BD99560659
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713629229;
	bh=dL/WHSvJ/KJ3gX9cXDrQYWusxVDOp67SLzpZzOhYLb8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=p9yKqAy//iGy53m0WP0LUS/ExqAtFh6NIBEiu/en2K0HzP40V3aQxoxAplDuENSdQ
	 F+/Gb+Ne32kW9RiEr60mxz0g2mHeaOeOtb09a2i9ZKIE41u4JzuYb19wzuSaUoXXQT
	 T8fUucEDfZAuHm8k6FMGHN9O/FNC87QE/Zg6lB+BeVuLgVn6AxLvUizBOI9EJxhlf2
	 S941ZUf/GpErmHvIVnFJ0rltdIwjvckUl3J/6GsfT5iDU1p5qgH/IDWGa3ClVPCvP7
	 6ZPWFWJNneKZU0megWvDXK7qGyoBC8Lkdj7lOLD9RsC79mpkrOIfohBEq7D+ukCqO/
	 8rFMjOr+sO4FA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BD99560659;
	Sat, 20 Apr 2024 16:07:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E966E1BF381
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Apr 2024 16:07:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E1A8B40648
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Apr 2024 16:07:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lf64PeQ6CSqT for <intel-wired-lan@lists.osuosl.org>;
 Sat, 20 Apr 2024 16:07:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 965D8404B6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 965D8404B6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 965D8404B6
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Apr 2024 16:07:05 +0000 (UTC)
X-CSE-ConnectionGUID: T6xiNbuVRH68bUi3AxFSCg==
X-CSE-MsgGUID: tUm9JzyrQGO7285zQuZOCg==
X-IronPort-AV: E=McAfee;i="6600,9927,11050"; a="26738934"
X-IronPort-AV: E=Sophos;i="6.07,216,1708416000"; d="scan'208";a="26738934"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2024 09:07:04 -0700
X-CSE-ConnectionGUID: GC3GaASzTO+WrH473wkqLQ==
X-CSE-MsgGUID: 4W1WfQm3SumcCateQo5HZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,216,1708416000"; d="scan'208";a="61052312"
Received: from unknown (HELO 23c141fc0fd8) ([10.239.97.151])
 by orviesa001.jf.intel.com with ESMTP; 20 Apr 2024 09:07:03 -0700
Received: from kbuild by 23c141fc0fd8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ryDEy-000BGI-1S
 for intel-wired-lan@lists.osuosl.org; Sat, 20 Apr 2024 16:07:00 +0000
Date: Sun, 21 Apr 2024 00:06:51 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202404210049.4H3HsylO-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713629227; x=1745165227;
 h=date:from:to:subject:message-id;
 bh=aT71DTEwKZQY/sRDir0snkQ/XSjPAJVaebB8jNu0TBc=;
 b=TEq5Zot4vo+JFMAAGO5qIIkwYBrcxJ2nn83z8X7eatcYwgFscZYV39ZT
 6/RiRUIJ/ZV0GD2stFXzQfNGTBiOCVHgj/XTz0CV0/wIdJXpKAsAede6k
 vUAVdUsMBt9jHLt9iXi+z893Myi6VjaTdMGDPa3LORKDeL6kwWdbkpEas
 PW6rJ4INw/Lgvw0pC8WGcK6Q1m+sFc9BlGfrEM/je12aWLnbDQC2vXQbh
 xxYivWYl6ix7z+hzbVmPlJoaB7GJdMaOR6+GXVV/Wr0T3Q+sWTPLutvMm
 gsx9cWloFiZ970ZhdhkDtZRAhDXQYMnWFAKdtl6wyHB0sZJ/paQEIicl/
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TEq5Zot4
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 fc41ac010062bc12b444977e9a3aaf1bbfdd000f
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
branch HEAD: fc41ac010062bc12b444977e9a3aaf1bbfdd000f  ice: Adjust PTP init for 2x50G E825C devices

elapsed time: 1027m

configs tested: 137
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
arc                   randconfig-001-20240420   gcc  
arc                   randconfig-002-20240420   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                   randconfig-001-20240420   gcc  
arm                   randconfig-002-20240420   gcc  
arm                   randconfig-003-20240420   clang
arm                   randconfig-004-20240420   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240420   clang
arm64                 randconfig-002-20240420   clang
arm64                 randconfig-003-20240420   gcc  
arm64                 randconfig-004-20240420   clang
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240420   gcc  
csky                  randconfig-002-20240420   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240420   clang
hexagon               randconfig-002-20240420   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240420   gcc  
i386         buildonly-randconfig-002-20240420   clang
i386         buildonly-randconfig-003-20240420   gcc  
i386         buildonly-randconfig-004-20240420   gcc  
i386         buildonly-randconfig-005-20240420   gcc  
i386         buildonly-randconfig-006-20240420   gcc  
i386                                defconfig   clang
i386                  randconfig-001-20240420   clang
i386                  randconfig-002-20240420   gcc  
i386                  randconfig-003-20240420   gcc  
i386                  randconfig-004-20240420   gcc  
i386                  randconfig-005-20240420   clang
i386                  randconfig-006-20240420   gcc  
i386                  randconfig-011-20240420   clang
i386                  randconfig-012-20240420   clang
i386                  randconfig-013-20240420   clang
i386                  randconfig-014-20240420   clang
i386                  randconfig-015-20240420   clang
i386                  randconfig-016-20240420   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240420   gcc  
loongarch             randconfig-002-20240420   gcc  
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
nios2                 randconfig-001-20240420   gcc  
nios2                 randconfig-002-20240420   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240420   gcc  
parisc                randconfig-002-20240420   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc               randconfig-001-20240420   gcc  
powerpc               randconfig-002-20240420   clang
powerpc               randconfig-003-20240420   clang
powerpc64             randconfig-001-20240420   clang
powerpc64             randconfig-002-20240420   gcc  
powerpc64             randconfig-003-20240420   gcc  
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
riscv                 randconfig-001-20240420   clang
riscv                 randconfig-002-20240420   gcc  
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240420   clang
s390                  randconfig-002-20240420   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                    randconfig-001-20240420   gcc  
sh                    randconfig-002-20240420   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240420   gcc  
sparc64               randconfig-002-20240420   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                    randconfig-001-20240420   clang
um                    randconfig-002-20240420   gcc  
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64                              defconfig   gcc  
x86_64                          rhel-8.3-rust   clang
xtensa                            allnoconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
