Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 732D38A61DE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Apr 2024 05:51:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 437DD406FC;
	Tue, 16 Apr 2024 03:51:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id t2Qj0x7QVJxu; Tue, 16 Apr 2024 03:51:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0CD51406F1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713239497;
	bh=DIotfR03msfSD3CO9Bnw32B/Xya+u3Xpk8p8yEaxric=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=CxUYyYK29J2tjxp5l73xS/h8s5pdmeWFSX8BdqZY0ynCYIlyIFgLiwRu4pOWe+/0q
	 bM8g9c+vaxT8PTBCpmSYYaoaJyxMp2CK4vlCuK3W/OhgkppRWG/hXvJfjygaBaR8Bo
	 WcKCvj7iOOlhO3wVGJFi/18BfLIOfCHZOObfW2/PFITt/FYaXweLMicDIpE6erRTVl
	 gIZNBPX+B8nQCZc4TjErsLnevS0EtSufIEbOBipFIJAXu66fmY6Zp8kTtbzU35VhDx
	 BW64rO7mck5NNSSAXCXkG6FfZCnbMGIrgC2of+q+PRW0MJlAoh3XjBfSXRAjpScq2j
	 6ABLdkWx0+7yA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0CD51406F1;
	Tue, 16 Apr 2024 03:51:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0BDDC1BF487
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 03:51:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 065F260796
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 03:51:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1mjta7ziOcxL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Apr 2024 03:51:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D9665607FF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D9665607FF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D9665607FF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 03:51:29 +0000 (UTC)
X-CSE-ConnectionGUID: H0LXzko5SLmJzsqzpchUAw==
X-CSE-MsgGUID: Z/b9aOGISm+myN8A5vG5jQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11045"; a="11600398"
X-IronPort-AV: E=Sophos;i="6.07,204,1708416000"; d="scan'208";a="11600398"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 20:51:27 -0700
X-CSE-ConnectionGUID: /606kruYST2ZShYcz9BE0A==
X-CSE-MsgGUID: l13boIz9TT2Aaj2r7EJdMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,204,1708416000"; d="scan'208";a="53083498"
Received: from unknown (HELO 23c141fc0fd8) ([10.239.97.151])
 by orviesa002.jf.intel.com with ESMTP; 15 Apr 2024 20:51:27 -0700
Received: from kbuild by 23c141fc0fd8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rwZqu-0004vc-1C
 for intel-wired-lan@lists.osuosl.org; Tue, 16 Apr 2024 03:51:24 +0000
Date: Tue, 16 Apr 2024 11:51:15 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202404161112.JKRcVChL-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713239489; x=1744775489;
 h=date:from:to:subject:message-id;
 bh=0+PPrsBM2W4vDDYbMSqvk2j2Np2FkirSVzurbx14tRU=;
 b=jhEf0eK8/2nAe5EnrhqmlQFwXrazrWSlDa1gw33+S0WhELKpuO86KGnW
 nK54GFw/i29056TSIb+3FjaIU8YPmX7ww8Al0Axn/CTqf9y9yxWNZDb41
 yx4fC2JGDp5Gb8elKgtWBqo9xchPbqtnxqVSsZhv0AabOBoPfZQHd3Za+
 X6daOYMq5/9HSLxM5vcACXod0GaWcWmobWdTo4Av4azgv2qejlgsNEcIr
 GznlLTQE9hS7H09jTnEWVCxAKjC/CfVqKuNVicuxl70l0JvZx3muvbPKb
 TdDnO6wRE804VQ7Bt/bzGdyuKuBZPbpMRU71YVdWl6G1fx9yOBnPv858q
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jhEf0eK8
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 f09e2aecf1b59a6f9347be39d545cdcf30b61c83
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
branch HEAD: f09e2aecf1b59a6f9347be39d545cdcf30b61c83  ice: Fix checking for unsupported keys on non-tunnel device

elapsed time: 723m

configs tested: 144
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
arc                     nsimosci_hs_defconfig   gcc  
arc                   randconfig-001-20240416   gcc  
arc                   randconfig-002-20240416   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                        clps711x_defconfig   clang
arm                                 defconfig   clang
arm                         lpc32xx_defconfig   clang
arm                            mmp2_defconfig   gcc  
arm                   randconfig-001-20240416   clang
arm                   randconfig-002-20240416   clang
arm                   randconfig-003-20240416   gcc  
arm                   randconfig-004-20240416   clang
arm                        spear6xx_defconfig   clang
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240416   gcc  
arm64                 randconfig-002-20240416   clang
arm64                 randconfig-003-20240416   gcc  
arm64                 randconfig-004-20240416   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240416   gcc  
csky                  randconfig-002-20240416   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240416   clang
hexagon               randconfig-002-20240416   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240416   gcc  
i386         buildonly-randconfig-002-20240416   gcc  
i386         buildonly-randconfig-003-20240416   clang
i386         buildonly-randconfig-004-20240416   clang
i386         buildonly-randconfig-005-20240416   clang
i386         buildonly-randconfig-006-20240416   gcc  
i386                                defconfig   clang
i386                  randconfig-001-20240416   clang
i386                  randconfig-002-20240416   clang
i386                  randconfig-003-20240416   gcc  
i386                  randconfig-004-20240416   clang
i386                  randconfig-005-20240416   gcc  
i386                  randconfig-006-20240416   gcc  
i386                  randconfig-011-20240416   clang
i386                  randconfig-012-20240416   gcc  
i386                  randconfig-013-20240416   clang
i386                  randconfig-014-20240416   gcc  
i386                  randconfig-015-20240416   clang
i386                  randconfig-016-20240416   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240416   gcc  
loongarch             randconfig-002-20240416   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                          hp300_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                        bcm47xx_defconfig   clang
mips                     loongson1c_defconfig   gcc  
mips                           rs90_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240416   gcc  
nios2                 randconfig-002-20240416   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240416   gcc  
parisc                randconfig-002-20240416   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                   currituck_defconfig   clang
powerpc                   lite5200b_defconfig   clang
powerpc                 mpc8313_rdb_defconfig   gcc  
powerpc                 mpc832x_rdb_defconfig   gcc  
powerpc               randconfig-001-20240416   clang
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
sh                            hp6xx_defconfig   gcc  
sh                      rts7751r2d1_defconfig   gcc  
sh                             sh03_defconfig   gcc  
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
x86_64       buildonly-randconfig-001-20240416   gcc  
x86_64       buildonly-randconfig-002-20240416   gcc  
x86_64       buildonly-randconfig-003-20240416   gcc  
x86_64       buildonly-randconfig-004-20240416   clang
x86_64       buildonly-randconfig-005-20240416   gcc  
x86_64       buildonly-randconfig-006-20240416   clang
x86_64                              defconfig   gcc  
x86_64                          rhel-8.3-rust   clang
xtensa                            allnoconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
