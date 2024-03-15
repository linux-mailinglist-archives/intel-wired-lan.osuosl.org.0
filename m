Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EF9D187CABD
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Mar 2024 10:31:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 43722606B6;
	Fri, 15 Mar 2024 09:31:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7kWpXkA5VDZQ; Fri, 15 Mar 2024 09:31:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 58EBE606EF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710495081;
	bh=J9KJBhwrt9KaUIDj75PrHZJ3jyrOFHqMR1mGEmFpW0Q=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=73rpjdcj5WrBmdPSjiHVATgsxJyonK9N0gGgKauT7NJ8n1BbT1nUOJfMNWYL6OwP2
	 fqzL5ENMUwTSVztro49F5xeudbg4iFQ2jVzJ9+nLqDHNAqF03MeKhMiO/F0N9iGobR
	 vIr508S7iO4dU2xL8gW5bYnl35mO5MWqXA1FnkKYV7/0L/ndeOAT2IoJ8NgjiST3aB
	 wr35wGbms61HsBh6GjyeXpXpFENTt9MppZHtX41gxbrs8h9emJckOtKwSRHDpzqmqz
	 r/eZNYBXdOMcfPI07aiSBqmbxX/WwvxBkQOKhW3Q9UiH+DwwCbB36HH/5wntoVHgY9
	 7OJzZUOZUwCfA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 58EBE606EF;
	Fri, 15 Mar 2024 09:31:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EC6841BF3F2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Mar 2024 09:31:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D778040187
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Mar 2024 09:31:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W6UGoJHWGTnc for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Mar 2024 09:31:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CBEEB400CE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CBEEB400CE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CBEEB400CE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Mar 2024 09:31:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11013"; a="16000171"
X-IronPort-AV: E=Sophos;i="6.07,128,1708416000"; d="scan'208";a="16000171"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2024 02:31:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,128,1708416000"; d="scan'208";a="12531899"
Received: from lkp-server01.sh.intel.com (HELO b21307750695) ([10.239.97.150])
 by fmviesa007.fm.intel.com with ESMTP; 15 Mar 2024 02:31:03 -0700
Received: from kbuild by b21307750695 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rl3u1-000EId-0v
 for intel-wired-lan@lists.osuosl.org; Fri, 15 Mar 2024 09:31:01 +0000
Date: Fri, 15 Mar 2024 17:30:44 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202403151741.LYqm0LFc-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710495078; x=1742031078;
 h=date:from:to:subject:message-id;
 bh=GnyAj/zmxYGMAdgJ4o5xhuEl5xhBt3B1S1Zs5A9MYMM=;
 b=K0UUBM6SNtdGmyhG3l92hcbJAJEgS3HnQ/UAoAq7vfYW2YT+i+SIpGg5
 43nhuyqE3DVkNdaNAC3J/n932B07BME+ePBfN9B2yhcPnT5AFOo5PG7+8
 QSMkMZTcDmljwz2GwmMQBXUamHHZdUoTUSWn1p6MEQ1y7uPKsVM6IoRVh
 Fy54DddMuyPVwrCjniAsoGUgHpOXbTg6zs7PrvyhHy/E62LVK1eO3xg6T
 cgcNQf9JQUO8wp5M5gr43CYqbi+aC8xkjox+ljV93FouCJtGMbcUFL+Ul
 cDdiQGGhsXfhK+TeYaCffYTSBVkhdZg5dwAI2HiK0ersygK4eIM4v5AGC
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=K0UUBM6S
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 e30cef001da259e8df354b813015d0e5acc08740
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 200GbE
branch HEAD: e30cef001da259e8df354b813015d0e5acc08740  net: txgbe: fix clk_name exceed MAX_DEV_ID limits

elapsed time: 1168m

configs tested: 177
configs skipped: 4

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
arc                        nsim_700_defconfig   gcc  
arc                   randconfig-001-20240315   gcc  
arc                   randconfig-002-20240315   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                     am200epdkit_defconfig   gcc  
arm                        clps711x_defconfig   clang
arm                                 defconfig   clang
arm                          ixp4xx_defconfig   gcc  
arm                         lpc18xx_defconfig   clang
arm                        neponset_defconfig   gcc  
arm                   randconfig-001-20240315   clang
arm                   randconfig-002-20240315   gcc  
arm                   randconfig-003-20240315   gcc  
arm                   randconfig-004-20240315   gcc  
arm                         socfpga_defconfig   gcc  
arm                           sunxi_defconfig   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240315   gcc  
arm64                 randconfig-002-20240315   gcc  
arm64                 randconfig-003-20240315   gcc  
arm64                 randconfig-004-20240315   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240315   gcc  
csky                  randconfig-002-20240315   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240315   clang
hexagon               randconfig-002-20240315   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240315   clang
i386         buildonly-randconfig-002-20240315   clang
i386         buildonly-randconfig-003-20240315   gcc  
i386         buildonly-randconfig-004-20240315   clang
i386         buildonly-randconfig-005-20240315   gcc  
i386         buildonly-randconfig-006-20240315   gcc  
i386                                defconfig   clang
i386                  randconfig-001-20240315   gcc  
i386                  randconfig-002-20240315   clang
i386                  randconfig-003-20240315   clang
i386                  randconfig-004-20240315   clang
i386                  randconfig-005-20240315   gcc  
i386                  randconfig-006-20240315   clang
i386                  randconfig-011-20240315   clang
i386                  randconfig-012-20240315   gcc  
i386                  randconfig-013-20240315   gcc  
i386                  randconfig-014-20240315   clang
i386                  randconfig-015-20240315   gcc  
i386                  randconfig-016-20240315   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240315   gcc  
loongarch             randconfig-002-20240315   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                         amcore_defconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
microblaze                      mmu_defconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                           ip28_defconfig   gcc  
mips                      loongson3_defconfig   gcc  
mips                          rb532_defconfig   clang
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240315   gcc  
nios2                 randconfig-002-20240315   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
openrisc                  or1klitex_defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                generic-32bit_defconfig   gcc  
parisc                randconfig-001-20240315   gcc  
parisc                randconfig-002-20240315   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                    amigaone_defconfig   gcc  
powerpc                      cm5200_defconfig   clang
powerpc                       eiger_defconfig   clang
powerpc                        fsp2_defconfig   gcc  
powerpc                     mpc5200_defconfig   clang
powerpc                 mpc8313_rdb_defconfig   gcc  
powerpc                         ps3_defconfig   gcc  
powerpc               randconfig-001-20240315   clang
powerpc               randconfig-002-20240315   gcc  
powerpc               randconfig-003-20240315   clang
powerpc                      walnut_defconfig   gcc  
powerpc64             randconfig-001-20240315   clang
powerpc64             randconfig-002-20240315   gcc  
powerpc64             randconfig-003-20240315   gcc  
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
riscv                 randconfig-001-20240315   clang
riscv                 randconfig-002-20240315   clang
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240315   gcc  
s390                  randconfig-002-20240315   clang
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                    randconfig-001-20240315   gcc  
sh                    randconfig-002-20240315   gcc  
sh                             shx3_defconfig   gcc  
sh                              ul2_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240315   gcc  
sparc64               randconfig-002-20240315   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                    randconfig-001-20240315   gcc  
um                    randconfig-002-20240315   clang
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-005-20240315   clang
x86_64       buildonly-randconfig-006-20240315   clang
x86_64                              defconfig   gcc  
x86_64                randconfig-002-20240315   clang
x86_64                randconfig-004-20240315   clang
x86_64                randconfig-011-20240315   clang
x86_64                randconfig-015-20240315   clang
x86_64                randconfig-016-20240315   clang
x86_64                randconfig-071-20240315   clang
x86_64                randconfig-072-20240315   clang
x86_64                randconfig-075-20240315   clang
x86_64                randconfig-076-20240315   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                  cadence_csp_defconfig   gcc  
xtensa                randconfig-001-20240315   gcc  
xtensa                randconfig-002-20240315   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
