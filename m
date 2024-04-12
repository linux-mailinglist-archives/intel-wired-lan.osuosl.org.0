Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CD6188A28A2
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Apr 2024 10:00:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4E0DA6136A;
	Fri, 12 Apr 2024 08:00:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5SbfYIaPbcNi; Fri, 12 Apr 2024 08:00:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4E7FE60B0F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712908846;
	bh=apsusxlWSsNOyeRS/Xey6MCsG2wm+3/xZg1hvrvaBUE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=YgGr8CI8IWtD+BpE1nBNWyVwekYEn+le6XFmEhKLf6CSOZt5UW4t7u5zZCkSYmICj
	 wEhgcwUafPtZ7cbVD0zQTbsTZfpu6mXKigKycimbYi+OrTMRxhICGpa4k/Y3N/A7/w
	 eq7gZUuIPuGJZ8KcUnEgSNroNbJDhJpeE8VaoFkt7nekVoPlNlSjHDFBvmFSq/JrKN
	 3wRClWpYLURh3bF0BsfLdvcsRkqQ3qCASx6gl8/FVde+kytifQ2VQt7J9rUdJ5rZQI
	 Xj8KOOpe/B0zKdLOSMhD+Ilts6ASUdzwpIEL15WwCfFfn4INbmHnhvaCAG8tbzUn3D
	 v5R+xrP4i6mvg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4E7FE60B0F;
	Fri, 12 Apr 2024 08:00:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BBD4E1BF316
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 08:00:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A4B7641BD5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 08:00:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nai3x_cOjpmq for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Apr 2024 08:00:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7732C41BFF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7732C41BFF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7732C41BFF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 08:00:38 +0000 (UTC)
X-CSE-ConnectionGUID: xDGPaV10SP2/SNomre3xEw==
X-CSE-MsgGUID: QJMjU1+LQfWINdnOf1LCaw==
X-IronPort-AV: E=McAfee;i="6600,9927,11041"; a="19067562"
X-IronPort-AV: E=Sophos;i="6.07,195,1708416000"; d="scan'208";a="19067562"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 01:00:38 -0700
X-CSE-ConnectionGUID: QwWbvTtaRweDLwvHQztR1A==
X-CSE-MsgGUID: gdcNYibOSYu5QnI6UndXIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,195,1708416000"; d="scan'208";a="21738561"
Received: from lkp-server01.sh.intel.com (HELO e61807b1d151) ([10.239.97.150])
 by orviesa008.jf.intel.com with ESMTP; 12 Apr 2024 01:00:37 -0700
Received: from kbuild by e61807b1d151 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rvBpq-0009Wz-1W
 for intel-wired-lan@lists.osuosl.org; Fri, 12 Apr 2024 08:00:34 +0000
Date: Fri, 12 Apr 2024 15:59:36 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202404121534.LbPEOeNL-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712908839; x=1744444839;
 h=date:from:to:subject:message-id;
 bh=aIUHmXzIHf81sqMlYjZAaA2oVDJLctPoZe6+95j9ih0=;
 b=oAgeLDBAHmGA9IHKCkTCh9NNINAyrFeVuFj/j5C1LujWscmFE0R41mXJ
 2vhMTAKq/rAuX0ZnVuF+MiqnEJF0UJR+MEglEWcXTzIOAG48bDBYOgXIB
 JWdyiYMLVvIOcHnJ/lZ1nWL0xy1hUIVYaGF3v3j/Vmcn9JR7LigNpKHU5
 5NdGJ/Fetl2oST5pUPgHKRbdAamZG4PP2B1w+E3yMwWyAz/10Q57/VNmi
 Ake+IlC5s8Q1TUTbrdWur6LJ488CauiaRSbWKqFYhz741Ca67khViz2ya
 wGsGlZrJPzMaH02AMFvTEg+yAQ2U/6AWj9bjEfP72KJ4UcOWdDTQmA40o
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=oAgeLDBA
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 4e1ad31ce3205d9400816e08cf14b7c96295d22e
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
branch HEAD: 4e1ad31ce3205d9400816e08cf14b7c96295d22e  Merge branch 'ena-driver-bug-fixes'

elapsed time: 1325m

configs tested: 139
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
arc                            hsdk_defconfig   gcc  
arm                              alldefconfig   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                        keystone_defconfig   gcc  
arm                       omap2plus_defconfig   gcc  
arm                           sama5_defconfig   gcc  
arm                           u8500_defconfig   gcc  
arm                         wpcm450_defconfig   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   clang
arm64                               defconfig   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240412   gcc  
i386         buildonly-randconfig-002-20240412   clang
i386         buildonly-randconfig-003-20240412   gcc  
i386         buildonly-randconfig-004-20240412   gcc  
i386         buildonly-randconfig-005-20240412   gcc  
i386         buildonly-randconfig-006-20240412   gcc  
i386                                defconfig   clang
i386                  randconfig-001-20240412   clang
i386                  randconfig-002-20240412   gcc  
i386                  randconfig-003-20240412   clang
i386                  randconfig-004-20240412   clang
i386                  randconfig-005-20240412   clang
i386                  randconfig-006-20240412   gcc  
i386                  randconfig-011-20240412   clang
i386                  randconfig-012-20240412   gcc  
i386                  randconfig-013-20240412   clang
i386                  randconfig-014-20240412   gcc  
i386                  randconfig-015-20240412   gcc  
i386                  randconfig-016-20240412   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                        stmark2_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                     cu1000-neo_defconfig   gcc  
mips                  decstation_64_defconfig   gcc  
mips                           ip22_defconfig   gcc  
mips                      maltasmvp_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                      arches_defconfig   gcc  
powerpc                      ep88xc_defconfig   gcc  
powerpc                     powernv_defconfig   gcc  
powerpc                     tqm5200_defconfig   gcc  
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
sh                        edosk7705_defconfig   gcc  
sh                          rsk7203_defconfig   gcc  
sh                          rsk7264_defconfig   gcc  
sh                           se7343_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                               defconfig   gcc  
sparc                       sparc32_defconfig   gcc  
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
x86_64       buildonly-randconfig-004-20240412   clang
x86_64       buildonly-randconfig-005-20240412   clang
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20240412   clang
x86_64                randconfig-004-20240412   clang
x86_64                randconfig-005-20240412   clang
x86_64                randconfig-006-20240412   clang
x86_64                randconfig-011-20240412   clang
x86_64                randconfig-013-20240412   clang
x86_64                randconfig-014-20240412   clang
x86_64                randconfig-015-20240412   clang
x86_64                randconfig-072-20240412   clang
x86_64                randconfig-073-20240412   clang
x86_64                randconfig-076-20240412   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                          iss_defconfig   gcc  
xtensa                  nommu_kc705_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
