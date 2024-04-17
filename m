Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 47F958A7DF9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Apr 2024 10:19:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5BB5240474;
	Wed, 17 Apr 2024 08:19:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bKhChFicjnpg; Wed, 17 Apr 2024 08:19:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A1E1B4047D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713341942;
	bh=pTZNq/oaFLtJFzTYtuIUxRPgtzYxP8Qu8d3be7WHtlM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=4f6ZzwrTToYNySCyS/zG5Lv8/mwN6eYfouuNhnq6QiJmLSOAurPfDsgaj7u7/37on
	 TWMFmd+IyDJfciUEK7cX8U5zEwCz4Dl59xbV+euG/0sjsJFbNqXb7BbFwd2o93QRU5
	 oBc7+jhhAmYryaw0KVaVICGBR/wM0Sa53IGoDcdzKDLO4s7HSLKQTZZpUvJmx+tIBu
	 nPHIdEjPpBBbFI/2GmewUNt2HSimUa5SShoNOn9ItEnR/+gaZeXDH6apyAKNnNfXbR
	 vFDNiYz2Tc1TXJRQ5hTwsoc3ihV43gvEwAmhvxsHEvuVQahYdCuQo3V9cucbbZsX/Q
	 IDpmhelJVNZxA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A1E1B4047D;
	Wed, 17 Apr 2024 08:19:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A260D1BF341
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Apr 2024 08:19:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8BAE64043D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Apr 2024 08:19:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hfZktgAHy_dj for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Apr 2024 08:18:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E1A8F4043A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E1A8F4043A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E1A8F4043A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Apr 2024 08:18:58 +0000 (UTC)
X-CSE-ConnectionGUID: 3q/05v3uTO+jwJTCyGZyZg==
X-CSE-MsgGUID: tfDHsXj3TASFd5+VCcpbDA==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="8680133"
X-IronPort-AV: E=Sophos;i="6.07,208,1708416000"; 
   d="scan'208";a="8680133"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 01:18:57 -0700
X-CSE-ConnectionGUID: kMpb2mh1TfyTQVsU/W3MUQ==
X-CSE-MsgGUID: rOOMpQtnTnyWW/qX1wbBag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,208,1708416000"; d="scan'208";a="22617566"
Received: from unknown (HELO 23c141fc0fd8) ([10.239.97.151])
 by fmviesa010.fm.intel.com with ESMTP; 17 Apr 2024 01:18:56 -0700
Received: from kbuild by 23c141fc0fd8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rx0VJ-0006Hy-2P
 for intel-wired-lan@lists.osuosl.org; Wed, 17 Apr 2024 08:18:53 +0000
Date: Wed, 17 Apr 2024 16:18:23 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202404171620.lgLCwCRJ-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713341939; x=1744877939;
 h=date:from:to:subject:message-id;
 bh=Vdcqx7MVpBpNJa7YzVMgRSOm0yAXg5IerGRQ4QDGm+k=;
 b=FxYCF8EfI7jKu2A033qWzUALF6b1io2Q4H2gjlEBj/fgMVUHYYijEBFZ
 4UehIvmlv4THNUlXW69JusfzOafrW5m78FAHHvpbQ0OBNvREzEMYfPWKW
 rWec1cmwN605bCC5h6NIlMZfYrDW7QxqV8DjTbWzTQ3M4s0NoH7M71/o0
 UwPWCT9L+QL5aggjUf/UBtVmKctUCu5Qw8oDQiwZU2RP4EFewjGcfHWkG
 dYv5r0q4aa/KviLLKBy2nP2lZ3CWw2OqQ2cofAo1JDw08XvUBVA3dj97t
 M/zq2lKFYcU4IAHyKgo4PQ1MZAk7Yvb5SeJzchVNcrR9p1TwqcMRnKl62
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FxYCF8Ef
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 e226eade8f50cda14a353f13777709797c21abf8
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
branch HEAD: e226eade8f50cda14a353f13777709797c21abf8  Merge branch 'net-stmmac-fix-mac-capabilities-procedure'

elapsed time: 1107m

configs tested: 127
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
arc                   randconfig-001-20240417   gcc  
arc                   randconfig-002-20240417   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                   randconfig-004-20240417   gcc  
arm64                            alldefconfig   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   clang
arm64                               defconfig   gcc  
arm64                 randconfig-003-20240417   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240417   gcc  
csky                  randconfig-002-20240417   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240417   clang
i386         buildonly-randconfig-003-20240417   clang
i386                                defconfig   clang
i386                  randconfig-001-20240417   clang
i386                  randconfig-004-20240417   clang
i386                  randconfig-005-20240417   clang
i386                  randconfig-006-20240417   clang
i386                  randconfig-013-20240417   clang
i386                  randconfig-016-20240417   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240417   gcc  
loongarch             randconfig-002-20240417   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                       m5249evb_defconfig   gcc  
m68k                        m5407c3_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
microblaze                      mmu_defconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                      maltasmvp_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240417   gcc  
nios2                 randconfig-002-20240417   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240417   gcc  
parisc                randconfig-002-20240417   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                     kmeter1_defconfig   gcc  
powerpc                     ksi8560_defconfig   gcc  
powerpc               randconfig-001-20240417   gcc  
powerpc               randconfig-002-20240417   gcc  
powerpc                  storcenter_defconfig   gcc  
powerpc                     tqm5200_defconfig   gcc  
powerpc64             randconfig-002-20240417   gcc  
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240417   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                          landisk_defconfig   gcc  
sh                    randconfig-001-20240417   gcc  
sh                    randconfig-002-20240417   gcc  
sh                           se7721_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240417   gcc  
sparc64               randconfig-002-20240417   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                    randconfig-002-20240417   gcc  
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64                              defconfig   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                randconfig-001-20240417   gcc  
xtensa                randconfig-002-20240417   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
