Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 770657A2E0F
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 Sep 2023 07:28:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8583183D35;
	Sat, 16 Sep 2023 05:28:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8583183D35
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694842107;
	bh=TmPPBLtzYdkA+qpn5cLg+BmrvYVCWMon00rPubjrA4Y=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ez3dJhigzzncz7j9eZ2yWPVeBWAAKmfB4/0/BlzHhe5qyben9QJ7kA4ZvAAFk6ylX
	 Z4IHbZSUrkXhL4opO3TkmKyNVCbem7YrhH4COuJIGJG/jWjI3V0+FKupGvmVZ4DG6g
	 zlHIgTsmGoIg/msq+htZjeke6ZYeISvagU2Fd1EWm8BBFY50p+pspm0l4ZjrYIl0Vq
	 vEv2uBWL2pZK0zMjQGRBETSxSl3+SwAX8dTZhvgbwVW9wdd1ghAg0oDpxOYg4hpmt+
	 hCNSqj0908GJN0wVc+wE1J4skpC1udIyjQpTiyMQVj/l7ZuqxYTSaEQ+YJuPPgaEf4
	 iroHv75ZWklbQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id arooKfw7UQ-B; Sat, 16 Sep 2023 05:28:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 29F6F83D1D;
	Sat, 16 Sep 2023 05:28:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 29F6F83D1D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D2FAE1BF370
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Sep 2023 05:28:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A257040580
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Sep 2023 05:28:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A257040580
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DFnci2WguPfP for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 Sep 2023 05:28:20 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 57D9240443
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Sep 2023 05:28:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 57D9240443
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="364441293"
X-IronPort-AV: E=Sophos;i="6.02,151,1688454000"; d="scan'208";a="364441293"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 22:28:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="721920703"
X-IronPort-AV: E=Sophos;i="6.02,151,1688454000"; d="scan'208";a="721920703"
Received: from lkp-server02.sh.intel.com (HELO 9ef86b2655e5) ([10.239.97.151])
 by orsmga006.jf.intel.com with ESMTP; 15 Sep 2023 22:28:18 -0700
Received: from kbuild by 9ef86b2655e5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qhNqq-0003uN-1R
 for intel-wired-lan@lists.osuosl.org; Sat, 16 Sep 2023 05:28:16 +0000
Date: Sat, 16 Sep 2023 13:28:15 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202309161313.ueeQ68If-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694842100; x=1726378100;
 h=date:from:to:subject:message-id;
 bh=uKQupeEtCWTk4GoxL3knWAusdMjOvGNi8mJuXUJf6ZE=;
 b=mnVCxIuW3Z2hEolQJeO8Sla4lxX4q564uSn8MrCzgEFj5eZi7n1tYhFz
 1v3ZNykNH9lrfXoE7/puyDr09Wu/iQn5jXTh/M+cf0t+qKtOIA5lIkZ/3
 rJRr0h/e97F0kkIuwOEjS+fTwj9N6dLANm8rhVskEs9+vC7yNk6eB0GAv
 hxDjwRhno4dbAMUCat/uio5RTSeOW5Pvou7UARtw0lBMFIBl4Owy8fxvk
 NLnmTnn1iNmCvmKx+1uXxSin/3J1/A3G8GkkilwLTju5v4411drK8AHPa
 Hm/cmIi1xkPOJl8IdFqpN9BLDMBoaX1RtswnbcN9PMNmIn/EAQBH3A2Z2
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mnVCxIuW
Subject: [Intel-wired-lan] [tnguy-net-queue:40GbE] BUILD SUCCESS
 d0d362ffa33da4acdcf7aee2116ceef8c8fef658
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 40GbE
branch HEAD: d0d362ffa33da4acdcf7aee2116ceef8c8fef658  i40e: Fix VF VLAN offloading when port VLAN is configured

elapsed time: 727m

configs tested: 149
configs skipped: 2

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
arc                   randconfig-001-20230916   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                            dove_defconfig   clang
arm                   randconfig-001-20230916   gcc  
arm64                            allmodconfig   gcc  
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                             alldefconfig   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20230916   gcc  
i386         buildonly-randconfig-002-20230916   gcc  
i386         buildonly-randconfig-003-20230916   gcc  
i386         buildonly-randconfig-004-20230916   gcc  
i386         buildonly-randconfig-005-20230916   gcc  
i386         buildonly-randconfig-006-20230916   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20230916   gcc  
i386                  randconfig-002-20230916   gcc  
i386                  randconfig-003-20230916   gcc  
i386                  randconfig-004-20230916   gcc  
i386                  randconfig-005-20230916   gcc  
i386                  randconfig-006-20230916   gcc  
i386                  randconfig-011-20230916   gcc  
i386                  randconfig-012-20230916   gcc  
i386                  randconfig-013-20230916   gcc  
i386                  randconfig-014-20230916   gcc  
i386                  randconfig-015-20230916   gcc  
i386                  randconfig-016-20230916   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20230916   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                        m5407c3_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                           jazz_defconfig   gcc  
mips                      maltasmvp_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
openrisc                         allmodconfig   gcc  
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
powerpc                          allyesconfig   gcc  
powerpc                      arches_defconfig   gcc  
powerpc                     asp8347_defconfig   gcc  
powerpc                   motionpro_defconfig   gcc  
powerpc                      pasemi_defconfig   gcc  
powerpc                     ppa8548_defconfig   clang
powerpc                         wii_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20230916   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20230916   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                          sdk7786_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                 randconfig-001-20230916   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-001-20230916   gcc  
x86_64       buildonly-randconfig-002-20230916   gcc  
x86_64       buildonly-randconfig-003-20230916   gcc  
x86_64       buildonly-randconfig-004-20230916   gcc  
x86_64       buildonly-randconfig-005-20230916   gcc  
x86_64       buildonly-randconfig-006-20230916   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20230916   gcc  
x86_64                randconfig-002-20230916   gcc  
x86_64                randconfig-003-20230916   gcc  
x86_64                randconfig-004-20230916   gcc  
x86_64                randconfig-005-20230916   gcc  
x86_64                randconfig-006-20230916   gcc  
x86_64                randconfig-011-20230916   gcc  
x86_64                randconfig-012-20230916   gcc  
x86_64                randconfig-013-20230916   gcc  
x86_64                randconfig-014-20230916   gcc  
x86_64                randconfig-015-20230916   gcc  
x86_64                randconfig-016-20230916   gcc  
x86_64                randconfig-071-20230916   gcc  
x86_64                randconfig-072-20230916   gcc  
x86_64                randconfig-073-20230916   gcc  
x86_64                randconfig-074-20230916   gcc  
x86_64                randconfig-075-20230916   gcc  
x86_64                randconfig-076-20230916   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
