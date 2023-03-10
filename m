Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 674C06B360E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Mar 2023 06:27:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0FB2F41151;
	Fri, 10 Mar 2023 05:27:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0FB2F41151
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678426065;
	bh=UxCbYfeMEEDQc/dMgyW51kSTEuDr/1fCXdTxqBSxL0k=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ErpVyJdr2JUpJ+foYUa1utPOJnJl4CrNeLfWt19GW2j8B5InZyH/0h9Vqwm5l2khd
	 WB7RAmEvotTMr4o72g655Wgz5SHoBE6bemYCIivri2rVJE4cnYMTM7SjgxZrW4Cg7S
	 fVixUFaM3BbqGb21hdcrHZhu81XAkfKJr1O6BAeXZugLCoC/FffFFY6jI5cU35eIr+
	 DewmmykcvTK45iTbMqv+ecI30zCMdHfzchbq2PtphYnqlSXz70WK9bNFNnwp98m5IW
	 UCGoEeqEx7PUz2IEkb6jdKLGq5Xq034i+9xf1HGU2pamBPsRp3esNcFLJKzFoSHFfl
	 TzEHfDQQ08bWw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i5IL0Hk4BT1n; Fri, 10 Mar 2023 05:27:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 061EC40C22;
	Fri, 10 Mar 2023 05:27:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 061EC40C22
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9079A1BF2F7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 05:27:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 638CA40C22
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 05:27:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 638CA40C22
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ISi5nEt05uwJ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Mar 2023 05:27:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 80E36401A1
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 80E36401A1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 05:27:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="320504719"
X-IronPort-AV: E=Sophos;i="5.98,248,1673942400"; d="scan'208";a="320504719"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2023 21:27:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="680093522"
X-IronPort-AV: E=Sophos;i="5.98,248,1673942400"; d="scan'208";a="680093522"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 09 Mar 2023 21:26:55 -0800
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1paVHK-0003XA-1N;
 Fri, 10 Mar 2023 05:26:54 +0000
Date: Fri, 10 Mar 2023 13:26:42 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <640abf92.iw3V3/F6HJS2OuqD%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678426057; x=1709962057;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=wy+2yiA+ldsE7ByzKE3Wz7DQDDMqcxgZak6tdGteTnA=;
 b=UlozaUd8p8miJXRKiW01nUcM0U5oP7kCjSUtOGCXvlzDCAmW9HsBYJvQ
 pw/0XEELdIvyIXOct9cgn3S9rCciDovXVuNDh5VM5sKFqHvfut7HCglCR
 bf7bOtaog+PkAEKgPO87KCYfvhiX9C2oFBP3/7qxCQJI7ndC0ZNN6Qzfk
 jxPW23A1xNSsUfouia0gPJjixfoEU8MBpJyVHZ7IRxh6wyINqReyEo85v
 TClSbMRNsS2FPnC02FHpspIK2Gbf/CPc5aFrJcQ6zaB7Cjx1q2ni4z42l
 2NE9VyLRdbxYamLsw/s4TRYwrvGEmM8jXaQd+GrZ6pV5xQjwy+0Foq9xb
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UlozaUd8
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 f154671eef342e95f6b69a000d630e7b827ca78d
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: f154671eef342e95f6b69a000d630e7b827ca78d  igc: fix the validation logic for taprio's gate list

elapsed time: 723m

configs tested: 54
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r021-20230308   gcc  
alpha                randconfig-r022-20230308   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
i386                             alldefconfig   gcc  
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r025-20230308   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                      pic32mzda_defconfig   clang
nios2                               defconfig   gcc  
nios2                randconfig-r023-20230308   gcc  
nios2                randconfig-r024-20230308   gcc  
nios2                randconfig-r026-20230308   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                    amigaone_defconfig   gcc  
powerpc                     ep8248e_defconfig   gcc  
powerpc                    klondike_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
sh                               allmodconfig   gcc  
sparc                               defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
