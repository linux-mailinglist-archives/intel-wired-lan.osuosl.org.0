Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D648D900C69
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Jun 2024 21:21:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0E2BF6152B;
	Fri,  7 Jun 2024 19:21:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id glI_in_Dea_9; Fri,  7 Jun 2024 19:21:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 05F2B608D8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717788100;
	bh=/Gcd7XET0xrZ88yTzrnl6Ji6VanmL8xUsrsQAzbngss=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=S1XJJa93+xgVG9R/5tERzMQrGY2vvtefX8sVYz4jnvHxE8N2iXng2mnbuNLm2Cn9f
	 V+IETItCmttN85BgqSnpSSrWZXKy1ck61CjNtP1+b2KDV28NwZWh73pQo/q11I+3QQ
	 3wTWTKIR0Z76wZt/p5p2+qDAERhsMFl6N4IE34XNn9UCBcAKMvgwTqD+D4c6svm5mR
	 YMo6WBFDVXH/ciNrtjsvVbtIdex33fApoz6f2EG6z7epku5w/R7+rRbMRcHxDZWDi7
	 zoVZhURyYlTwS8l5MiTlIXaqXjMAvEmQjZ2Q7UZTcu1fOizYVIxkP0h1MxJlFJ3/Ma
	 LO8ncQcAYz6UQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 05F2B608D8;
	Fri,  7 Jun 2024 19:21:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 300201BF95D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jun 2024 19:21:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1C60060833
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jun 2024 19:21:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZNCBy0JEdhLr for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Jun 2024 19:21:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0AF8D6070C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0AF8D6070C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0AF8D6070C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jun 2024 19:21:36 +0000 (UTC)
X-CSE-ConnectionGUID: mlwIVLaiTwWO08KAjWxsgQ==
X-CSE-MsgGUID: mfrH8I1dTxqjZj2CMJy2Rg==
X-IronPort-AV: E=McAfee;i="6600,9927,11096"; a="25179885"
X-IronPort-AV: E=Sophos;i="6.08,221,1712646000"; d="scan'208";a="25179885"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2024 12:21:36 -0700
X-CSE-ConnectionGUID: 5IqMpa66SReR+/NAqwEB/Q==
X-CSE-MsgGUID: yc3veTfNRR+8pFf3aWeA6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,221,1712646000"; d="scan'208";a="38856188"
Received: from lkp-server01.sh.intel.com (HELO 472b94a103a1) ([10.239.97.150])
 by orviesa006.jf.intel.com with ESMTP; 07 Jun 2024 12:21:35 -0700
Received: from kbuild by 472b94a103a1 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sFf9Y-0000Lj-2w
 for intel-wired-lan@lists.osuosl.org; Fri, 07 Jun 2024 19:21:32 +0000
Date: Sat, 08 Jun 2024 03:21:06 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202406080305.Pk8VITxS-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717788097; x=1749324097;
 h=date:from:to:subject:message-id;
 bh=Dt1pqzlsfdXfrmoiViQASB+b3G/R/hqbec55c5cmiIk=;
 b=WdkRvh3P4FqPXxgbbg6uofYvUbvBWCJRlzj/T1PIJU8DNzDfQ/k89GzB
 Sd/aj8JV/U0BtlAioK8yFhX6xzKzkjc4kzLs1FW+pfGuKgmbRiVg5emKM
 WWCwABDmU7Uy/UHpDsbSb9jYad6v9yQXd+AOFKqsP1zJlB4C5gTKhwFK6
 arnSVclmSrTctu1KKIHGFabAZF0SCJExGjRVKO7SjX5I4WuVd3q56W9Oz
 NQBmEj1RrhlaMw+CIWk6IV6jv/lFBOWS8Y4gD/FTGvJsBFmhFI2HQIswn
 AxrLgKymZZ956r2m2ioHkToJneDADUgQVKHNW9EpfoEgjCnJDv9U/0R4w
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WdkRvh3P
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 5e978234c1dabfbf87ae0792aab46c35d846e442
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
branch HEAD: 5e978234c1dabfbf87ae0792aab46c35d846e442  ice: Fix VSI list rule with ICE_SW_LKUP_LAST type

elapsed time: 1447m

configs tested: 74
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                               allnoconfig   gcc  
arc                                 defconfig   gcc  
arm                               allnoconfig   clang
arm                                 defconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
csky                              allnoconfig   gcc  
csky                                defconfig   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
i386         buildonly-randconfig-001-20240607   clang
i386         buildonly-randconfig-002-20240607   clang
i386         buildonly-randconfig-003-20240607   clang
i386         buildonly-randconfig-004-20240607   clang
i386         buildonly-randconfig-005-20240607   clang
i386         buildonly-randconfig-006-20240607   clang
i386                  randconfig-011-20240607   clang
i386                  randconfig-013-20240607   clang
i386                  randconfig-014-20240607   clang
i386                  randconfig-015-20240607   clang
i386                  randconfig-016-20240607   clang
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
openrisc                            defconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                           allnoconfig   gcc  
riscv                             allnoconfig   gcc  
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
x86_64                                  kexec   clang
x86_64                          rhel-8.3-rust   clang
xtensa                            allnoconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
