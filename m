Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEBCA8AA77E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Apr 2024 05:53:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6168B41781;
	Fri, 19 Apr 2024 03:53:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2RL5SUPk6omZ; Fri, 19 Apr 2024 03:53:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 056BA41787
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713498819;
	bh=SAm+FDXGI5P4cfIeQEHU/Y7EgawWW1UeviGDxp2Kf2A=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=olTn+OMHUw++hkh+Ml17lTt7+iC2BK23VbkZZoe7a0WDpbANpgGu1kwoopj5JPMYW
	 9gbcAKr6hkqZ4JFwzh+tS9AQ0z1HoaoDjBfmNQQ3XX7Sy8bxLKUjbraeAKRmyZAWBk
	 ssX416quTi+rHIJ311jFoWD9iAEpbW3VEPPyCZmBvGLLX4RZ1dTa5PbSOEiFgCaRDC
	 ZK/5yWhqUzLBvhao96dAgI8xW6zjr7Cc+Pus7O0fb77wOWbJ17Ol/F1wJk/WDMUbM0
	 LSG6+Ee0feDkVVVNu+QfBdEZZ90PzHNqiQNKO7e+/aySIm6ZuP4NPJoXnZJ+KtmqRg
	 2SS0p00x0dWRw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 056BA41787;
	Fri, 19 Apr 2024 03:53:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2EE821BF2FE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Apr 2024 03:53:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 270AF401BF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Apr 2024 03:53:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lrrtcmspgcCn for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Apr 2024 03:53:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C6F5D401B8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C6F5D401B8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C6F5D401B8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Apr 2024 03:53:34 +0000 (UTC)
X-CSE-ConnectionGUID: dFRR9pc1QAmoNNn1T1ES7Q==
X-CSE-MsgGUID: NeEhzi9iQ52UVJvc47NBvA==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="9628580"
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; 
   d="scan'208";a="9628580"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 20:53:34 -0700
X-CSE-ConnectionGUID: xmg5N6yUR3CKgtSLJry3SA==
X-CSE-MsgGUID: SQbbYig/QL++Sq39wpgMaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="23277930"
Received: from unknown (HELO 23c141fc0fd8) ([10.239.97.151])
 by fmviesa010.fm.intel.com with ESMTP; 18 Apr 2024 20:53:33 -0700
Received: from kbuild by 23c141fc0fd8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rxfJV-0009Z6-04
 for intel-wired-lan@lists.osuosl.org; Fri, 19 Apr 2024 03:53:26 +0000
Date: Fri, 19 Apr 2024 11:52:46 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202404191144.Co1sBcm0-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713498816; x=1745034816;
 h=date:from:to:subject:message-id;
 bh=PywUwAwfMRWEpjvRz2pVBxksy/6jk1Z6csWS9YkBNG8=;
 b=kaHb8BGSgqIznWImzpGja8JQokawMFHXf8H/VvOL6G7AheqTm/61uG8S
 gz1Pqj0bGWrgQo1KURofey1+1HO4URC739zYHoVpCZ8rXyBveO8giW5cz
 LNx04AIjMNnPAIOCisN5UT6MVZxlY7Nw8rCxs4ocbVNqx1pBBABhnEO5B
 Ad9p/p43Ani8RMHS/twDj20q2E567BJxw2fBj/zgQsLOF2617VGsB78DR
 FzxKMZfDBzD8Ql2MIGxwK7SXBMtimvIZkVWLKCPYeJyjC9h41SoSHCjjX
 N6LUfCQ1zuEF0GiP01Uacg2aFSPqKqEbDCXaSNSlyCle7NHu6pMf2Vmqd
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kaHb8BGS
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 ac1a21db32eda8a09076bad025d7b848dd086d28
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
branch HEAD: ac1a21db32eda8a09076bad025d7b848dd086d28  Merge tag 'nf-24-04-18' of git://git.kernel.org/pub/scm/linux/kernel/git/netfilter/nf

elapsed time: 955m

configs tested: 141
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
arc                          axs103_defconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20240419   gcc  
arc                   randconfig-002-20240419   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                          ixp4xx_defconfig   gcc  
arm                   randconfig-001-20240419   gcc  
arm                   randconfig-003-20240419   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   clang
arm64                               defconfig   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240419   gcc  
csky                  randconfig-002-20240419   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240419   clang
i386                                defconfig   clang
i386                  randconfig-001-20240419   clang
i386                  randconfig-002-20240419   clang
i386                  randconfig-003-20240419   clang
i386                  randconfig-005-20240419   clang
i386                  randconfig-006-20240419   clang
i386                  randconfig-012-20240419   clang
i386                  randconfig-014-20240419   clang
i386                  randconfig-016-20240419   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240419   gcc  
loongarch             randconfig-002-20240419   gcc  
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
mips                     loongson1c_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240419   gcc  
nios2                 randconfig-002-20240419   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240419   gcc  
parisc                randconfig-002-20240419   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                 mpc8313_rdb_defconfig   gcc  
powerpc                     ppa8548_defconfig   gcc  
powerpc                         ps3_defconfig   gcc  
powerpc               randconfig-001-20240419   gcc  
powerpc               randconfig-002-20240419   gcc  
powerpc               randconfig-003-20240419   gcc  
powerpc64             randconfig-001-20240419   gcc  
powerpc64             randconfig-002-20240419   gcc  
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-002-20240419   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                             espt_defconfig   gcc  
sh                    randconfig-001-20240419   gcc  
sh                    randconfig-002-20240419   gcc  
sh                           se7724_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240419   gcc  
sparc64               randconfig-002-20240419   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                    randconfig-001-20240419   gcc  
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240419   clang
x86_64       buildonly-randconfig-003-20240419   clang
x86_64       buildonly-randconfig-004-20240419   clang
x86_64       buildonly-randconfig-005-20240419   clang
x86_64                              defconfig   gcc  
x86_64                randconfig-002-20240419   clang
x86_64                randconfig-005-20240419   clang
x86_64                randconfig-011-20240419   clang
x86_64                randconfig-012-20240419   clang
x86_64                randconfig-013-20240419   clang
x86_64                randconfig-014-20240419   clang
x86_64                randconfig-071-20240419   clang
x86_64                randconfig-073-20240419   clang
x86_64                randconfig-074-20240419   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                randconfig-001-20240419   gcc  
xtensa                randconfig-002-20240419   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
