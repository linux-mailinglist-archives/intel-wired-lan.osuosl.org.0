Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1641273F047
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Jun 2023 03:20:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7762B41873;
	Tue, 27 Jun 2023 01:20:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7762B41873
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687828852;
	bh=NjdWlDRI+sqijMmMcrPcGRe7Q+uVw6dLBIIFRXERVHg=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=7lePd7K6OeprKdBDln2iCUFfPyWkUER+cOopxMQWnypFbb2h9ZsxpQ3mQDcmE6tQn
	 1lkyq3ybp4TTNgVnYjxjCLr8T3KAmVyD3bOQMNfBAv8jrO5TD0yTBmBmtyqGT4sIJP
	 a1Ttx4VFtxv/PDri2h2T9zNBEChcKuSOXICLJX3AtuxlF7MzEEqYf7kJ0nGaZSN0Jo
	 eBo+6IRxECpz4EQDZs1s0zX4LYN61j/aFgA85LxZiwuc63UDd5Z8Jycl+FATgxgp7p
	 ZaR6N5QklE73j9IKfIjJNVEAkDMhp9tJHvuxLXJtczKnmL1QclP2fH43bwUAQ7dfbc
	 PNolNiNfPgTRQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pnhX-K3CDJ0k; Tue, 27 Jun 2023 01:20:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E2A2841858;
	Tue, 27 Jun 2023 01:20:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E2A2841858
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7845F1BF955
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jun 2023 01:20:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4D04A81A24
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jun 2023 01:20:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4D04A81A24
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dHwC3jmd7Vdp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Jun 2023 01:20:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3A63D819F3
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3A63D819F3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jun 2023 01:20:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="391879242"
X-IronPort-AV: E=Sophos;i="6.01,161,1684825200"; d="scan'208";a="391879242"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2023 18:20:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="719592919"
X-IronPort-AV: E=Sophos;i="6.01,161,1684825200"; d="scan'208";a="719592919"
Received: from lkp-server01.sh.intel.com (HELO 783282924a45) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 26 Jun 2023 18:20:40 -0700
Received: from kbuild by 783282924a45 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qDxNo-000BMH-07
 for intel-wired-lan@lists.osuosl.org; Tue, 27 Jun 2023 01:20:40 +0000
Date: Tue, 27 Jun 2023 09:20:26 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202306270924.X7yWixRM-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687828842; x=1719364842;
 h=date:from:to:subject:message-id;
 bh=kE+gj7nKMmE8fRW9aaVc/A7GJcvqwIgT10xldwyjQ/8=;
 b=Em7shL1p0FCxfVL4v9/du/UHkwsQEnUIr75SKUTzu5qM/q0q5up6VW03
 4gLu5d9xZpPqThW4rWkOGHgXw5ba44OfvTae2kxTpcFUWUVZqWomHH1M1
 niHGSchNHRFGCuooOJXs3dxHlJed4ncu8L+mwb3aOHUpkbRyqwLo1Iadp
 uBfm/5KLUVUlrrZFkGUnRUjBH/D4rImdRm09jKUT0eZxLfU7w03dZ3Ilk
 8b6MgRsK9/ZvdULy11sNZ8ZHUMVk4ut2X5EuZ6ImL8peX7hk3QoJUKZAW
 G6ZUH+AXtMgJ3F/GS2J6D2WwWcg58QzG85e2w6zosf2aXDLwyb3Y5y+Ip
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Em7shL1p
Subject: [Intel-wired-lan] [tnguy-next-queue:40GbE] BUILD SUCCESS
 a4aadf0f5905661cd25c366b96cc1c840f05b756
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 40GbE
branch HEAD: a4aadf0f5905661cd25c366b96cc1c840f05b756  iavf: make functions static where possible

elapsed time: 6240m

configs tested: 111
configs skipped: 7

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc                          axs103_defconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r036-20230622   gcc  
arc                  randconfig-r043-20230622   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                         at91_dt_defconfig   gcc  
arm                        clps711x_defconfig   gcc  
arm                          collie_defconfig   clang
arm                                 defconfig   gcc  
arm                        keystone_defconfig   gcc  
arm                          pxa910_defconfig   gcc  
arm                  randconfig-r046-20230622   clang
arm                        shmobile_defconfig   gcc  
arm                           spitz_defconfig   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
hexagon              randconfig-r041-20230622   clang
hexagon              randconfig-r045-20230622   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230622   clang
i386         buildonly-randconfig-r005-20230622   clang
i386         buildonly-randconfig-r006-20230622   clang
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230622   clang
i386                 randconfig-i002-20230622   clang
i386                 randconfig-i003-20230622   clang
i386                 randconfig-i004-20230622   clang
i386                 randconfig-i005-20230622   clang
i386                 randconfig-i006-20230622   clang
i386                 randconfig-i011-20230622   gcc  
i386                 randconfig-i012-20230622   gcc  
i386                 randconfig-i013-20230622   gcc  
i386                 randconfig-i014-20230622   gcc  
i386                 randconfig-i015-20230622   gcc  
i386                 randconfig-i016-20230622   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r003-20230621   gcc  
loongarch            randconfig-r005-20230621   gcc  
loongarch            randconfig-r035-20230622   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r032-20230622   gcc  
microblaze           randconfig-r012-20230622   gcc  
microblaze           randconfig-r014-20230622   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                        bcm63xx_defconfig   clang
mips                     decstation_defconfig   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r006-20230621   gcc  
nios2                randconfig-r011-20230622   gcc  
nios2                randconfig-r025-20230621   gcc  
openrisc             randconfig-r015-20230622   gcc  
openrisc             randconfig-r016-20230622   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r021-20230621   gcc  
parisc               randconfig-r026-20230621   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                        fsp2_defconfig   clang
powerpc                  iss476-smp_defconfig   gcc  
powerpc                      makalu_defconfig   gcc  
powerpc              randconfig-r022-20230621   clang
powerpc                      tqm8xx_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230622   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r001-20230621   gcc  
s390                 randconfig-r023-20230621   clang
s390                 randconfig-r044-20230622   gcc  
sh                               allmodconfig   gcc  
sh                          sdk7780_defconfig   gcc  
sh                          sdk7786_defconfig   gcc  
sh                           se7343_defconfig   gcc  
sh                           se7751_defconfig   gcc  
sh                  sh7785lcr_32bit_defconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230622   clang
x86_64       buildonly-randconfig-r002-20230622   clang
x86_64       buildonly-randconfig-r003-20230622   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-r002-20230621   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r004-20230621   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
