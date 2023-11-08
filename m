Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A2DCE7E52BA
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Nov 2023 10:40:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 21B0161041;
	Wed,  8 Nov 2023 09:40:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 21B0161041
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699436401;
	bh=t9bbEgZ6NVrJNuTEgRgDbB7NtdoF0BfYH+qK4oi/LvA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Oiz5au/hoT4U4/4yI73YXf0pmRQi7ANKmpxJpnFYH6pW0Oac4Bo5FshP6I1uU5GFn
	 C+zFN47cD1YWZ3kHR7iChCuqkg5u0fuNRBC0Vm7JWRhyCvOunBcBrk4Qw0X4FUfKzz
	 5dmLSrQzZUK6HwEQVUpwyin+pj81Q11Y927pwnDpqo3sNhSoD/C2G9JObC2TtdRYHs
	 oENDYiUnDCe36v/1unEvtoix//z7NF7m589KXAahzWdEryaCPOvkWPlqwfBhPzWIgY
	 M2Ux9PQLr/1TgegWx7J8Bo/DclH434/jmgh/Kan5iFiKGED/qeP+tPbT3fP7nem7/M
	 +LWtIFnrC63uQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lamfXzZTsuGL; Wed,  8 Nov 2023 09:40:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8692461025;
	Wed,  8 Nov 2023 09:39:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8692461025
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2D2651BF423
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Nov 2023 09:39:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F07DB40162
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Nov 2023 09:39:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F07DB40162
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tQwVoPwIL10B for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Nov 2023 09:39:53 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4956340084
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Nov 2023 09:39:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4956340084
X-IronPort-AV: E=McAfee;i="6600,9927,10887"; a="456223585"
X-IronPort-AV: E=Sophos;i="6.03,285,1694761200"; d="scan'208";a="456223585"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2023 01:39:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10887"; a="763004528"
X-IronPort-AV: E=Sophos;i="6.03,285,1694761200"; d="scan'208";a="763004528"
Received: from lkp-server01.sh.intel.com (HELO 17d9e85e5079) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 08 Nov 2023 01:39:39 -0800
Received: from kbuild by 17d9e85e5079 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1r0f28-0007rF-39
 for intel-wired-lan@lists.osuosl.org; Wed, 08 Nov 2023 09:39:36 +0000
Date: Wed, 08 Nov 2023 17:39:08 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202311081706.VpKFNOIo-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699436393; x=1730972393;
 h=date:from:to:subject:message-id;
 bh=uS6RfrEwJnmS2N5NtWEPlP9JfKoigfaCOORAUil848A=;
 b=fPG0pNDaqagi9hBKifRJEmfmIJk0EKCodyzAt6hHUonhrN3RC07aOv+3
 SM7Pl/RQKm3CAi64X9vJREziWI+Yo0nTvbPOJcm7S3eYvbQlzRzogJsGB
 Rmy0caL9ILZtTZmyrVHvPexZknQENAi/SgRvhCfHg6SnEG/+EdCkTjZY3
 GZ9iQYzGMvOw4uHBaUAwu0pANy8ZFtQAz/PWYa9BSc+vD+avoYxas4Nn6
 SF/8e94D9Q2dqyyRPdxdOfF7mjk1vUNTmhhncYXYkHmeaaB4suSvIsmOX
 KseycTDN9zufm0tBQSeAkt2T9DgC3BOWJTaAW5LZTDDVUJBLxUEj/PDgE
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fPG0pNDa
Subject: [Intel-wired-lan] [tnguy-net-queue:main] BUILD SUCCESS
 115c0f4d58574524ed7fbbcce1b0a86aa5249db1
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git main
branch HEAD: 115c0f4d58574524ed7fbbcce1b0a86aa5249db1  idpf: fix potential use-after-free in idpf_tso()

elapsed time: 1838m

configs tested: 253
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              alldefconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                     haps_hs_smp_defconfig   gcc  
arc                   randconfig-001-20231107   gcc  
arc                   randconfig-001-20231108   gcc  
arc                   randconfig-002-20231107   gcc  
arc                   randconfig-002-20231108   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                         assabet_defconfig   gcc  
arm                         at91_dt_defconfig   gcc  
arm                         bcm2835_defconfig   clang
arm                                 defconfig   gcc  
arm                          exynos_defconfig   gcc  
arm                      footbridge_defconfig   gcc  
arm                          gemini_defconfig   gcc  
arm                         mv78xx0_defconfig   clang
arm                       omap2plus_defconfig   gcc  
arm                         orion5x_defconfig   clang
arm                          pxa3xx_defconfig   gcc  
arm                   randconfig-001-20231107   gcc  
arm                   randconfig-001-20231108   gcc  
arm                   randconfig-002-20231107   gcc  
arm                   randconfig-002-20231108   gcc  
arm                   randconfig-003-20231107   gcc  
arm                   randconfig-003-20231108   gcc  
arm                   randconfig-004-20231107   gcc  
arm                   randconfig-004-20231108   gcc  
arm                             rpc_defconfig   gcc  
arm                           sunxi_defconfig   gcc  
arm                           u8500_defconfig   gcc  
arm64                            allmodconfig   gcc  
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20231107   gcc  
arm64                 randconfig-001-20231108   gcc  
arm64                 randconfig-002-20231107   gcc  
arm64                 randconfig-002-20231108   gcc  
arm64                 randconfig-003-20231107   gcc  
arm64                 randconfig-003-20231108   gcc  
arm64                 randconfig-004-20231107   gcc  
arm64                 randconfig-004-20231108   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20231107   gcc  
csky                  randconfig-001-20231108   gcc  
csky                  randconfig-002-20231107   gcc  
csky                  randconfig-002-20231108   gcc  
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20231107   gcc  
i386                  randconfig-001-20231108   gcc  
i386                  randconfig-002-20231107   gcc  
i386                  randconfig-002-20231108   gcc  
i386                  randconfig-003-20231107   gcc  
i386                  randconfig-003-20231108   gcc  
i386                  randconfig-004-20231107   gcc  
i386                  randconfig-004-20231108   gcc  
i386                  randconfig-005-20231107   gcc  
i386                  randconfig-005-20231108   gcc  
i386                  randconfig-006-20231107   gcc  
i386                  randconfig-006-20231108   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20231107   gcc  
loongarch             randconfig-001-20231108   gcc  
loongarch             randconfig-002-20231107   gcc  
loongarch             randconfig-002-20231108   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                       m5208evb_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                 decstation_r4k_defconfig   gcc  
mips                        omega2p_defconfig   clang
mips                          rb532_defconfig   gcc  
mips                        vocore2_defconfig   gcc  
mips                           xway_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20231107   gcc  
nios2                 randconfig-001-20231108   gcc  
nios2                 randconfig-002-20231107   gcc  
nios2                 randconfig-002-20231108   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20231107   gcc  
parisc                randconfig-001-20231108   gcc  
parisc                randconfig-002-20231107   gcc  
parisc                randconfig-002-20231108   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   gcc  
powerpc                     asp8347_defconfig   gcc  
powerpc                       eiger_defconfig   gcc  
powerpc                        fsp2_defconfig   clang
powerpc                     kmeter1_defconfig   clang
powerpc                     ksi8560_defconfig   clang
powerpc                      makalu_defconfig   gcc  
powerpc                     mpc512x_defconfig   clang
powerpc               randconfig-001-20231107   gcc  
powerpc               randconfig-001-20231108   gcc  
powerpc               randconfig-002-20231107   gcc  
powerpc               randconfig-002-20231108   gcc  
powerpc               randconfig-003-20231107   gcc  
powerpc               randconfig-003-20231108   gcc  
powerpc                     skiroot_defconfig   clang
powerpc                      tqm8xx_defconfig   gcc  
powerpc64                           defconfig   gcc  
powerpc64             randconfig-001-20231107   gcc  
powerpc64             randconfig-001-20231108   gcc  
powerpc64             randconfig-002-20231107   gcc  
powerpc64             randconfig-002-20231108   gcc  
powerpc64             randconfig-003-20231107   gcc  
powerpc64             randconfig-003-20231108   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20231107   gcc  
riscv                 randconfig-001-20231108   gcc  
riscv                 randconfig-002-20231107   gcc  
riscv                 randconfig-002-20231108   gcc  
riscv                          rv32_defconfig   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20231107   gcc  
s390                  randconfig-001-20231108   gcc  
s390                  randconfig-002-20231107   gcc  
s390                  randconfig-002-20231108   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                          landisk_defconfig   gcc  
sh                            migor_defconfig   gcc  
sh                          polaris_defconfig   gcc  
sh                          r7785rp_defconfig   gcc  
sh                    randconfig-001-20231107   gcc  
sh                    randconfig-001-20231108   gcc  
sh                    randconfig-002-20231107   gcc  
sh                    randconfig-002-20231108   gcc  
sh                      rts7751r2d1_defconfig   gcc  
sh                           se7206_defconfig   gcc  
sh                           se7619_defconfig   gcc  
sh                             sh03_defconfig   gcc  
sh                   sh7724_generic_defconfig   gcc  
sh                   sh7770_generic_defconfig   gcc  
sh                            titan_defconfig   gcc  
sparc                            alldefconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                 randconfig-001-20231107   gcc  
sparc                 randconfig-001-20231108   gcc  
sparc                 randconfig-002-20231107   gcc  
sparc                 randconfig-002-20231108   gcc  
sparc                       sparc32_defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20231107   gcc  
sparc64               randconfig-001-20231108   gcc  
sparc64               randconfig-002-20231107   gcc  
sparc64               randconfig-002-20231108   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                    randconfig-001-20231107   gcc  
um                    randconfig-001-20231108   gcc  
um                    randconfig-002-20231107   gcc  
um                    randconfig-002-20231108   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                randconfig-001-20231107   gcc  
x86_64                randconfig-001-20231108   gcc  
x86_64                randconfig-002-20231107   gcc  
x86_64                randconfig-002-20231108   gcc  
x86_64                randconfig-003-20231107   gcc  
x86_64                randconfig-003-20231108   gcc  
x86_64                randconfig-004-20231107   gcc  
x86_64                randconfig-004-20231108   gcc  
x86_64                randconfig-005-20231107   gcc  
x86_64                randconfig-005-20231108   gcc  
x86_64                randconfig-006-20231107   gcc  
x86_64                randconfig-006-20231108   gcc  
x86_64                randconfig-011-20231107   gcc  
x86_64                randconfig-011-20231108   gcc  
x86_64                randconfig-012-20231107   gcc  
x86_64                randconfig-012-20231108   gcc  
x86_64                randconfig-013-20231107   gcc  
x86_64                randconfig-013-20231108   gcc  
x86_64                randconfig-014-20231107   gcc  
x86_64                randconfig-014-20231108   gcc  
x86_64                randconfig-015-20231107   gcc  
x86_64                randconfig-015-20231108   gcc  
x86_64                randconfig-016-20231107   gcc  
x86_64                randconfig-016-20231108   gcc  
x86_64                           rhel-8.3-bpf   gcc  
x86_64                          rhel-8.3-func   gcc  
x86_64                    rhel-8.3-kselftests   gcc  
x86_64                         rhel-8.3-kunit   gcc  
x86_64                           rhel-8.3-ltp   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa                              defconfig   gcc  
xtensa                randconfig-001-20231107   gcc  
xtensa                randconfig-001-20231108   gcc  
xtensa                randconfig-002-20231107   gcc  
xtensa                randconfig-002-20231108   gcc  
xtensa                         virt_defconfig   gcc  
xtensa                    xip_kc705_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
