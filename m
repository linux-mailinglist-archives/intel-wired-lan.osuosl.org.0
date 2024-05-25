Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F418CF109
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 May 2024 20:43:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 26B4180F6C;
	Sat, 25 May 2024 18:43:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RMUMAfBlqeQb; Sat, 25 May 2024 18:43:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CA66A80F76
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716662636;
	bh=pTFxlIpN/Pcby3XdDEZCc2Ze2Ii5acE2FJ+6spxnt1U=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Wiabt8oG0zUFccuEnAZgzYYsT8NtzIEM+DlgH53J8y4TCe5++lMT0Jt1jD/wnQ9qW
	 O5jyUHqQn/ZAYtlGfVGTyHguL7AaNaq2Z6+DByFy/34BvNljUQylE7pQjHtNavDLt9
	 cYOwFOVmCyQV6Ng9dtxGti+vqAyG9e098jaMyCLR4Wq+7x7T2Apo35m5QpR7c95R/L
	 vvXldAbIlD5aGjMFNQJTAu8DT/Hbj46MJFEBrFdAw/BmmxP65z+A/VQIu6hOgBlZeA
	 pMDs2s+ubTmJYNCq2sRl101OsOLJ0Q4SgeUabBo9fBOJgLWCyODtiUNhTWR6HAa6La
	 CYLI7GboxYa6w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CA66A80F76;
	Sat, 25 May 2024 18:43:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 44A431D080E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 May 2024 18:43:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2DC934035C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 May 2024 18:43:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id T2czpDD3owQI for <intel-wired-lan@lists.osuosl.org>;
 Sat, 25 May 2024 18:43:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9E4B540319
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9E4B540319
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9E4B540319
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 May 2024 18:43:51 +0000 (UTC)
X-CSE-ConnectionGUID: O7eqW8kMTT6x5SMjwdypng==
X-CSE-MsgGUID: 9igtyBOQTkSmh2qen6hfZQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11083"; a="16853820"
X-IronPort-AV: E=Sophos;i="6.08,188,1712646000"; d="scan'208";a="16853820"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2024 11:43:51 -0700
X-CSE-ConnectionGUID: +9AxN+bbSGCaT99VSOD/OQ==
X-CSE-MsgGUID: 56l5NleKTLeOARPyjCyLog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,188,1712646000"; d="scan'208";a="34322458"
Received: from unknown (HELO 0610945e7d16) ([10.239.97.151])
 by fmviesa008.fm.intel.com with ESMTP; 25 May 2024 11:43:50 -0700
Received: from kbuild by 0610945e7d16 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sAwMu-0007K8-17
 for intel-wired-lan@lists.osuosl.org; Sat, 25 May 2024 18:43:48 +0000
Date: Sun, 26 May 2024 02:43:22 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202405260220.wzLzCRoF-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716662633; x=1748198633;
 h=date:from:to:subject:message-id;
 bh=pMJx/QeCpbocqUgJvmRHJ73Kc3KI0kVPFsO6jZSULgk=;
 b=XoWkctOGwHb68ChG0Tzsg0j+xbVJBVnfcTgFjRsT+L40ZKCpkkQPs++2
 29gFFTY3K7LgOJ9jXh5BjPBuxU+ije9NcnrqYYtGc4ktOXSyElblf4ARF
 k/uUPSEVsdRlG/TGFpsbkuyZ4rrsQ1uG4iKxEOFeIku1syRZmd8wWKs7K
 mSZiqqRYEsSqhApabFdDrODJHbcm4WxbnEWVSEo7R+WnMKP5qaWYsofOQ
 ErJ/AWf3IU2t3i7kqEFeGUV5AHvvC8lMtaY9wHUFfOKN1s9c5d9OE+bIo
 qbUJ486H2XCNF0+NLFcVtec+V9sNm5vy4sYen2wF8HoeU6bi/5mMHhbtO
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XoWkctOG
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 2e688fe158b329c7d15f425f9f33972fc19a31db
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
branch HEAD: 2e688fe158b329c7d15f425f9f33972fc19a31db  ice: check for unregistering correct number of devlink params

elapsed time: 1228m

configs tested: 154
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
arc                   randconfig-001-20240525   gcc  
arc                   randconfig-002-20240525   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                   randconfig-001-20240525   gcc  
arm                   randconfig-002-20240525   gcc  
arm                   randconfig-003-20240525   clang
arm                   randconfig-004-20240525   clang
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240525   gcc  
arm64                 randconfig-002-20240525   clang
arm64                 randconfig-003-20240525   gcc  
arm64                 randconfig-004-20240525   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240525   gcc  
csky                  randconfig-002-20240525   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240525   clang
hexagon               randconfig-002-20240525   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240525   gcc  
i386         buildonly-randconfig-001-20240526   clang
i386         buildonly-randconfig-002-20240525   gcc  
i386         buildonly-randconfig-002-20240526   gcc  
i386         buildonly-randconfig-003-20240525   gcc  
i386         buildonly-randconfig-003-20240526   gcc  
i386         buildonly-randconfig-004-20240525   clang
i386         buildonly-randconfig-004-20240526   clang
i386         buildonly-randconfig-005-20240525   gcc  
i386         buildonly-randconfig-005-20240526   clang
i386         buildonly-randconfig-006-20240525   gcc  
i386                                defconfig   clang
i386                  randconfig-001-20240525   clang
i386                  randconfig-002-20240525   gcc  
i386                  randconfig-003-20240525   clang
i386                  randconfig-004-20240525   clang
i386                  randconfig-005-20240525   gcc  
i386                  randconfig-006-20240525   gcc  
i386                  randconfig-011-20240525   clang
i386                  randconfig-012-20240525   clang
i386                  randconfig-013-20240525   clang
i386                  randconfig-014-20240525   gcc  
i386                  randconfig-015-20240525   clang
i386                  randconfig-016-20240525   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240525   gcc  
loongarch             randconfig-002-20240525   gcc  
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
nios2                 randconfig-001-20240525   gcc  
nios2                 randconfig-002-20240525   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240525   gcc  
parisc                randconfig-002-20240525   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc               randconfig-001-20240525   gcc  
powerpc               randconfig-002-20240525   gcc  
powerpc               randconfig-003-20240525   gcc  
powerpc64             randconfig-002-20240525   gcc  
powerpc64             randconfig-003-20240525   gcc  
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
riscv                 randconfig-001-20240525   gcc  
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                    randconfig-001-20240525   gcc  
sh                    randconfig-002-20240525   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240525   gcc  
sparc64               randconfig-002-20240525   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                    randconfig-001-20240525   gcc  
um                    randconfig-002-20240525   gcc  
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240525   clang
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20240525   clang
x86_64                randconfig-002-20240525   clang
x86_64                randconfig-003-20240525   clang
x86_64                randconfig-004-20240525   clang
x86_64                randconfig-005-20240525   clang
x86_64                randconfig-006-20240525   clang
x86_64                randconfig-011-20240525   clang
x86_64                randconfig-012-20240525   clang
x86_64                randconfig-014-20240525   clang
x86_64                randconfig-016-20240525   clang
x86_64                randconfig-072-20240525   clang
x86_64                randconfig-073-20240525   clang
x86_64                randconfig-076-20240525   clang
x86_64                          rhel-8.3-rust   clang
xtensa                            allnoconfig   gcc  
xtensa                randconfig-001-20240525   gcc  
xtensa                randconfig-002-20240525   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
