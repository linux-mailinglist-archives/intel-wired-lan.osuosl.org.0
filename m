Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63ED1744677
	for <lists+intel-wired-lan@lfdr.de>; Sat,  1 Jul 2023 06:09:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0717840482;
	Sat,  1 Jul 2023 04:09:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0717840482
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688184556;
	bh=FzYRmAxc3R+51MNCI5K1f1WeJljR9YDHCnwNVSRq5uI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=M5RHlcb1ZomiSC4tW4wtbRQh6r47U4yav7Dwh0Hq40BHA/WNKZjN+88IbhwYGtbov
	 sMDaJsKToMiaC53j8WD9KGX8ebFVJ+7KuZsaAOlVHEfHoPqCMRdM/qjR7Bnc3QSgIa
	 t3lblM1XZvnnCIiTIxvQ9ZoYep49b4Y5aFzHZtiuupXCe4z1+8jU6asbwCpFIei7DC
	 FU2MtXdx1FtzYibF0h9bhgDkCpDc5llp2tVtk85Mj0Uc30BIcp4VQ7Qxx8gL4gtjLU
	 nLoei7HxDrVqE4YxQPkzLUODXKxwr04a4mdZI372UBWHBaUnK9Ccyh/H6Xyu3qQ18f
	 nDTXsN4jHJbcw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S7jnOp_tW-kX; Sat,  1 Jul 2023 04:09:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D2A044012D;
	Sat,  1 Jul 2023 04:09:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D2A044012D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 525AB1BF314
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Jul 2023 04:09:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1438181DE7
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Jul 2023 04:09:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1438181DE7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j-f7KHokDS6s for <intel-wired-lan@lists.osuosl.org>;
 Sat,  1 Jul 2023 04:08:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2BAC48138E
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2BAC48138E
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Jul 2023 04:08:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10757"; a="342880920"
X-IronPort-AV: E=Sophos;i="6.01,172,1684825200"; d="scan'208";a="342880920"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2023 21:08:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10757"; a="891954860"
X-IronPort-AV: E=Sophos;i="6.01,172,1684825200"; d="scan'208";a="891954860"
Received: from lkp-server01.sh.intel.com (HELO 783282924a45) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 30 Jun 2023 21:08:56 -0700
Received: from kbuild by 783282924a45 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qFRup-000Ffl-3C
 for intel-wired-lan@lists.osuosl.org; Sat, 01 Jul 2023 04:08:55 +0000
Date: Sat, 01 Jul 2023 12:08:30 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202307011228.mDfR9q5z-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688184539; x=1719720539;
 h=date:from:to:subject:message-id;
 bh=/IyIu2b+EDCxp14d91NnFroeAU3b5SRVfSl1x97MMpo=;
 b=N20augpE7Ss+V7xLlWZ9z+qqqKbnPEHExcI2Cl76I23EXe0Ll+68qCny
 /UtvhYH9WrK9nYU/1Sx0vkpAEoTWjOw/jwtOSGDFAUS4kmvR2JHh5g9d+
 kEXgbFCjYJeyXksWlcEc7XpSIa48G/PCACNXlEFaKVJ0Zz2jBXH5gsmMN
 2v+OILVkl2YHpUTd0DLzH0unxN8e/4dWvKKKge9HYSBmelPxACEO37kVn
 GQklPsmvCFNyRCneVRFoxYmeq3Gq0PJtEJJ798QKRpfhS8HLm1DH6v2+D
 hFhwxOfjKJFfxFrE0RlyOoba2PpRbQvztuDmQZPm+cHaJ7BrPcduW1ygH
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=N20augpE
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 f70af5d1aab699a3a7c9d29111de6a98d6d1ebc1
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: f70af5d1aab699a3a7c9d29111de6a98d6d1ebc1  igc: Fix Kernel Panic during ndo_tx_timeout callback

elapsed time: 725m

configs tested: 67
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r043-20230629   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r046-20230629   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
hexagon              randconfig-r041-20230629   clang
hexagon              randconfig-r045-20230629   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-r013-20230630   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r012-20230630   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r016-20230630   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
nios2                               defconfig   gcc  
openrisc             randconfig-r014-20230630   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230629   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r044-20230629   clang
sh                               allmodconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64              randconfig-r011-20230630   gcc  
sparc64              randconfig-r015-20230630   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-x011-20230629   gcc  
x86_64               randconfig-x012-20230629   gcc  
x86_64               randconfig-x013-20230629   gcc  
x86_64               randconfig-x014-20230629   gcc  
x86_64               randconfig-x015-20230629   gcc  
x86_64               randconfig-x016-20230629   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
