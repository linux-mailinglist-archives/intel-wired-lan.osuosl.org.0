Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DA84E6B58D5
	for <lists+intel-wired-lan@lfdr.de>; Sat, 11 Mar 2023 07:02:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6A1B8417CB;
	Sat, 11 Mar 2023 06:02:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6A1B8417CB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678514577;
	bh=qu0ml7flezp1xU2P8jNJVIvxj8tSU97qJvHi6w52NVk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=TGH+2mpCfGjSi9XxCrAPm6YQyrQbS7ms1yO7vt1zUsuS36mpXdF8exPpy+icY0FTT
	 MR8QDIInutSWSj7fEF8XI92dGi33jtfsAhcTiGZPwC3MtZGG22VmDXDYeXC4bBloBH
	 2IHZmx84Ypa8aDdeb8gEGXXrHKI3SJRm+DQUzl+LxteYHwlYDaXFmmAKIHaaOyvafi
	 4pJI7hYUFE3rlQUdoFPe+OlYHHYVI3tyFNqeHvYaEsjpJxANLrFPDUpTLfU0H+dcwJ
	 A6igEeuYtvuOAyZ6uF8rtsqM2yF5ZF7wLhwPnuirVuYpLXgLbJwo+ZobcbtbRJk1YA
	 YUpWsjsCPKa6w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uTuiLBYVMRz2; Sat, 11 Mar 2023 06:02:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E93E9415FF;
	Sat, 11 Mar 2023 06:02:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E93E9415FF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1F74E1BF85D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Mar 2023 06:02:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EBA37415FF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Mar 2023 06:02:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EBA37415FF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PY7mtVl49F4q for <intel-wired-lan@lists.osuosl.org>;
 Sat, 11 Mar 2023 06:02:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C6AAA4160A
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C6AAA4160A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Mar 2023 06:02:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10645"; a="338437524"
X-IronPort-AV: E=Sophos;i="5.98,252,1673942400"; d="scan'208";a="338437524"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2023 22:02:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10645"; a="923935503"
X-IronPort-AV: E=Sophos;i="5.98,252,1673942400"; d="scan'208";a="923935503"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 10 Mar 2023 22:02:42 -0800
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pasJV-0004NR-2m;
 Sat, 11 Mar 2023 06:02:41 +0000
Date: Sat, 11 Mar 2023 14:02:30 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <640c1976.Lo2JSC9TzM6vM9Ye%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678514564; x=1710050564;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=JAdK3GdCwCOgQjwA8j1d9gL6mWtcbELPpFsNJyL0NgQ=;
 b=fOBI2jYr8xpUyMXlpeXfZ/KIQ2wNFpzRO4VacA3N/Yr0WurJYvjCTiwY
 /QPUuSbrFlaei9al5A7uf2U8Drx/j34+r+14+tAhYATinRxEvWBbBkIUD
 xr22di4P/oTpNfpTr0zqxFDbg259D6L25o8LzGC7Dcwa1fSTVY6zg6rLR
 PwzXWsxjzWJ1JajJfYMgVYzOAfK/RhBpjt8RfSNHuZ/ZljfpTmyvN4Y5T
 iCzcHrXLnrBfREwzifEJkJuhZ/jduam53GqhPK9YtCz7ldek+8fNdYiSQ
 CTO1Ec6f8fj026eOu0ez8bJnxsql3BKr6dxhWTaP7qdIncihboNo4l3zh
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fOBI2jYr
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 a1331535aeb41b08fe0c2c78af51885edc93615b
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git main
branch HEAD: a1331535aeb41b08fe0c2c78af51885edc93615b  net: restore alpha order to Ethernet devices in config

elapsed time: 1304m

configs tested: 96
configs skipped: 12

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r001-20230310   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r004-20230310   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r015-20230310   gcc  
arc                  randconfig-r043-20230310   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r004-20230310   clang
arm                                 defconfig   gcc  
arm                  randconfig-r046-20230310   clang
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r006-20230310   clang
arm64                               defconfig   gcc  
arm64                randconfig-r014-20230310   gcc  
arm64                randconfig-r021-20230310   gcc  
arm64                randconfig-r023-20230310   gcc  
arm64                randconfig-r032-20230310   clang
csky                                defconfig   gcc  
csky                 randconfig-r004-20230310   gcc  
csky                 randconfig-r005-20230310   gcc  
csky                 randconfig-r022-20230310   gcc  
hexagon              randconfig-r035-20230310   clang
hexagon              randconfig-r036-20230310   clang
hexagon              randconfig-r041-20230310   clang
hexagon              randconfig-r045-20230310   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r016-20230310   gcc  
ia64                 randconfig-r025-20230310   gcc  
ia64                 randconfig-r036-20230310   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r002-20230310   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r011-20230310   gcc  
loongarch            randconfig-r034-20230310   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r004-20230310   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r003-20230310   gcc  
microblaze           randconfig-r001-20230310   gcc  
microblaze           randconfig-r013-20230310   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r002-20230310   gcc  
mips                 randconfig-r025-20230310   clang
nios2                               defconfig   gcc  
nios2                randconfig-r003-20230310   gcc  
nios2                randconfig-r006-20230310   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r002-20230310   gcc  
parisc               randconfig-r012-20230310   gcc  
parisc               randconfig-r024-20230310   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r005-20230310   clang
powerpc              randconfig-r016-20230310   gcc  
powerpc              randconfig-r034-20230310   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r022-20230310   gcc  
riscv                randconfig-r042-20230310   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r002-20230310   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r026-20230310   gcc  
s390                 randconfig-r033-20230310   clang
s390                 randconfig-r044-20230310   gcc  
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r003-20230310   gcc  
sh                   randconfig-r001-20230310   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r011-20230310   gcc  
sparc                randconfig-r015-20230310   gcc  
sparc                randconfig-r021-20230310   gcc  
sparc64              randconfig-r032-20230310   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r013-20230310   gcc  
xtensa               randconfig-r024-20230310   gcc  
xtensa               randconfig-r035-20230310   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
