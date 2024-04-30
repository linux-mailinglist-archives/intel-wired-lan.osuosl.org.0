Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 106768B6F94
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Apr 2024 12:23:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 74FA180ACF;
	Tue, 30 Apr 2024 10:23:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HxA06KZ8_Kuj; Tue, 30 Apr 2024 10:23:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0F4B78002A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714472621;
	bh=6GOopTUeOXrZnw5ZjGvv6sO5sHMgWp5plo/IEuxX0w8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=EwA5p+sUVYZSm10jJDqXp9vL+/i2CSvvArscPQja+orfGy76jMNbll5rOp8ZqzO9X
	 VwFvyIOta/s9DQpnt5WxgmNdXx3RMIEPtFdCYsiTBDD4H07+h2riLnWgIbsq/pmMzD
	 pv0KbRtCdF9efAbgKAzoa/AF9POKvM5vj7InHcLfs7mhIv6jWr0Hd0M+DftZFDv9be
	 X4PNc+DulE0tWbnPWWFOcIB+8wqHl1t76kVqLatRYXVD0Q92O9iuQbDT7/mn8fZ+Nm
	 JEq6Y722HtMo2aw+vNPMszLvqnmXvyEaftMpaqet1ZKO/Y0Pfa8orvd1TzZi5v8YP4
	 yDBUAfeP4ljBQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0F4B78002A;
	Tue, 30 Apr 2024 10:23:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8124E1BF2B1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2024 10:23:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6C75240492
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2024 10:23:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ovsu15O0FMyD for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Apr 2024 10:23:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3FA0240395
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3FA0240395
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3FA0240395
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2024 10:23:36 +0000 (UTC)
X-CSE-ConnectionGUID: smN11XaTSf2lxAkJhN6vfw==
X-CSE-MsgGUID: Sx/zxVJFQ3K3YDMBVZOULw==
X-IronPort-AV: E=McAfee;i="6600,9927,11059"; a="10021274"
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="10021274"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 03:23:34 -0700
X-CSE-ConnectionGUID: 866XMtGOSAeeXNy71gyF5Q==
X-CSE-MsgGUID: i/vsL57EQPiRjgpTUVFg3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="26282911"
Received: from lkp-server01.sh.intel.com (HELO e434dd42e5a1) ([10.239.97.150])
 by orviesa010.jf.intel.com with ESMTP; 30 Apr 2024 03:23:34 -0700
Received: from kbuild by e434dd42e5a1 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1s1ke3-00081h-1N
 for intel-wired-lan@lists.osuosl.org; Tue, 30 Apr 2024 10:23:31 +0000
Date: Tue, 30 Apr 2024 18:22:55 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202404301852.ybtT3FS6-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714472616; x=1746008616;
 h=date:from:to:subject:message-id;
 bh=cBukTr4MXdxqdwNEQMSJ48P3NNvz7hGHx8WHWB9Yne0=;
 b=VdoUP4bM0ebmCcPNq5qF4PwP8WXdbvBO7hZTVqo3s/8BQ0aLWdYZ8G2e
 1Gaz6K/HVCgQv0h9NnRtuQafwnS0SOLw8Jz6D5NSONZtxWwyFMgQsblSd
 k6TD0p5Q/eYzWLtn3jeLMylDS3vttSH1Dta07lDom6gvqvWou4SJS/jhe
 ZL6bEzQ0DkzRsa/M3CyJ+oZ8SFDLhct35yzYt/nueMYihxcmLgnsXeobC
 8srqDh0KNH/e/4q2D/Ng+EyEZ1FPEbNUdTWtVtItHV4cxgeNE8ENI12WC
 ICRf6RsbYZz88G+/O1k6hQ2VeuVGjwUbjrkM/erL9oh7YfxOCWYIsfo6D
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VdoUP4bM
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 c05c1cca54e658ad50bc5eb68088d21fbbb51bc3
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
branch HEAD: c05c1cca54e658ad50bc5eb68088d21fbbb51bc3  ice: Do not get coalesce settings while in reset

elapsed time: 1078m

configs tested: 161
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
arc                   randconfig-001-20240430   gcc  
arc                   randconfig-002-20240430   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                   randconfig-001-20240430   clang
arm                   randconfig-002-20240430   clang
arm                   randconfig-003-20240430   clang
arm                   randconfig-004-20240430   clang
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240430   clang
arm64                 randconfig-002-20240430   gcc  
arm64                 randconfig-003-20240430   clang
arm64                 randconfig-004-20240430   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240430   gcc  
csky                  randconfig-002-20240430   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240430   clang
hexagon               randconfig-002-20240430   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240430   gcc  
i386         buildonly-randconfig-002-20240430   clang
i386         buildonly-randconfig-003-20240430   gcc  
i386         buildonly-randconfig-004-20240430   clang
i386         buildonly-randconfig-005-20240430   clang
i386         buildonly-randconfig-006-20240430   gcc  
i386                                defconfig   clang
i386                  randconfig-001-20240430   clang
i386                  randconfig-002-20240430   gcc  
i386                  randconfig-003-20240430   gcc  
i386                  randconfig-004-20240430   gcc  
i386                  randconfig-005-20240430   gcc  
i386                  randconfig-006-20240430   gcc  
i386                  randconfig-011-20240430   gcc  
i386                  randconfig-012-20240430   clang
i386                  randconfig-013-20240430   clang
i386                  randconfig-014-20240430   gcc  
i386                  randconfig-015-20240430   gcc  
i386                  randconfig-016-20240430   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240430   gcc  
loongarch             randconfig-002-20240430   gcc  
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
nios2                 randconfig-001-20240430   gcc  
nios2                 randconfig-002-20240430   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240430   gcc  
parisc                randconfig-002-20240430   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc               randconfig-001-20240430   gcc  
powerpc               randconfig-002-20240430   gcc  
powerpc               randconfig-003-20240430   clang
powerpc64             randconfig-001-20240430   clang
powerpc64             randconfig-002-20240430   clang
powerpc64             randconfig-003-20240430   clang
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
riscv                 randconfig-001-20240430   gcc  
riscv                 randconfig-002-20240430   clang
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240430   gcc  
s390                  randconfig-002-20240430   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                    randconfig-001-20240430   gcc  
sh                    randconfig-002-20240430   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240430   gcc  
sparc64               randconfig-002-20240430   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                    randconfig-001-20240430   clang
um                    randconfig-002-20240430   clang
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240430   gcc  
x86_64       buildonly-randconfig-002-20240430   clang
x86_64       buildonly-randconfig-003-20240430   clang
x86_64       buildonly-randconfig-004-20240430   clang
x86_64       buildonly-randconfig-005-20240430   clang
x86_64       buildonly-randconfig-006-20240430   clang
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20240430   clang
x86_64                randconfig-002-20240430   clang
x86_64                randconfig-003-20240430   gcc  
x86_64                randconfig-004-20240430   gcc  
x86_64                randconfig-005-20240430   gcc  
x86_64                randconfig-006-20240430   clang
x86_64                randconfig-011-20240430   clang
x86_64                randconfig-012-20240430   clang
x86_64                randconfig-013-20240430   gcc  
x86_64                randconfig-014-20240430   clang
x86_64                randconfig-015-20240430   clang
x86_64                randconfig-016-20240430   clang
x86_64                randconfig-071-20240430   clang
x86_64                randconfig-072-20240430   clang
x86_64                randconfig-073-20240430   clang
x86_64                randconfig-075-20240430   gcc  
x86_64                          rhel-8.3-rust   clang
xtensa                            allnoconfig   gcc  
xtensa                randconfig-001-20240430   gcc  
xtensa                randconfig-002-20240430   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
