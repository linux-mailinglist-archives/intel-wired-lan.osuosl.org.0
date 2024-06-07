Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 209E4900C85
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Jun 2024 21:39:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C107761528;
	Fri,  7 Jun 2024 19:39:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id J-BMZLwlh2s2; Fri,  7 Jun 2024 19:39:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B51A260716
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717789182;
	bh=JK/V2IF+JC2piWjYZIsVtzjiyrvzM5WWH0dq4xvCwkY=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=feJVwFgshQNfOeTy9HMJmWy7XU7013Y0r+Ts1sAzIuZz5/jm8/cQg+VgnKW/68I/b
	 GR7qc52MeEFmlkB2hqRh9ttKBTYaTpmWpXVITceD20UwMSV2rWWRtKMxtCgH7Gr0nY
	 oG4Qzl4Xz4NKv9EW4S6Tc1g3x50D7/x5TRDNVsvDMwKi0wlSzgheZGqnOmlrh8D3Ss
	 WjkqQps1tO4I+O4kdKqsFdWlaD/qAQAguZqLxafR/yfUP0Junhaot0KNVBaql0QNFu
	 Rm187JIVa2U86rLBX+6THlA7NNugkeFTCKaznro8E3BjwA9wmD+OLAneg8naUag//3
	 uymgSdbUB1vUg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B51A260716;
	Fri,  7 Jun 2024 19:39:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7B27C1BF95D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jun 2024 19:39:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6784F606F9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jun 2024 19:39:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dQ9Q9h4BPFP3 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Jun 2024 19:39:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6CEE9606ED
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6CEE9606ED
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6CEE9606ED
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jun 2024 19:39:39 +0000 (UTC)
X-CSE-ConnectionGUID: qH5/eYtSSFmZdO1j2EjPZw==
X-CSE-MsgGUID: 9sJLuYioTbKPFIb6D+4zVg==
X-IronPort-AV: E=McAfee;i="6600,9927,11096"; a="14326354"
X-IronPort-AV: E=Sophos;i="6.08,221,1712646000"; d="scan'208";a="14326354"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2024 12:39:39 -0700
X-CSE-ConnectionGUID: 46WNmBZiT9acc+UVhKG7Yg==
X-CSE-MsgGUID: q8446EDOR2qrkCfy90O/sA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,221,1712646000"; d="scan'208";a="42852081"
Received: from lkp-server01.sh.intel.com (HELO 472b94a103a1) ([10.239.97.150])
 by fmviesa005.fm.intel.com with ESMTP; 07 Jun 2024 12:39:38 -0700
Received: from kbuild by 472b94a103a1 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sFfR1-0000Pl-2X
 for intel-wired-lan@lists.osuosl.org; Fri, 07 Jun 2024 19:39:35 +0000
Date: Sat, 08 Jun 2024 03:39:29 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202406080327.Ngmj1Gmg-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717789179; x=1749325179;
 h=date:from:to:subject:message-id;
 bh=IIkg/PaUyh2DVIWlB0ZZiyHni/LTLRt+Ct5JwmCzpqI=;
 b=b3j+wvpQVMVuOUN2/N9AcVpYiXMqhpzPdskRbygBRyk7Y6pND1+Crunz
 nFrozvl53znH6a7yhP7t+KLxkbDXJi8f7VYmAB3D5uUuNr06ljMHSrpDM
 po5w9h0U/FfMSxIXoQNrTfE8lGMI866qy845UUx5mhlxrprA41gnKh2MM
 IxREmbYz5qGmnvslKIE4zY6szoZMX3FuxA082GnES3CuwOHl/pEYmTgey
 6/5ux5GiV5NMK6eFdjAvapffzeUK+gjiEBPUwj+3XfofSH9ru3xS2pLkU
 SaRN/dVg+OEupTYmt1Zrm7TPfTokTFcAmlbRTjk6qPHsAzCI7Pi5AmmOJ
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=b3j+wvpQ
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD REGRESSION
 ace679d6a9e3623d89804105baaca54d4e5e9c49
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
branch HEAD: ace679d6a9e3623d89804105baaca54d4e5e9c49  ice: Fix VSI list rule with ICE_SW_LKUP_LAST type

Error/Warning reports:

https://lore.kernel.org/oe-kbuild-all/202406070705.6IjwhIMk-lkp@intel.com

Error/Warning: (recently discovered and may have been fixed)

drivers/net/ethernet/intel/ice/ice_virtchnl.c:3851:26: error: implicit declaration of function 'ice_ptp_read_src_clk_reg' [-Werror=implicit-function-declaration]

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
`-- arm-randconfig-004-20240607
    `-- drivers-net-ethernet-intel-ice-ice_virtchnl.c:error:implicit-declaration-of-function-ice_ptp_read_src_clk_reg

elapsed time: 1463m

configs tested: 79
configs skipped: 3

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
i386                  randconfig-001-20240607   gcc  
i386                  randconfig-002-20240607   gcc  
i386                  randconfig-003-20240607   gcc  
i386                  randconfig-004-20240607   gcc  
i386                  randconfig-005-20240607   gcc  
i386                  randconfig-006-20240607   gcc  
i386                  randconfig-011-20240607   clang
i386                  randconfig-012-20240607   gcc  
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
xtensa                            allnoconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
