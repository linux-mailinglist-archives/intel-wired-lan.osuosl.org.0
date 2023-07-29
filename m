Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 25F2B768058
	for <lists+intel-wired-lan@lfdr.de>; Sat, 29 Jul 2023 17:18:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A514982FB1;
	Sat, 29 Jul 2023 15:18:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A514982FB1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690643908;
	bh=lxPPeanpBZhvJU0jHf2lMlm9S4t37zfWPCwwQMtuaug=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Qa1yynFzNzUDIaU55ukRdFxfPJqjW7zt7B6rtVZlu/gh91dE518is6tvDXNQINvuR
	 5+DmICqWco4KhTG2XakhSAybulrnVtBqtZM/ilMXf/jUGBTwJbEKSD4Xj1IuZElFyZ
	 IXOXr6v7w6UewjEw0vrN5WrEmR89XxOEbXidzSDva23SMX96iky2cLl8TOJqGyxDsm
	 TJsACu6U1VuefCTtgul9upKXJtwBGT548Ao01TZF5AOoR+65GMaUnhFkuYGIqZ46Dd
	 X6UIuskzOSpvuEhfiBh6JkamlUPdNbt6E5dnNOO3FY8iG1gkX1zgb+G9RtHla+qT/2
	 sUOTjZvr5av/g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q2AruknGFEiE; Sat, 29 Jul 2023 15:18:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7443B82BC4;
	Sat, 29 Jul 2023 15:18:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7443B82BC4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0B01F1BF3EA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 Jul 2023 15:18:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C960282BC4
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 Jul 2023 15:18:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C960282BC4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l3kPNzNejvbz for <intel-wired-lan@lists.osuosl.org>;
 Sat, 29 Jul 2023 15:18:21 +0000 (UTC)
Received: from mgamail.intel.com (unknown [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A686B82B21
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 Jul 2023 15:18:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A686B82B21
X-IronPort-AV: E=McAfee;i="6600,9927,10786"; a="372401822"
X-IronPort-AV: E=Sophos;i="6.01,240,1684825200"; d="scan'208";a="372401822"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2023 08:18:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10786"; a="721576800"
X-IronPort-AV: E=Sophos;i="6.01,240,1684825200"; d="scan'208";a="721576800"
Received: from lkp-server02.sh.intel.com (HELO 953e8cd98f7d) ([10.239.97.151])
 by orsmga007.jf.intel.com with ESMTP; 29 Jul 2023 08:18:20 -0700
Received: from kbuild by 953e8cd98f7d with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qPlhz-00046v-14
 for intel-wired-lan@lists.osuosl.org; Sat, 29 Jul 2023 15:18:19 +0000
Date: Sat, 29 Jul 2023 23:17:32 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202307292330.AcnaTXuk-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690643901; x=1722179901;
 h=date:from:to:subject:message-id;
 bh=OOdcKw9GgNM4LowPa8AbQ3wmdyXO+PbAhhNPu78sLuY=;
 b=XYdxcd5Q2Ztne3CpGXG62K8nT1OK5BrAGAZyHABrWcyamlcFWRgON3VG
 mTpVxPEggPJ9MjMfzNppdsfVBGhAYBYpTqBCXiVz1G1w0InkefEuqXTpL
 dLVj0q9egggDRG3p3/Jkpc6VbWpjDvYNeqovDkZ4klVlrrsHdU0OpMKBG
 edf3qf84akKTpd+GphELi6Hdcy2Vo3Oh4VS+1lsm8XKpRHSfjrvcxLOVW
 X1Maku+aV6lD2f904KLZeQDpT1T3QBP9hv0ZP7VFZGGhkuA/qQknMtS5F
 afMPHJi4xwRRuYAI7YC0F3YHm0qDn2rmpSG92F05wvtBO51dUnO9kmGW5
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XYdxcd5Q
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 222a6c42e9ef131fd20463bf95d7ce7b39bee2f8
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git main
branch HEAD: 222a6c42e9ef131fd20463bf95d7ce7b39bee2f8  octeontx2-af: Initialize 'cntr_val' to fix uninitialized symbol error

elapsed time: 1085m

configs tested: 104
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r006-20230728   gcc  
arc                  randconfig-r011-20230728   gcc  
arc                  randconfig-r043-20230728   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r013-20230728   gcc  
arm                  randconfig-r026-20230727   clang
arm                  randconfig-r046-20230728   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r004-20230728   gcc  
hexagon              randconfig-r041-20230728   clang
hexagon              randconfig-r045-20230728   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230728   gcc  
i386         buildonly-randconfig-r005-20230728   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230728   gcc  
i386                 randconfig-i002-20230728   gcc  
i386                 randconfig-i003-20230728   gcc  
i386                 randconfig-i004-20230728   gcc  
i386                 randconfig-i005-20230728   gcc  
i386                 randconfig-i011-20230728   clang
i386                 randconfig-i012-20230728   clang
i386                 randconfig-i013-20230728   clang
i386                 randconfig-i014-20230728   clang
i386                 randconfig-i015-20230728   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r005-20230728   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze           randconfig-r024-20230727   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r002-20230728   clang
mips                 randconfig-r033-20230728   clang
nios2                               defconfig   gcc  
openrisc             randconfig-r016-20230728   gcc  
openrisc             randconfig-r032-20230728   gcc  
openrisc             randconfig-r035-20230728   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r031-20230728   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r022-20230727   gcc  
riscv                randconfig-r042-20230728   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r014-20230728   clang
s390                 randconfig-r044-20230728   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r001-20230728   gcc  
sh                   randconfig-r012-20230728   gcc  
sh                   randconfig-r025-20230727   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64              randconfig-r003-20230728   gcc  
sparc64              randconfig-r015-20230728   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r036-20230728   clang
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230728   gcc  
x86_64       buildonly-randconfig-r002-20230728   gcc  
x86_64       buildonly-randconfig-r003-20230728   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-x001-20230728   clang
x86_64               randconfig-x002-20230728   clang
x86_64               randconfig-x003-20230728   clang
x86_64               randconfig-x004-20230728   clang
x86_64               randconfig-x005-20230728   clang
x86_64               randconfig-x006-20230728   clang
x86_64               randconfig-x011-20230728   gcc  
x86_64               randconfig-x012-20230728   gcc  
x86_64               randconfig-x013-20230728   gcc  
x86_64               randconfig-x014-20230728   gcc  
x86_64               randconfig-x015-20230728   gcc  
x86_64               randconfig-x016-20230728   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r021-20230727   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
