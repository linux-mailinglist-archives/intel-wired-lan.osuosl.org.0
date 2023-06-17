Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 594FD733FB4
	for <lists+intel-wired-lan@lfdr.de>; Sat, 17 Jun 2023 10:41:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A8EEB416FC;
	Sat, 17 Jun 2023 08:41:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A8EEB416FC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686991302;
	bh=lAoviAApSiDwcy3wIb1yAFbjQVwNhLkZDcFLYLIXlHI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Ys6Jv/fVufZwOjZpxxrAc+9L6ogfMFPFUa0x0CtrEdIefDM3gGXh1Y0QYHLMUEW9t
	 myaWCoYfsZD1dGawutSDceCgiGusoQlmfhs0Ttc4Av12JyOdegc9jzjQGW6B10OIi/
	 JicdrYhLvAY+HzXMmMs4QjohIF58a/g4uAbwnpAFZrDJFFK5CadP+SUZE+k2RrXjje
	 rUz29/FlY6jXXBvq8bvQgns8zJUvb6O0fcZ9h+H75aSfT2pOBrkaYLcQ56zkqK7sjH
	 ytP/JcnTMCq94JT7JbhyIzc7iN6KPDgraprCPiGA2XSQ4QQ/iZWkMj9IKXFGUSnUd0
	 V6Z+ncERWroiw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TcPTosVp6kc4; Sat, 17 Jun 2023 08:41:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 24917415ED;
	Sat, 17 Jun 2023 08:41:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 24917415ED
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3DB6B1BF83E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Jun 2023 08:41:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 13B31415ED
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Jun 2023 08:41:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 13B31415ED
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Jm9pHO5QUtqD for <intel-wired-lan@lists.osuosl.org>;
 Sat, 17 Jun 2023 08:41:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8B0A6415D9
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8B0A6415D9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Jun 2023 08:41:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10743"; a="339705774"
X-IronPort-AV: E=Sophos;i="6.00,250,1681196400"; d="scan'208";a="339705774"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2023 01:41:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10743"; a="713134895"
X-IronPort-AV: E=Sophos;i="6.00,250,1681196400"; d="scan'208";a="713134895"
Received: from lkp-server01.sh.intel.com (HELO 783282924a45) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 17 Jun 2023 01:41:24 -0700
Received: from kbuild by 783282924a45 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qARUp-0002Wm-15
 for intel-wired-lan@lists.osuosl.org; Sat, 17 Jun 2023 08:41:23 +0000
Date: Sat, 17 Jun 2023 16:40:25 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202306171623.fKadtm6K-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686991294; x=1718527294;
 h=date:from:to:subject:message-id;
 bh=peXgYuNJEemfsvh1RMkltR0rLx7QZBX44nRQYWOOpkI=;
 b=MUvgAZxevEs/anNj3de6BlQ4ewT6PoOtY4KbLNnZe6VkRGUKH07tTssQ
 kvzi9JL5k4x4jxJ1vWqFF+GX2BghQZN/c5A5ABHQL4mgwFCtfdrDJnkF3
 bpSoz9o+RjD7RZV944hCVp3ZRQbNaoNi/Q1Y4fgaDHS1kJrHU0xchq6q2
 NBANBBkds33DZRX8ETKhw6+SIf8qNjaaQPFTD0K2Ej+pz3Jz99mc2A75y
 yverEqTONF0eHmFm9L+jm4qyIIqd2diPHzTXFdRX8cg7G17VT6W0tjbKv
 4TTioxMTAORCpzxE9zJfPc+I3/N+bfThGRhKKHwATSQqiW/KfP1taojxQ
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MUvgAZxe
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 630f5743f8f6a92d5adc329aa0c9fc27b1b028f2
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 630f5743f8f6a92d5adc329aa0c9fc27b1b028f2  idpf: configure SRIOV and add other ndo_ops

elapsed time: 727m

configs tested: 121
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r036-20230616   gcc  
arc                  randconfig-r043-20230616   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                     am200epdkit_defconfig   clang
arm                                 defconfig   gcc  
arm                          gemini_defconfig   gcc  
arm                   milbeaut_m10v_defconfig   clang
arm                        mvebu_v5_defconfig   clang
arm                  randconfig-r003-20230616   gcc  
arm                  randconfig-r033-20230616   gcc  
arm                  randconfig-r046-20230616   clang
arm                           sama5_defconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r023-20230616   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r015-20230616   gcc  
hexagon              randconfig-r041-20230616   clang
hexagon              randconfig-r045-20230616   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230616   clang
i386         buildonly-randconfig-r005-20230616   clang
i386         buildonly-randconfig-r006-20230616   clang
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230616   clang
i386                 randconfig-i002-20230616   clang
i386                 randconfig-i003-20230616   clang
i386                 randconfig-i004-20230616   clang
i386                 randconfig-i005-20230616   clang
i386                 randconfig-i006-20230616   clang
i386                 randconfig-i011-20230616   gcc  
i386                 randconfig-i012-20230616   gcc  
i386                 randconfig-i013-20230616   gcc  
i386                 randconfig-i014-20230616   gcc  
i386                 randconfig-i015-20230616   gcc  
i386                 randconfig-i016-20230616   gcc  
i386                 randconfig-r005-20230616   clang
i386                 randconfig-r006-20230616   clang
i386                 randconfig-r014-20230616   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r004-20230616   gcc  
loongarch            randconfig-r011-20230616   gcc  
loongarch            randconfig-r012-20230616   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                        stmark2_defconfig   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                      maltasmvp_defconfig   gcc  
mips                 randconfig-r002-20230616   gcc  
mips                         rt305x_defconfig   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r025-20230616   gcc  
nios2                randconfig-r032-20230616   gcc  
nios2                randconfig-r034-20230616   gcc  
openrisc                            defconfig   gcc  
parisc                           alldefconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r024-20230616   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                      arches_defconfig   gcc  
powerpc                  mpc866_ads_defconfig   clang
powerpc                    socrates_defconfig   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230616   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r021-20230616   gcc  
s390                 randconfig-r022-20230616   gcc  
s390                 randconfig-r044-20230616   gcc  
sh                               allmodconfig   gcc  
sh                            migor_defconfig   gcc  
sh                          r7785rp_defconfig   gcc  
sh                             sh03_defconfig   gcc  
sh                            shmin_defconfig   gcc  
sh                          urquell_defconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r031-20230616   gcc  
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r035-20230616   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230616   clang
x86_64       buildonly-randconfig-r002-20230616   clang
x86_64       buildonly-randconfig-r003-20230616   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230617   gcc  
x86_64               randconfig-a002-20230617   gcc  
x86_64               randconfig-a003-20230617   gcc  
x86_64               randconfig-a004-20230617   gcc  
x86_64               randconfig-a005-20230617   gcc  
x86_64               randconfig-a006-20230617   gcc  
x86_64               randconfig-a011-20230616   gcc  
x86_64               randconfig-a012-20230616   gcc  
x86_64               randconfig-a013-20230616   gcc  
x86_64               randconfig-a014-20230616   gcc  
x86_64               randconfig-a015-20230616   gcc  
x86_64               randconfig-a016-20230616   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r016-20230616   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
