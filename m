Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id EB47B8962EF
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Apr 2024 05:28:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0BF8781EB7;
	Wed,  3 Apr 2024 03:28:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kXRk6rtmin7k; Wed,  3 Apr 2024 03:28:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CF8E181EC2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712114916;
	bh=IXffq6KnnvUcPYDfFs2tznMS2MXcYKUmLu9IGgknjUQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=FhvH5J+vLf6CTkMl0g3QkgmiNiLzMTnuQhVo1pR+90fEcrtofyQkyo7dyH2doDIGS
	 6LZbK0ZMH35lacZPG0m1TuumE8b0QN384QD6UVDxH+fWfKt10nxTGYNbqF0okKKSeW
	 PQDRMpjYKf32t01nogC/+gq4ewusZfVvznM+xL1opEFmwiKAPDwf0oXAM1vo53OIBO
	 bo0TuhKTo8g7cFyIn7cjYqgsqd0MsXNTE+OVkyS0rO4k4cfKLspQc1VGosmyYEDabn
	 BMEXTz4NwHSdEJpSgB0VEkllXMkx3gtmh5+ar7F8+YQrOUmhzS7X+4yBS6pg6gY8vP
	 pEx3HgyWzIlbw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CF8E181EC2;
	Wed,  3 Apr 2024 03:28:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B313E1BF401
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 03:28:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9F91D81EAF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 03:28:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dGJ0XrjQ-sHA for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Apr 2024 03:28:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9BCFC81EAE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9BCFC81EAE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9BCFC81EAE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 03:28:32 +0000 (UTC)
X-CSE-ConnectionGUID: wEfyU5DdQjKEOoZivznkvg==
X-CSE-MsgGUID: iaBsQfItRPinBtzQQZ27YA==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="18687902"
X-IronPort-AV: E=Sophos;i="6.07,176,1708416000"; d="scan'208";a="18687902"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 20:28:31 -0700
X-CSE-ConnectionGUID: HAEVizCGSYmwWYuJSF9vOA==
X-CSE-MsgGUID: UXMPi1dARj6ZdtSEv6iULw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,176,1708416000"; d="scan'208";a="18372686"
Received: from lkp-server02.sh.intel.com (HELO 90ee3aa53dbd) ([10.239.97.151])
 by fmviesa007.fm.intel.com with ESMTP; 02 Apr 2024 20:28:31 -0700
Received: from kbuild by 90ee3aa53dbd with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rrrIZ-0001oF-11
 for intel-wired-lan@lists.osuosl.org; Wed, 03 Apr 2024 03:28:27 +0000
Date: Wed, 03 Apr 2024 11:27:55 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202404031154.v03Wx247-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712114913; x=1743650913;
 h=date:from:to:subject:message-id;
 bh=vfOd1SJkxpxASMsF0OZnLEMZ7WEdps3qDybWjR1KjYk=;
 b=mVHEvwBkCJHQ1qi+eG4D42IcYGuZBCl5pEPF2XIhtqGGRqKa4JM4HpMd
 ulLipZ5spCErah/c3cq4ECFhHLQqbJN8juTciAdX89WXV7eNZwbGYVmuA
 jdr6htGcNUZJZtnDAEfJ7x3ewH7MxDdMBn55PymbH4E2dOVw7bhNz7LVi
 rt/b2lHuY6ol3lHRa2dRCZMmMmcc+LuLmnkoB7EJ74b1nr+hkrw9DOJ1I
 MwLERpUfoy8qc/3yo5NQ7TSexWALL9JbMiLlItoiuHlz37lMbYpZrQUxv
 ZBRNAiYHd4lNebHWNaHUNp8ZmtQpiJQTpt+4P10KvLQdpETk0GVinTPN3
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mVHEvwBk
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 ea2a1cfc3b2019bdea6324acd3c03606b60d71ad
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
branch HEAD: ea2a1cfc3b2019bdea6324acd3c03606b60d71ad  i40e: Fix VF MAC filter removal

elapsed time: 1322m

configs tested: 176
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
arc                 nsimosci_hs_smp_defconfig   gcc  
arc                   randconfig-001-20240403   gcc  
arc                   randconfig-002-20240403   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                   randconfig-001-20240403   gcc  
arm                   randconfig-002-20240403   gcc  
arm                   randconfig-003-20240403   clang
arm                   randconfig-004-20240403   gcc  
arm                         s5pv210_defconfig   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   clang
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240403   clang
arm64                 randconfig-002-20240403   clang
arm64                 randconfig-003-20240403   gcc  
arm64                 randconfig-004-20240403   clang
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240403   gcc  
csky                  randconfig-002-20240403   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240403   clang
hexagon               randconfig-002-20240403   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240403   gcc  
i386         buildonly-randconfig-002-20240403   clang
i386         buildonly-randconfig-003-20240403   clang
i386         buildonly-randconfig-004-20240403   clang
i386         buildonly-randconfig-005-20240403   gcc  
i386         buildonly-randconfig-006-20240403   clang
i386                                defconfig   clang
i386                  randconfig-001-20240403   gcc  
i386                  randconfig-002-20240403   clang
i386                  randconfig-003-20240403   gcc  
i386                  randconfig-004-20240403   gcc  
i386                  randconfig-005-20240403   clang
i386                  randconfig-006-20240403   gcc  
i386                  randconfig-011-20240403   gcc  
i386                  randconfig-012-20240403   clang
i386                  randconfig-013-20240403   gcc  
i386                  randconfig-014-20240403   clang
i386                  randconfig-015-20240403   gcc  
i386                  randconfig-016-20240403   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240403   gcc  
loongarch             randconfig-002-20240403   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                       bvme6000_defconfig   gcc  
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
nios2                 randconfig-001-20240403   gcc  
nios2                 randconfig-002-20240403   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
openrisc                    or1ksim_defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240403   gcc  
parisc                randconfig-002-20240403   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                     ep8248e_defconfig   gcc  
powerpc                     kmeter1_defconfig   gcc  
powerpc               randconfig-001-20240403   gcc  
powerpc               randconfig-002-20240403   gcc  
powerpc               randconfig-003-20240403   clang
powerpc64             randconfig-001-20240403   gcc  
powerpc64             randconfig-002-20240403   clang
powerpc64             randconfig-003-20240403   gcc  
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
riscv                 randconfig-001-20240403   clang
riscv                 randconfig-002-20240403   clang
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240403   clang
s390                  randconfig-002-20240403   clang
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                 kfr2r09-romimage_defconfig   gcc  
sh                          kfr2r09_defconfig   gcc  
sh                          lboxre2_defconfig   gcc  
sh                    randconfig-001-20240403   gcc  
sh                    randconfig-002-20240403   gcc  
sh                           se7724_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240403   gcc  
sparc64               randconfig-002-20240403   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                    randconfig-001-20240403   gcc  
um                    randconfig-002-20240403   clang
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240403   gcc  
x86_64       buildonly-randconfig-002-20240403   gcc  
x86_64       buildonly-randconfig-003-20240403   clang
x86_64       buildonly-randconfig-004-20240403   gcc  
x86_64       buildonly-randconfig-005-20240403   clang
x86_64       buildonly-randconfig-006-20240403   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20240403   gcc  
x86_64                randconfig-002-20240403   clang
x86_64                randconfig-003-20240403   gcc  
x86_64                randconfig-004-20240403   gcc  
x86_64                randconfig-005-20240403   gcc  
x86_64                randconfig-006-20240403   clang
x86_64                randconfig-011-20240403   gcc  
x86_64                randconfig-012-20240403   gcc  
x86_64                randconfig-013-20240403   gcc  
x86_64                randconfig-014-20240403   gcc  
x86_64                randconfig-015-20240403   gcc  
x86_64                randconfig-016-20240403   gcc  
x86_64                randconfig-071-20240403   clang
x86_64                randconfig-072-20240403   gcc  
x86_64                randconfig-073-20240403   clang
x86_64                randconfig-074-20240403   gcc  
x86_64                randconfig-075-20240403   gcc  
x86_64                randconfig-076-20240403   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                  audio_kc705_defconfig   gcc  
xtensa                randconfig-001-20240403   gcc  
xtensa                randconfig-002-20240403   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
