Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F307876580
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Mar 2024 14:40:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 321B081FDE;
	Fri,  8 Mar 2024 13:40:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qQvpccuPwotZ; Fri,  8 Mar 2024 13:40:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BCA2B820AA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709905256;
	bh=kq6WLjdxqX+kLcEaNQvgRnEXI39zJXPxM2a3CI6B8Nk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=SjVW3ozK0DubwfwSRV7IM4IQbjvQbySiF6bDGbs+ui7rYnv6KYEP97aUqZFgOoCFI
	 DXHwKEni3NA+gh5bJnmqQ2AIc4P3xop2GDBKRIgDJeSleQ9qYpOEJ0XIiposVvhRz3
	 8bC27q+KrodRiEJmlia4agG0m7HN4SzZK1gTn2KRLa0AM8VsnsH0y4pLdzNBtjpJ/l
	 CVACUBkjHnEP77uyB0r9UakOyXEtyUTyJVqrDDZsyM9sBZw9HTkaztThJDpot7UIUl
	 wQIRS62JrSYsIjx1bEczTGZgBR/ymCRWFvpLLdyteUgtRwpo+tiPTVlqUdWoq9kGF8
	 /uaNhWTNbAU9A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BCA2B820AA;
	Fri,  8 Mar 2024 13:40:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 585F31BF3B5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Mar 2024 13:40:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id ACD5981E5C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Mar 2024 13:40:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xAO2XRtqKHdV for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Mar 2024 13:40:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A01D481E5E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A01D481E5E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A01D481E5E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Mar 2024 13:40:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="15345364"
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; d="scan'208";a="15345364"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2024 05:40:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; d="scan'208";a="10574202"
Received: from lkp-server01.sh.intel.com (HELO b21307750695) ([10.239.97.150])
 by fmviesa008.fm.intel.com with ESMTP; 08 Mar 2024 05:40:51 -0800
Received: from kbuild by b21307750695 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1riaSu-0006PV-2k
 for intel-wired-lan@lists.osuosl.org; Fri, 08 Mar 2024 13:40:48 +0000
Date: Fri, 08 Mar 2024 21:40:08 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202403082105.SmXs88Y9-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709905252; x=1741441252;
 h=date:from:to:subject:message-id;
 bh=+byiHdPdKKONALuG/WexSy7bbTefr8f7uo/V0lH5QNw=;
 b=XWY7VANQRyf/Ct9z0+eyrresNtOgINzO0McLUVzr6Uyf2ppjLSRfvHOR
 3kCeg+Q+RChcA7CpvmBVoqYeWSUi2Q9jAJbz0knRynOY7f5Gp1KrVBnuq
 VjsLP0c1kzhCTHiM8/D964d1xdumX9bWWO9PwdllkKAGcOxaSCQ2GKzqh
 rcOloUj1Xmn6pnkw3tIpxzL7Qg8c2eJm6S496Blyz5TCoJP31puAewUDi
 NNfxqvsq6luhsOoQXTzX2mV2c6H5fchxVXqJY8IQgBUuvQGvj7RBDyxJc
 BzxWYMhwFZiNPVAIH7SgotakAsgn/AFhktO+r6E2KMhK9SwIkifRifvcb
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XWY7VANQ
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 15d2540e0d626b7960c9cafb3c825554fdf1a2b4
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
branch HEAD: 15d2540e0d626b7960c9cafb3c825554fdf1a2b4  tools: ynl: check for overflow of constructed messages

elapsed time: 1099m

configs tested: 195
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
arc                      axs103_smp_defconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20240308   gcc  
arc                   randconfig-002-20240308   gcc  
arm                              alldefconfig   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                     am200epdkit_defconfig   gcc  
arm                                 defconfig   clang
arm                        neponset_defconfig   gcc  
arm                           omap1_defconfig   gcc  
arm                          pxa910_defconfig   gcc  
arm                   randconfig-001-20240308   gcc  
arm                   randconfig-002-20240308   clang
arm                   randconfig-003-20240308   clang
arm                   randconfig-004-20240308   clang
arm                        shmobile_defconfig   gcc  
arm                         wpcm450_defconfig   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240308   clang
arm64                 randconfig-002-20240308   clang
arm64                 randconfig-003-20240308   clang
arm64                 randconfig-004-20240308   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240308   gcc  
csky                  randconfig-002-20240308   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240308   clang
hexagon               randconfig-002-20240308   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240308   clang
i386         buildonly-randconfig-002-20240308   clang
i386         buildonly-randconfig-003-20240308   gcc  
i386         buildonly-randconfig-004-20240308   gcc  
i386         buildonly-randconfig-005-20240308   gcc  
i386         buildonly-randconfig-006-20240308   clang
i386                                defconfig   clang
i386                  randconfig-001-20240308   clang
i386                  randconfig-002-20240308   clang
i386                  randconfig-003-20240308   clang
i386                  randconfig-004-20240308   gcc  
i386                  randconfig-005-20240308   clang
i386                  randconfig-006-20240308   clang
i386                  randconfig-011-20240308   gcc  
i386                  randconfig-012-20240308   clang
i386                  randconfig-013-20240308   clang
i386                  randconfig-014-20240308   clang
i386                  randconfig-015-20240308   gcc  
i386                  randconfig-016-20240308   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240308   gcc  
loongarch             randconfig-002-20240308   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                       m5249evb_defconfig   gcc  
m68k                        m5272c3_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                      fuloong2e_defconfig   gcc  
mips                           ip28_defconfig   gcc  
mips                     loongson1c_defconfig   gcc  
mips                   sb1250_swarm_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240308   gcc  
nios2                 randconfig-002-20240308   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240308   gcc  
parisc                randconfig-002-20240308   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                      ppc64e_defconfig   gcc  
powerpc                         ps3_defconfig   gcc  
powerpc               randconfig-001-20240308   gcc  
powerpc               randconfig-002-20240308   clang
powerpc               randconfig-003-20240308   clang
powerpc                  storcenter_defconfig   gcc  
powerpc                     tqm8560_defconfig   gcc  
powerpc64             randconfig-001-20240308   gcc  
powerpc64             randconfig-002-20240308   clang
powerpc64             randconfig-003-20240308   clang
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
riscv                 randconfig-001-20240308   clang
riscv                 randconfig-002-20240308   clang
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240308   gcc  
s390                  randconfig-002-20240308   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                         ap325rxa_defconfig   gcc  
sh                                  defconfig   gcc  
sh                            hp6xx_defconfig   gcc  
sh                          kfr2r09_defconfig   gcc  
sh                    randconfig-001-20240308   gcc  
sh                    randconfig-002-20240308   gcc  
sh                          rsk7201_defconfig   gcc  
sh                           se7724_defconfig   gcc  
sh                            titan_defconfig   gcc  
sh                          urquell_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240308   gcc  
sparc64               randconfig-002-20240308   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                    randconfig-001-20240308   clang
um                    randconfig-002-20240308   gcc  
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240308   clang
x86_64       buildonly-randconfig-002-20240308   gcc  
x86_64       buildonly-randconfig-003-20240308   gcc  
x86_64       buildonly-randconfig-004-20240308   clang
x86_64       buildonly-randconfig-005-20240308   gcc  
x86_64       buildonly-randconfig-006-20240308   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20240308   gcc  
x86_64                randconfig-002-20240308   clang
x86_64                randconfig-003-20240308   clang
x86_64                randconfig-004-20240308   clang
x86_64                randconfig-005-20240308   gcc  
x86_64                randconfig-006-20240308   gcc  
x86_64                randconfig-011-20240308   clang
x86_64                randconfig-012-20240308   gcc  
x86_64                randconfig-013-20240308   clang
x86_64                randconfig-014-20240308   clang
x86_64                randconfig-015-20240308   gcc  
x86_64                randconfig-016-20240308   gcc  
x86_64                randconfig-071-20240308   clang
x86_64                randconfig-072-20240308   gcc  
x86_64                randconfig-073-20240308   gcc  
x86_64                randconfig-074-20240308   gcc  
x86_64                randconfig-075-20240308   gcc  
x86_64                randconfig-076-20240308   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa                       common_defconfig   gcc  
xtensa                randconfig-001-20240308   gcc  
xtensa                randconfig-002-20240308   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
