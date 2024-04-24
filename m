Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4700F8B112D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Apr 2024 19:36:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7F2F660C34;
	Wed, 24 Apr 2024 17:36:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ttIgxFTsWmi4; Wed, 24 Apr 2024 17:36:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4327C60D51
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713980190;
	bh=pACrpBQWPg9huyfV45Z9cjkqNaSF2bUgxUynVqfrb0c=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=tYHQQIi1RqAJpIBhvXGzexWzPGf5qR1YZSTg0dJSs3yuNhEO83Qvc8GB1ZGtz9XhS
	 CLD+3BKouWsw7SBwEGYq4Pfiuw7XvfZ+Yk063j+PLnZhCGdouhQYv4qs4+NSf3BHKC
	 Z2/sdiE1QShSQ/a+0i+L12rE8lEL/vi/7lhnZ49Lf7v5f5/ZJFLbITNL9CQxpcnEAN
	 ZLU/3t489gMIX9i7OSaweJXXwGl1dhjwW3BuDpQGlprSML7gmexDv+Lm/CRJUv8rbN
	 HKzJcFNTKXrYTvo1ws3Vja2OEYhi/MQlBj87K+34EtEBv+zilvTnn058kXKqjcOS/W
	 eADldBBcWhnOg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4327C60D51;
	Wed, 24 Apr 2024 17:36:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 69EA01BF86C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 17:36:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 542984091F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 17:36:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A6nnhNQhAlfV for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Apr 2024 17:36:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0F63B408DF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0F63B408DF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0F63B408DF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 17:36:26 +0000 (UTC)
X-CSE-ConnectionGUID: 9glH2OyNQiyMsJKoHMbT+w==
X-CSE-MsgGUID: JTtUXy84S8++i+AenUuIIQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11054"; a="9499010"
X-IronPort-AV: E=Sophos;i="6.07,226,1708416000"; 
   d="scan'208";a="9499010"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2024 10:36:26 -0700
X-CSE-ConnectionGUID: PZTG3ssZRGGjUWLoJaIM7g==
X-CSE-MsgGUID: ZhoaEdPASlCLZtYisU5sVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,226,1708416000"; d="scan'208";a="55740840"
Received: from lkp-server01.sh.intel.com (HELO e434dd42e5a1) ([10.239.97.150])
 by orviesa002.jf.intel.com with ESMTP; 24 Apr 2024 10:36:25 -0700
Received: from kbuild by e434dd42e5a1 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rzgXe-0001VA-2d
 for intel-wired-lan@lists.osuosl.org; Wed, 24 Apr 2024 17:36:22 +0000
Date: Thu, 25 Apr 2024 01:36:19 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202404250117.JDmr4mNz-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713980187; x=1745516187;
 h=date:from:to:subject:message-id;
 bh=wE/0xiqaJfGGp/xX5lWcYlc2NztH6Vk8dnXm49olFRI=;
 b=IeSv3rteBoWpzf/9gHex0bOeQh045DqXtcl54NzHnKAR9Sok8M3YfyDU
 76vaJuvgZCOhqkRqHbzE7HnJrK5/4YF1OCRwJ9F04h/o0F6jwh0gcRywD
 Z3auF7uKidMX6CkNHzcu6++b+zqPvbh5bA/uAJY39l/ViHzGb6LMKKoZf
 EAmD8AdKB+GAVVY6RDI+fstFI5l8xX8yJrGdboxb//7GSDoyLVE+aWEa6
 BaRBPn5YVHnR7tZVOOhH/XFnU/079WhzXd2UwMPuoA4SZIClbR1ZuUODW
 UerO+q2kO80DRb4sUBzDwe4duaT19yk3BSrDL5DMiRYmzPTmI0irMczUL
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IeSv3rte
Subject: [Intel-wired-lan] [tnguy-next-queue:40GbE] BUILD SUCCESS
 c5662d7ed0ea0b9655b8ae3221ae1725c5ff951e
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 40GbE
branch HEAD: c5662d7ed0ea0b9655b8ae3221ae1725c5ff951e  MAINTAINERS: add entry for libeth and libie

elapsed time: 1214m

configs tested: 150
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
arc                   randconfig-001-20240424   gcc  
arc                   randconfig-002-20240424   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                          pxa910_defconfig   gcc  
arm                   randconfig-001-20240424   gcc  
arm                   randconfig-002-20240424   gcc  
arm                   randconfig-003-20240424   gcc  
arm                   randconfig-004-20240424   clang
arm                       versatile_defconfig   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240424   clang
arm64                 randconfig-002-20240424   gcc  
arm64                 randconfig-003-20240424   gcc  
arm64                 randconfig-004-20240424   clang
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240424   gcc  
csky                  randconfig-002-20240424   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240424   clang
hexagon               randconfig-002-20240424   clang
i386                             alldefconfig   gcc  
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240424   gcc  
i386         buildonly-randconfig-002-20240424   gcc  
i386         buildonly-randconfig-003-20240424   gcc  
i386         buildonly-randconfig-004-20240424   gcc  
i386         buildonly-randconfig-005-20240424   gcc  
i386         buildonly-randconfig-006-20240424   gcc  
i386                                defconfig   clang
i386                  randconfig-001-20240424   gcc  
i386                  randconfig-002-20240424   gcc  
i386                  randconfig-003-20240424   gcc  
i386                  randconfig-004-20240424   clang
i386                  randconfig-005-20240424   gcc  
i386                  randconfig-006-20240424   gcc  
i386                  randconfig-011-20240424   clang
i386                  randconfig-012-20240424   gcc  
i386                  randconfig-013-20240424   clang
i386                  randconfig-014-20240424   clang
i386                  randconfig-015-20240424   clang
i386                  randconfig-016-20240424   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240424   gcc  
loongarch             randconfig-002-20240424   gcc  
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
mips                       bmips_be_defconfig   gcc  
mips                      malta_kvm_defconfig   gcc  
mips                           rs90_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240424   gcc  
nios2                 randconfig-002-20240424   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240424   gcc  
parisc                randconfig-002-20240424   gcc  
parisc64                            defconfig   gcc  
powerpc                    adder875_defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                     kmeter1_defconfig   gcc  
powerpc               randconfig-001-20240424   clang
powerpc               randconfig-002-20240424   gcc  
powerpc               randconfig-003-20240424   gcc  
powerpc64             randconfig-001-20240424   gcc  
powerpc64             randconfig-002-20240424   gcc  
powerpc64             randconfig-003-20240424   gcc  
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
riscv             nommu_k210_sdcard_defconfig   gcc  
riscv                 randconfig-001-20240424   gcc  
riscv                 randconfig-002-20240424   clang
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240424   gcc  
s390                  randconfig-002-20240424   clang
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                    randconfig-001-20240424   gcc  
sh                    randconfig-002-20240424   gcc  
sh                        sh7785lcr_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240424   gcc  
sparc64               randconfig-002-20240424   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                    randconfig-001-20240424   gcc  
um                    randconfig-002-20240424   clang
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64                              defconfig   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                randconfig-001-20240424   gcc  
xtensa                randconfig-002-20240424   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
