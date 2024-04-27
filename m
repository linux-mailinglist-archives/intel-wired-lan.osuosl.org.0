Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 262268B4773
	for <lists+intel-wired-lan@lfdr.de>; Sat, 27 Apr 2024 20:42:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B0A5A606E5;
	Sat, 27 Apr 2024 18:42:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3v_kBcuX1yuf; Sat, 27 Apr 2024 18:42:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 815CB6069E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714243373;
	bh=MlEACuBBXntUaRgTFZNsIraeCWyQv2x74HseVq05t0E=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=cQFHfcTZoRy354y5phtbcFhbBCiTDiLIdyjMjNj2nA4hCiyXrKQEFTDE9Q1uhXh5f
	 xUyHxpgIOidbSu+F1AR03SZm1CmahuwjyqaPtE0pOG8c0DOXNlGT5eHnI0GIPaPBq4
	 dJVFq+ofnNU2+vm7p+0rSq0rfLk2auTC+v2DfTL199yXcCk16eDbDXqjgiUsDT/vfk
	 3Vf+Fkz1MiZfX8AxbXf63oopjd/6aud1JzuntCeMPaodPfsES9b7ycO9k6omcZQjeW
	 jk4FYoE32DIvs+Ml6QA/4AW8wWm7YuJui23KbdanpsFIafbQLL4AXZ1wC8jTSd+KlE
	 fANTn8u2lWyHQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 815CB6069E;
	Sat, 27 Apr 2024 18:42:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 312E71BF3C1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Apr 2024 18:42:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 26D82605A7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Apr 2024 18:42:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Zg5xGqd5-mLL for <intel-wired-lan@lists.osuosl.org>;
 Sat, 27 Apr 2024 18:42:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0C26C60008
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0C26C60008
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0C26C60008
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Apr 2024 18:42:50 +0000 (UTC)
X-CSE-ConnectionGUID: 85rPx2xmQii8gL+VhH/4sg==
X-CSE-MsgGUID: l7VMa2KOTZS0BjIgOJs/pw==
X-IronPort-AV: E=McAfee;i="6600,9927,11057"; a="10066087"
X-IronPort-AV: E=Sophos;i="6.07,236,1708416000"; d="scan'208";a="10066087"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2024 11:42:50 -0700
X-CSE-ConnectionGUID: XAr64UTtS1OqkJZaYecrew==
X-CSE-MsgGUID: AZYhuhiZRh+ucyQfXnu0vA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,236,1708416000"; d="scan'208";a="63190869"
Received: from lkp-server01.sh.intel.com (HELO e434dd42e5a1) ([10.239.97.150])
 by orviesa001.jf.intel.com with ESMTP; 27 Apr 2024 11:42:49 -0700
Received: from kbuild by e434dd42e5a1 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1s0n0Y-0005Oe-26
 for intel-wired-lan@lists.osuosl.org; Sat, 27 Apr 2024 18:42:46 +0000
Date: Sun, 28 Apr 2024 02:42:38 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202404280235.kgG5fSSh-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714243371; x=1745779371;
 h=date:from:to:subject:message-id;
 bh=4dbuOGEETojwV6JURnCtgcpNxlAXw9Z3PDEVR7lU/1w=;
 b=YRFLlIlBRFXHWEoQmXOl+57B+z98JF46Qlu8aSQA7ZahmoeOxczF8zff
 0mle7aw9a2irnBj48sMflrrQ0A9A6UBxkshmA8HDyJcwajDsKggND+rjT
 aTb/M4gnzYIRTtFwRppdOujtGS4Osc6fy6Q9z6UZbswxU2yEnlDCi3ivb
 h278QGLQbIUdrGlL/d36j1+C5Pz8nQwlgSBRf2hDBgtIkTe+NCx3KwA6T
 HXe00xEPGFUxfNjmOTEMReSFFn5VjlQKP9BnHGZzSXh9hCh9mseunoJCW
 xsvpy93sl9nHX0FYrIZwrpzQwK5PxsSUOviSfAi03Ru9qVoYzjhvi8hWM
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YRFLlIlB
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 5603fbcb2f5f02b7fb6401c13ae9fbc740be6aad
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
branch HEAD: 5603fbcb2f5f02b7fb6401c13ae9fbc740be6aad  ice: Do not get coalesce settings while in reset

elapsed time: 1286m

configs tested: 140
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
arc                   randconfig-001-20240427   gcc  
arc                   randconfig-002-20240427   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                            mmp2_defconfig   gcc  
arm                   randconfig-003-20240427   gcc  
arm                         s5pv210_defconfig   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-003-20240427   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240427   gcc  
csky                  randconfig-002-20240427   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-002-20240427   gcc  
i386         buildonly-randconfig-006-20240427   gcc  
i386                                defconfig   clang
i386                  randconfig-002-20240427   gcc  
i386                  randconfig-004-20240427   gcc  
i386                  randconfig-005-20240427   gcc  
i386                  randconfig-011-20240427   gcc  
i386                  randconfig-012-20240427   gcc  
i386                  randconfig-015-20240427   gcc  
i386                  randconfig-016-20240427   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240427   gcc  
loongarch             randconfig-002-20240427   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
microblaze                      mmu_defconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240427   gcc  
nios2                 randconfig-002-20240427   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240427   gcc  
parisc                randconfig-002-20240427   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                     tqm8540_defconfig   gcc  
powerpc                 xes_mpc85xx_defconfig   gcc  
powerpc64             randconfig-001-20240427   gcc  
powerpc64             randconfig-002-20240427   gcc  
powerpc64             randconfig-003-20240427   gcc  
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
riscv                 randconfig-002-20240427   gcc  
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240427   gcc  
s390                  randconfig-002-20240427   gcc  
sh                               alldefconfig   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                         ecovec24_defconfig   gcc  
sh                          landisk_defconfig   gcc  
sh                          lboxre2_defconfig   gcc  
sh                            migor_defconfig   gcc  
sh                    randconfig-001-20240427   gcc  
sh                    randconfig-002-20240427   gcc  
sh                          rsk7269_defconfig   gcc  
sh                           se7343_defconfig   gcc  
sh                        sh7763rdp_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240427   gcc  
sparc64               randconfig-002-20240427   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                    randconfig-002-20240427   gcc  
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-003-20240427   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-003-20240427   gcc  
x86_64                randconfig-005-20240427   gcc  
x86_64                randconfig-006-20240427   gcc  
x86_64                randconfig-011-20240427   gcc  
x86_64                randconfig-015-20240427   gcc  
x86_64                randconfig-016-20240427   gcc  
x86_64                randconfig-071-20240427   gcc  
x86_64                randconfig-076-20240427   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                randconfig-001-20240427   gcc  
xtensa                randconfig-002-20240427   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
