Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C03B876090D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Jul 2023 07:09:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 64C6881E0E;
	Tue, 25 Jul 2023 05:09:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 64C6881E0E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690261773;
	bh=pHXQ6OIf8B5/XLRfJorUIv8iLRGfo1YOwRX4IlSyXRw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=m9Uyr0N9gVmJijlZxbSqbz3dRhnlRsXJCCZFf9b53+r8jxNutLR6GurD5HOy36+kC
	 NXLpDkoZ3s9InogFEdLo/jG5CWckNQfcTFzYC+9pZPX7hM0jh8VUgJlidKThDhOvid
	 aj0nd5I0Oc06hpqLF5N/qfqMnDScpVeKyPXbBy7WM20+qZngxxtIImWbOQzVGTKk+J
	 0cU3NlsIiwRuMlGrnQb29IP6CqQGs10bJO7nydTOHwWJuGgYCuMCPbwIN++jvZLPjc
	 PlMzlAuCmcxVeiTCLi/Ayaw8fHdc5sEdIM4lSW+b1xCvH31pmMWwPL3P43I2Bg6TzF
	 wTpbnFtCAvdZQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uAestPps4J-r; Tue, 25 Jul 2023 05:09:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1B7DC81AC4;
	Tue, 25 Jul 2023 05:09:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1B7DC81AC4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5D2A91BF319
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 05:09:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 34ABF60AAC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 05:09:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 34ABF60AAC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9_HB6mHhHo45 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Jul 2023 05:09:26 +0000 (UTC)
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2813360A8D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 05:09:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2813360A8D
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="357620753"
X-IronPort-AV: E=Sophos;i="6.01,229,1684825200"; d="scan'208";a="357620753"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2023 22:09:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="1056672811"
X-IronPort-AV: E=Sophos;i="6.01,229,1684825200"; d="scan'208";a="1056672811"
Received: from lkp-server02.sh.intel.com (HELO 36946fcf73d7) ([10.239.97.151])
 by fmsmga005.fm.intel.com with ESMTP; 24 Jul 2023 22:09:24 -0700
Received: from kbuild by 36946fcf73d7 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qOAI1-000AM6-1h
 for intel-wired-lan@lists.osuosl.org; Tue, 25 Jul 2023 05:09:02 +0000
Date: Tue, 25 Jul 2023 13:07:35 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202307251333.VSD0HfCY-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690261766; x=1721797766;
 h=date:from:to:subject:message-id;
 bh=nZ3boccm1T8z+yZgWuztLRvqJisthw3boFRuBZAcWuQ=;
 b=XnOlklKpwGvRebYYS3KJ0T8zLxgFR2gqL6ehB0SfTCENLuX6O7KdnwW2
 4swapWxkFxeJvbdQbYksk1mRBaXd6gsegUtWMmxObDUQ0iqhjGNpFvf4s
 2v/C1XPJoE7It40PCWEPssHbjOmPyjn6Ub4Oc+LlWAz8wtF4C0ZQmlioO
 lIOTnHq4AoY/kuJpyrfDQDp0l9D0+JELtGXX359IQfNblTD9QnCk+67mH
 ctm4EzKIObB+fhuiyiVC6SrwWjQdrkPfVT3Xu4HRbnhzalcQpW8ccBM7a
 Reb2844TJ3553rOfbDHoVHaSJZfLUkcAiiQk4MtCH9gCz+tDeNZkHJw24
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XnOlklKp
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 d129c2a245bfd59035cc661364b056c38f2bf18e
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: d129c2a245bfd59035cc661364b056c38f2bf18e  ice: add tracepoints for the switchdev bridge

elapsed time: 721m

configs tested: 105
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r006-20230724   gcc  
arc                  randconfig-r024-20230724   gcc  
arc                  randconfig-r043-20230724   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r046-20230724   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
hexagon              randconfig-r041-20230724   clang
hexagon              randconfig-r045-20230724   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230724   gcc  
i386         buildonly-randconfig-r005-20230724   gcc  
i386         buildonly-randconfig-r006-20230724   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230724   gcc  
i386                 randconfig-i002-20230724   gcc  
i386                 randconfig-i003-20230724   gcc  
i386                 randconfig-i004-20230724   gcc  
i386                 randconfig-i005-20230724   gcc  
i386                 randconfig-i006-20230724   gcc  
i386                 randconfig-i011-20230724   clang
i386                 randconfig-i012-20230724   clang
i386                 randconfig-i013-20230724   clang
i386                 randconfig-i014-20230724   clang
i386                 randconfig-i015-20230724   clang
i386                 randconfig-i016-20230724   clang
i386                 randconfig-r016-20230724   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze           randconfig-r012-20230724   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r015-20230724   gcc  
mips                 randconfig-r032-20230724   clang
mips                 randconfig-r034-20230724   clang
mips                 randconfig-r036-20230724   clang
nios2                               defconfig   gcc  
openrisc             randconfig-r013-20230724   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r021-20230724   gcc  
parisc               randconfig-r023-20230724   gcc  
parisc               randconfig-r035-20230724   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r004-20230724   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r014-20230724   clang
riscv                randconfig-r042-20230724   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r031-20230724   gcc  
s390                 randconfig-r044-20230724   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r001-20230724   gcc  
sh                   randconfig-r011-20230724   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r005-20230724   gcc  
sparc                randconfig-r025-20230724   gcc  
sparc64              randconfig-r003-20230724   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230724   gcc  
x86_64       buildonly-randconfig-r002-20230724   gcc  
x86_64       buildonly-randconfig-r003-20230724   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-x001-20230724   clang
x86_64               randconfig-x002-20230724   clang
x86_64               randconfig-x003-20230724   clang
x86_64               randconfig-x004-20230724   clang
x86_64               randconfig-x005-20230724   clang
x86_64               randconfig-x006-20230724   clang
x86_64               randconfig-x011-20230724   gcc  
x86_64               randconfig-x012-20230724   gcc  
x86_64               randconfig-x013-20230724   gcc  
x86_64               randconfig-x014-20230724   gcc  
x86_64               randconfig-x015-20230724   gcc  
x86_64               randconfig-x016-20230724   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
