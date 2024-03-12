Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DFEC787917F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Mar 2024 10:54:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 89DE7818C0;
	Tue, 12 Mar 2024 09:54:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 45aO9DvgNm3i; Tue, 12 Mar 2024 09:54:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 52E75818BE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710237271;
	bh=ejmaa5w2JAb0ypsI/fAniSh75N3B06bwM+mpkJK2Q68=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=KfK8zMDLwXMBO2Bhk+wu0VpMcKMaxb8WQrhJFIM8I3nEj0EF0iiQeD/IFgQLm5gFG
	 mAXYX0dI9UyCPHR1408oxwwvxzSz9mqaT8NsjQ0zkvesSnwM/QVGgLP9NwgNvVMGQg
	 EdeYV+5GZa2GR577K40UvJRC2bjx9swDaGwXyq6rZUJrmRnZzEdPF4O6pPCLELS8HY
	 UXWo5JSSW9tfuxMBIX98vCJDp3ofd6ZQg+z3uviNkmkahpNo0EIrACh6QB+YQ7jCcn
	 CITOoqp+PErUXZaBIq9tdoLP+j6/ilhxJvjv1a31v2lzqkDf8g9/578aEUffsS110F
	 z0+VD+I/mWODQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 52E75818BE;
	Tue, 12 Mar 2024 09:54:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 535DB1BF286
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Mar 2024 09:54:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3E793607E7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Mar 2024 09:54:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XuQPXXTIHJcg for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Mar 2024 09:54:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3984E6063C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3984E6063C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3984E6063C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Mar 2024 09:54:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11010"; a="16339860"
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; d="scan'208";a="16339860"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 02:54:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; d="scan'208";a="11453284"
Received: from lkp-server01.sh.intel.com (HELO b21307750695) ([10.239.97.150])
 by orviesa010.jf.intel.com with ESMTP; 12 Mar 2024 02:54:27 -0700
Received: from kbuild by b21307750695 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rjyq0-000A1E-0t
 for intel-wired-lan@lists.osuosl.org; Tue, 12 Mar 2024 09:54:24 +0000
Date: Tue, 12 Mar 2024 17:53:33 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202403121729.KCbGzPE6-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710237268; x=1741773268;
 h=date:from:to:subject:message-id;
 bh=x+TS8KoGhtzfowoCHk/p6Crci7PPCV3zYxJIVAwBSbw=;
 b=Phy1Je1O/scHKCNvnPiC5nN84vuu8+rORVUxDOHEqo2LeMt8SkB3Oh2v
 trcosn9d0JukInsnt6Hf0/ZPOFrVrUR2ywAzdMYexLblvzLJpBiKgGhR7
 4h8t+WYnuSDbOoU7q9/USSrXUqjdeA8Vvg8d1f8fdwUF34yOPA4gO2mmK
 uCjeIRLnEBCv5yemxSibha2/hSWUNGimFA7jtSyZrItbovbBFikSX8aGb
 KSbMs+h0U9mdkyUJ/cOF+nuIJ0rmLlZ2pMVcsU7b/2DuqS+5QwKy3NBWO
 IkPY4HTq2hYIns4MY0GGoheRjQKRhCehcU31vstgesvXzXvzOz5cv7j3m
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Phy1Je1O
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 9b3d82e976156d765ff2e4b7c902c5b3c536b6b3
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
branch HEAD: 9b3d82e976156d765ff2e4b7c902c5b3c536b6b3  ixgbe: avoid sleeping allocation in ixgbe_ipsec_vf_add_sa()

elapsed time: 744m

configs tested: 153
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
arc                   randconfig-001-20240312   gcc  
arc                   randconfig-002-20240312   gcc  
arc                           tb10x_defconfig   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                         assabet_defconfig   clang
arm                         axm55xx_defconfig   clang
arm                                 defconfig   clang
arm                         mv78xx0_defconfig   clang
arm                   randconfig-001-20240312   clang
arm                   randconfig-002-20240312   gcc  
arm                   randconfig-003-20240312   gcc  
arm                   randconfig-004-20240312   clang
arm                             rpc_defconfig   clang
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240312   gcc  
arm64                 randconfig-002-20240312   gcc  
arm64                 randconfig-003-20240312   gcc  
arm64                 randconfig-004-20240312   clang
csky                             alldefconfig   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240312   gcc  
csky                  randconfig-002-20240312   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240312   clang
hexagon               randconfig-002-20240312   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240312   gcc  
i386         buildonly-randconfig-002-20240312   gcc  
i386         buildonly-randconfig-003-20240312   gcc  
i386         buildonly-randconfig-004-20240312   gcc  
i386         buildonly-randconfig-005-20240312   clang
i386         buildonly-randconfig-006-20240312   gcc  
i386                                defconfig   clang
i386                  randconfig-001-20240312   gcc  
i386                  randconfig-002-20240312   clang
i386                  randconfig-003-20240312   gcc  
i386                  randconfig-004-20240312   gcc  
i386                  randconfig-005-20240312   gcc  
i386                  randconfig-006-20240312   gcc  
i386                  randconfig-011-20240312   gcc  
i386                  randconfig-012-20240312   gcc  
i386                  randconfig-013-20240312   clang
i386                  randconfig-014-20240312   clang
i386                  randconfig-015-20240312   gcc  
i386                  randconfig-016-20240312   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240312   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                        mvme147_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                     cu1000-neo_defconfig   gcc  
mips                        maltaup_defconfig   clang
nios2                         10m50_defconfig   gcc  
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
powerpc                   currituck_defconfig   clang
powerpc                     taishan_defconfig   clang
powerpc                      walnut_defconfig   gcc  
powerpc                        warp_defconfig   gcc  
powerpc                         wii_defconfig   gcc  
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
sh                          landisk_defconfig   gcc  
sh                          polaris_defconfig   gcc  
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
x86_64       buildonly-randconfig-001-20240312   clang
x86_64       buildonly-randconfig-002-20240312   clang
x86_64       buildonly-randconfig-003-20240312   clang
x86_64       buildonly-randconfig-004-20240312   clang
x86_64       buildonly-randconfig-005-20240312   gcc  
x86_64       buildonly-randconfig-006-20240312   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20240312   clang
x86_64                randconfig-002-20240312   clang
x86_64                randconfig-003-20240312   gcc  
x86_64                randconfig-004-20240312   gcc  
x86_64                randconfig-005-20240312   gcc  
x86_64                randconfig-006-20240312   clang
x86_64                randconfig-011-20240312   gcc  
x86_64                randconfig-012-20240312   clang
x86_64                randconfig-013-20240312   gcc  
x86_64                randconfig-014-20240312   gcc  
x86_64                randconfig-015-20240312   clang
x86_64                randconfig-016-20240312   clang
x86_64                randconfig-071-20240312   gcc  
x86_64                randconfig-072-20240312   gcc  
x86_64                          rhel-8.3-rust   clang
xtensa                            allnoconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
