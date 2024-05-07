Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1232F8BDB6A
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 May 2024 08:26:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B3CC54080C;
	Tue,  7 May 2024 06:26:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vCry9RaZ6CPk; Tue,  7 May 2024 06:26:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 43C5D4082B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715063183;
	bh=UXuPR3bGrx3hfRxtcSkal9qhd9y3H2iBA9Pp7OCa8fk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Fuu1yYq3alTHuWvifiehnO0Jr9dXC6b8rYHrMJ5BredbrxZpzRzjVPTySFm4LA21s
	 VnXiBaGtCA8bS6LQiiiEEfEdAkSSS0ptx11FTKefb0bLlt0xEvmd3TZlfCbDToHcSS
	 aP+P/LAfRc/EhO2KNg1VFBUlY0yXWtxc8SnADAg1u40wNsF9I1M1D4J6crP1Zq9saB
	 XFJsEgkItpxMfncLPfZ4q1YRcmBFLpHeisEIiM5iCgX2YTJQkpe3RFrKiR6MU8GLER
	 aFHNf+UlcWE0+VPtO3XpG6Dqc1g68jE9NiJmA3HZUuTNxMpLegXWqdNVLr+NMiOiij
	 w4/7TAiS3H9TA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 43C5D4082B;
	Tue,  7 May 2024 06:26:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7763B1BF95F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 May 2024 06:26:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6310140158
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 May 2024 06:26:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2z3zMSI_FdKS for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 May 2024 06:26:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4E5CB41496
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4E5CB41496
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4E5CB41496
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 May 2024 06:26:19 +0000 (UTC)
X-CSE-ConnectionGUID: A0k0rPqURzmcWwEFAtp8UA==
X-CSE-MsgGUID: 2ScMW6G6TQuB/oNU6jItXQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="21447147"
X-IronPort-AV: E=Sophos;i="6.07,260,1708416000"; d="scan'208";a="21447147"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 23:26:19 -0700
X-CSE-ConnectionGUID: MGde9taRSbWDWuoKPX9afg==
X-CSE-MsgGUID: vlwoQBn2Rrm8gpN4e2Xr8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,260,1708416000"; d="scan'208";a="28513463"
Received: from lkp-server01.sh.intel.com (HELO f8b243fe6e68) ([10.239.97.150])
 by fmviesa010.fm.intel.com with ESMTP; 06 May 2024 23:26:17 -0700
Received: from kbuild by f8b243fe6e68 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1s4EHH-0001P4-19
 for intel-wired-lan@lists.osuosl.org; Tue, 07 May 2024 06:26:15 +0000
Date: Tue, 07 May 2024 14:25:34 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202405071433.iC1Xnj0h-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715063179; x=1746599179;
 h=date:from:to:subject:message-id;
 bh=EAXMnlB0UI45gItvCR1/dVFgLw6FEn7iKOVs7U8nixE=;
 b=fckRHC/7rnayvmkOCqhz6KXTsrPXMXFMV3PfNhoO3JJyffSC0eBy6qiv
 7Es9MHWxg2MFybNruS4odzetk8FGX4FlxRnLOrd34ymo5frtZIqX9Fdoh
 rgIT2tlMI0lT2oPvoMs0YH7qyqRwN9kXv+23B9xUj52SWf9Usea0VGQJa
 aYqe5FhRS8sRZ3xqynNtYfBn5gHG4WdGwkZGixXvrOa0hP2p1KbZaPsXB
 U30NrPiedyPdGZsDc41nS3HNbKzMROZhRuala2ufOJLs87NHp8cT1EWZR
 3ICVLEeJx0/Uzfl5KIapr38L4/EmSha9p/STSy9PbAo/N/ISdK3fBpcbt
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fckRHC/7
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 8c4e4798123fd8e0c55e48e49db0f24287c18def
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 10GbE
branch HEAD: 8c4e4798123fd8e0c55e48e49db0f24287c18def  Merge branch 'add-tcp-fraglist-gro-support'

elapsed time: 1202m

configs tested: 168
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
arc                        vdk_hs38_defconfig   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                          moxart_defconfig   gcc  
arm                        neponset_defconfig   gcc  
arm                   randconfig-002-20240507   clang
arm                   randconfig-004-20240507   clang
arm                           spitz_defconfig   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240507   clang
arm64                 randconfig-002-20240507   clang
arm64                 randconfig-003-20240507   clang
arm64                 randconfig-004-20240507   clang
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240507   clang
hexagon               randconfig-002-20240507   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240507   clang
i386         buildonly-randconfig-002-20240507   clang
i386         buildonly-randconfig-003-20240507   clang
i386         buildonly-randconfig-004-20240507   gcc  
i386         buildonly-randconfig-005-20240507   gcc  
i386         buildonly-randconfig-006-20240507   clang
i386                                defconfig   clang
i386                  randconfig-001-20240507   clang
i386                  randconfig-002-20240507   gcc  
i386                  randconfig-003-20240507   clang
i386                  randconfig-004-20240507   clang
i386                  randconfig-005-20240507   clang
i386                  randconfig-006-20240507   clang
i386                  randconfig-011-20240507   gcc  
i386                  randconfig-012-20240507   clang
i386                  randconfig-013-20240507   clang
i386                  randconfig-014-20240507   gcc  
i386                  randconfig-015-20240507   gcc  
i386                  randconfig-016-20240507   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                        mvme147_defconfig   gcc  
m68k                           sun3_defconfig   gcc  
m68k                           virt_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                      malta_kvm_defconfig   gcc  
nios2                            alldefconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
openrisc                         alldefconfig   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
openrisc                 simple_smp_defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                    amigaone_defconfig   gcc  
powerpc                 mpc8313_rdb_defconfig   gcc  
powerpc                    mvme5100_defconfig   gcc  
powerpc               randconfig-002-20240507   clang
powerpc               randconfig-003-20240507   clang
powerpc                     tqm8560_defconfig   gcc  
powerpc64             randconfig-003-20240507   clang
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
riscv                 randconfig-001-20240507   clang
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-002-20240507   clang
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                        edosk7705_defconfig   gcc  
sh                      rts7751r2d1_defconfig   gcc  
sh                           se7705_defconfig   gcc  
sh                        sh7763rdp_defconfig   gcc  
sh                   sh7770_generic_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                       sparc64_defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                    randconfig-002-20240507   clang
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240507   clang
x86_64       buildonly-randconfig-002-20240507   clang
x86_64       buildonly-randconfig-003-20240507   clang
x86_64       buildonly-randconfig-004-20240507   clang
x86_64       buildonly-randconfig-005-20240507   clang
x86_64       buildonly-randconfig-006-20240507   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20240507   gcc  
x86_64                randconfig-002-20240507   clang
x86_64                randconfig-003-20240507   clang
x86_64                randconfig-004-20240507   gcc  
x86_64                randconfig-005-20240507   gcc  
x86_64                randconfig-006-20240507   gcc  
x86_64                randconfig-011-20240507   gcc  
x86_64                randconfig-012-20240507   clang
x86_64                randconfig-013-20240507   clang
x86_64                randconfig-014-20240507   clang
x86_64                randconfig-015-20240507   clang
x86_64                randconfig-016-20240507   clang
x86_64                randconfig-071-20240507   gcc  
x86_64                randconfig-072-20240507   gcc  
x86_64                randconfig-073-20240507   clang
x86_64                randconfig-074-20240507   clang
x86_64                randconfig-075-20240507   clang
x86_64                randconfig-076-20240507   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa                  audio_kc705_defconfig   gcc  
xtensa                  nommu_kc705_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
