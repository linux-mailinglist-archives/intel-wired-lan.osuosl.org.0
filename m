Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCE8B89A99E
	for <lists+intel-wired-lan@lfdr.de>; Sat,  6 Apr 2024 09:53:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6759440433;
	Sat,  6 Apr 2024 07:53:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mhn-Im-dIUUH; Sat,  6 Apr 2024 07:53:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F31D640467
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712390011;
	bh=mixdJm9p+GLimrqNS1+7k9f/w7HQghyRPJmjRkycVRc=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=bGRYJCbHPjjVAJ2dWkox1T9jwFSa1SxAGKiO4dtevTcT/vjxLpjviBVEEvAfTJFQg
	 SUEzRq2OFwWoJm0eM3OTz5wUvJBV/1QsdtnJ6s0MRVZujogkQlkYEm2tRHwRx6Sjo7
	 R2hp36g5Q0YcwnyZhEMEO8T1lqnnm9Co8ruDbGY4NGZ3KZEnXqBQkzqhAOyyPm6/Cs
	 eKk22RikB29XlQejd3uRldJbG0t32Xh+tYWM7KVO8u51SPXyo63drmuKn8HEqoGZRt
	 a/FQLfWSZCTzEJziLKBwWIT2KDWlY7yzG75oQwf0L9mTRXnYCClA/Sn+i6Uidrl9tN
	 AhScfsPruyJpA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F31D640467;
	Sat,  6 Apr 2024 07:53:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9B1321BF390
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Apr 2024 07:53:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 874AD81FAF
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Apr 2024 07:53:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id m1qNckVxwNrY for <intel-wired-lan@lists.osuosl.org>;
 Sat,  6 Apr 2024 07:53:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4C7D081FA0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4C7D081FA0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4C7D081FA0
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Apr 2024 07:53:27 +0000 (UTC)
X-CSE-ConnectionGUID: wws5Dl3vR1W5XjHm05kqYQ==
X-CSE-MsgGUID: i0sQrS4aSiaxcqh4F1O8NQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11035"; a="18862637"
X-IronPort-AV: E=Sophos;i="6.07,182,1708416000"; d="scan'208";a="18862637"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2024 00:53:27 -0700
X-CSE-ConnectionGUID: RcfNrrJTSSa7WC3NH4r/rQ==
X-CSE-MsgGUID: Cid2BSaPR9aSeeK7vVedTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,182,1708416000"; d="scan'208";a="24113417"
Received: from lkp-server01.sh.intel.com (HELO e61807b1d151) ([10.239.97.150])
 by orviesa004.jf.intel.com with ESMTP; 06 Apr 2024 00:53:25 -0700
Received: from kbuild by e61807b1d151 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rt0ra-0003FY-2g
 for intel-wired-lan@lists.osuosl.org; Sat, 06 Apr 2024 07:53:22 +0000
Date: Sat, 06 Apr 2024 15:52:24 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202404061522.Wn1RVcc0-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712390008; x=1743926008;
 h=date:from:to:subject:message-id;
 bh=I1HsSDOQCdXb+6Ig/YrTvKsKYAjlZjmsfuwBpgduOeI=;
 b=i99k8qc/hs9QjqOSmm+i9Bke8yFaiSrD3NY8W14db3OkfFhhIKhZKkcw
 zd6V3o3h1hCGfYTgyom430T2h4SUU80oC+9Y1OWvQx2dFkwJQXX7iDaq4
 EWrsD63YWkuSL38MNYG47HE3n1H59oZUi4Z4wdhVJ9rohSyOHngB5UkLg
 +rVt5TuDoQ9ERnOEkzsYWWpjRtyNpRW+Nlx9ZtWdEP8DQ+Qx0MCagaSe2
 t+MCNjCj34K7f1msQHYSC9ylH7Fl+CQ/tgA9KuXV/4WjBsV0fTd/eWdqn
 apn0WiCrz4kH3eI0AUrBOVGAiFBKiBlt5jtrYlQc3HEoptFny5ZzaLspX
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=i99k8qc/
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 d76c740b2eaaddc5fc3a8b21eaec5b6b11e8c3f5
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
branch HEAD: d76c740b2eaaddc5fc3a8b21eaec5b6b11e8c3f5  Merge branch 'net-dsa-microchip-ksz8-refactor-fdb-dump-path'

elapsed time: 1712m

configs tested: 258
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
arc                         haps_hs_defconfig   gcc  
arc                        nsim_700_defconfig   gcc  
arc                   randconfig-001-20240405   gcc  
arc                   randconfig-001-20240406   gcc  
arc                   randconfig-002-20240405   gcc  
arc                   randconfig-002-20240406   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                          gemini_defconfig   clang
arm                            hisi_defconfig   gcc  
arm                            mps2_defconfig   clang
arm                        multi_v5_defconfig   gcc  
arm                       netwinder_defconfig   gcc  
arm                         nhk8815_defconfig   clang
arm                          pxa168_defconfig   clang
arm                   randconfig-001-20240405   gcc  
arm                   randconfig-001-20240406   clang
arm                   randconfig-002-20240406   clang
arm                   randconfig-003-20240405   gcc  
arm                   randconfig-003-20240406   gcc  
arm                   randconfig-004-20240406   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   clang
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240405   gcc  
arm64                 randconfig-001-20240406   clang
arm64                 randconfig-002-20240405   gcc  
arm64                 randconfig-002-20240406   clang
arm64                 randconfig-003-20240405   gcc  
arm64                 randconfig-003-20240406   clang
arm64                 randconfig-004-20240405   gcc  
arm64                 randconfig-004-20240406   clang
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240405   gcc  
csky                  randconfig-001-20240406   gcc  
csky                  randconfig-002-20240405   gcc  
csky                  randconfig-002-20240406   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240406   clang
hexagon               randconfig-002-20240406   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240405   gcc  
i386         buildonly-randconfig-001-20240406   clang
i386         buildonly-randconfig-002-20240405   gcc  
i386         buildonly-randconfig-002-20240406   clang
i386         buildonly-randconfig-003-20240406   gcc  
i386         buildonly-randconfig-004-20240405   gcc  
i386         buildonly-randconfig-004-20240406   clang
i386         buildonly-randconfig-005-20240406   gcc  
i386         buildonly-randconfig-006-20240406   clang
i386                                defconfig   clang
i386                  randconfig-001-20240406   clang
i386                  randconfig-002-20240405   gcc  
i386                  randconfig-002-20240406   gcc  
i386                  randconfig-003-20240406   clang
i386                  randconfig-004-20240406   clang
i386                  randconfig-005-20240406   clang
i386                  randconfig-006-20240405   gcc  
i386                  randconfig-006-20240406   gcc  
i386                  randconfig-011-20240406   clang
i386                  randconfig-012-20240405   gcc  
i386                  randconfig-012-20240406   clang
i386                  randconfig-013-20240405   gcc  
i386                  randconfig-013-20240406   clang
i386                  randconfig-014-20240405   gcc  
i386                  randconfig-014-20240406   gcc  
i386                  randconfig-015-20240405   gcc  
i386                  randconfig-015-20240406   clang
i386                  randconfig-016-20240406   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240405   gcc  
loongarch             randconfig-001-20240406   gcc  
loongarch             randconfig-002-20240405   gcc  
loongarch             randconfig-002-20240406   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                        bcm47xx_defconfig   clang
mips                           ip27_defconfig   gcc  
mips                     loongson2k_defconfig   gcc  
mips                malta_qemu_32r6_defconfig   gcc  
mips                           mtx1_defconfig   clang
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240405   gcc  
nios2                 randconfig-001-20240406   gcc  
nios2                 randconfig-002-20240405   gcc  
nios2                 randconfig-002-20240406   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                generic-32bit_defconfig   gcc  
parisc                randconfig-001-20240405   gcc  
parisc                randconfig-001-20240406   gcc  
parisc                randconfig-002-20240405   gcc  
parisc                randconfig-002-20240406   gcc  
parisc64                            defconfig   gcc  
powerpc                      acadia_defconfig   clang
powerpc                    adder875_defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                   currituck_defconfig   clang
powerpc                       ebony_defconfig   clang
powerpc                    ge_imp3a_defconfig   gcc  
powerpc                      katmai_defconfig   clang
powerpc                      obs600_defconfig   clang
powerpc                      pcm030_defconfig   clang
powerpc                     powernv_defconfig   gcc  
powerpc               randconfig-001-20240406   clang
powerpc               randconfig-002-20240406   clang
powerpc               randconfig-003-20240406   gcc  
powerpc                      tqm8xx_defconfig   clang
powerpc64             randconfig-001-20240405   gcc  
powerpc64             randconfig-001-20240406   gcc  
powerpc64             randconfig-002-20240405   gcc  
powerpc64             randconfig-002-20240406   gcc  
powerpc64             randconfig-003-20240406   gcc  
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
riscv                    nommu_k210_defconfig   clang
riscv                 randconfig-001-20240406   gcc  
riscv                 randconfig-002-20240405   gcc  
riscv                 randconfig-002-20240406   gcc  
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                          debug_defconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240406   gcc  
s390                  randconfig-002-20240405   gcc  
s390                  randconfig-002-20240406   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                ecovec24-romimage_defconfig   gcc  
sh                        edosk7705_defconfig   gcc  
sh                             espt_defconfig   gcc  
sh                            hp6xx_defconfig   gcc  
sh                               j2_defconfig   gcc  
sh                 kfr2r09-romimage_defconfig   gcc  
sh                          r7785rp_defconfig   gcc  
sh                    randconfig-001-20240405   gcc  
sh                    randconfig-001-20240406   gcc  
sh                    randconfig-002-20240405   gcc  
sh                    randconfig-002-20240406   gcc  
sh                      rts7751r2d1_defconfig   gcc  
sh                   rts7751r2dplus_defconfig   gcc  
sh                          sdk7786_defconfig   gcc  
sh                           se7343_defconfig   gcc  
sh                           se7750_defconfig   gcc  
sh                             sh03_defconfig   gcc  
sh                            titan_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240405   gcc  
sparc64               randconfig-001-20240406   gcc  
sparc64               randconfig-002-20240405   gcc  
sparc64               randconfig-002-20240406   gcc  
um                               alldefconfig   clang
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                    randconfig-001-20240405   gcc  
um                    randconfig-001-20240406   clang
um                    randconfig-002-20240406   gcc  
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240406   clang
x86_64       buildonly-randconfig-002-20240406   gcc  
x86_64       buildonly-randconfig-003-20240405   gcc  
x86_64       buildonly-randconfig-003-20240406   clang
x86_64       buildonly-randconfig-004-20240405   gcc  
x86_64       buildonly-randconfig-004-20240406   gcc  
x86_64       buildonly-randconfig-005-20240406   gcc  
x86_64       buildonly-randconfig-006-20240406   clang
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20240406   gcc  
x86_64                randconfig-002-20240406   clang
x86_64                randconfig-003-20240406   gcc  
x86_64                randconfig-004-20240405   gcc  
x86_64                randconfig-004-20240406   clang
x86_64                randconfig-005-20240406   clang
x86_64                randconfig-006-20240405   gcc  
x86_64                randconfig-006-20240406   clang
x86_64                randconfig-011-20240406   gcc  
x86_64                randconfig-012-20240405   gcc  
x86_64                randconfig-012-20240406   clang
x86_64                randconfig-013-20240405   gcc  
x86_64                randconfig-013-20240406   clang
x86_64                randconfig-014-20240406   gcc  
x86_64                randconfig-015-20240405   gcc  
x86_64                randconfig-015-20240406   gcc  
x86_64                randconfig-016-20240405   gcc  
x86_64                randconfig-016-20240406   clang
x86_64                randconfig-071-20240405   gcc  
x86_64                randconfig-071-20240406   clang
x86_64                randconfig-072-20240405   gcc  
x86_64                randconfig-072-20240406   clang
x86_64                randconfig-073-20240405   gcc  
x86_64                randconfig-073-20240406   clang
x86_64                randconfig-074-20240405   gcc  
x86_64                randconfig-074-20240406   clang
x86_64                randconfig-075-20240405   gcc  
x86_64                randconfig-075-20240406   clang
x86_64                randconfig-076-20240405   gcc  
x86_64                randconfig-076-20240406   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                  nommu_kc705_defconfig   gcc  
xtensa                randconfig-001-20240405   gcc  
xtensa                randconfig-001-20240406   gcc  
xtensa                randconfig-002-20240405   gcc  
xtensa                randconfig-002-20240406   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
