Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 12FE195D33E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Aug 2024 18:26:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6594A400EF;
	Fri, 23 Aug 2024 16:26:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id p4YDwdwKAZQf; Fri, 23 Aug 2024 16:26:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 882EB40120
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724430400;
	bh=xsuks4au0cZ0dLiqpVbv9eH6F6QVm/FzHgbCEpXb55Y=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=9vIrHwRokpiWc0FSHanthbkschzY699OZWu70mSfRFZ183gRuRWFxdU9aCzBcauAp
	 /6n3kZp3sLrzecsxqv0aeNyodzx0y9Xv4YXePDKgrtDKb0+wdYHRTi2GosIqMBpfzU
	 0GE3KwVa8YsIGV6iVmXjXg+84P26r57bQcVFmzSRIDTQDAikDUBv2PAkd0KKAx2Q0i
	 e0dh7H0KZPiXtT3FN1khr+Q9Q6R82GdhV1IX+xIVkC5tVzenTd/xmtkvhMpG1HxArv
	 LIz0urh/qnumqG7MXWx/crqFe45wGo6Z4U8eP1MwqVN9yXnG686+IoXcEkriesTCQP
	 v1eFqYqYzvpsw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 882EB40120;
	Fri, 23 Aug 2024 16:26:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F11A81BF31F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2024 16:26:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DCA294015E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2024 16:26:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qG7SpRq82Lk2 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Aug 2024 16:26:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 00C3940026
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 00C3940026
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 00C3940026
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2024 16:26:35 +0000 (UTC)
X-CSE-ConnectionGUID: a6HUpHF7QkWU4QlhP27N1g==
X-CSE-MsgGUID: 8Q4lMJX5TNq1WIlSMV4hWQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11172"; a="22504272"
X-IronPort-AV: E=Sophos;i="6.10,170,1719903600"; d="scan'208";a="22504272"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2024 09:26:35 -0700
X-CSE-ConnectionGUID: Iym1NpTBT2Gu/or+qKb8JA==
X-CSE-MsgGUID: 9M7A+QkERDW+vPSklfwB7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,170,1719903600"; d="scan'208";a="61694680"
Received: from lkp-server01.sh.intel.com (HELO 9a732dc145d3) ([10.239.97.150])
 by orviesa010.jf.intel.com with ESMTP; 23 Aug 2024 09:26:34 -0700
Received: from kbuild by 9a732dc145d3 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1shX7P-000DsD-2x
 for intel-wired-lan@lists.osuosl.org; Fri, 23 Aug 2024 16:26:31 +0000
Date: Sat, 24 Aug 2024 00:26:31 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202408240029.cYBaypJF-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724430396; x=1755966396;
 h=date:from:to:subject:message-id;
 bh=OYyOw+Jw1OlvsPtorfYgLo61THTm+k9AHGoQ3Fwt88g=;
 b=YDipdKG5uwyKxl0gJTXcP3Lf8U/mLBPqgdRMlMWRWb3sDt+Ii0D3pzXS
 pSrtGGA4rZC0HdpCPA09GBQkyiQXbD2V3LrgtFvO/oP2GHF4YznkprMeb
 qHqAR3y10JbwunaATwWK9yAm5fKVk9oMn1DPeYXdBIh760M0FLm/cyYXe
 B95t4sIu176CLNipZJUOWfQvMYG9Ks2NyEeG1rr0uIxJu7REPTkWqq9Qz
 OmxxwBL7HwwHwY8jYQdhSwQjwrekGvDqkK75Hj6mkOCma2dFcRpcmpcN/
 0nUjn7/lJM+hfSQUHTIN01J2Dl5WwRQDrkQz2GDtdj/1UdrrjocjKzdor
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YDipdKG5
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 d6f75d86aa786740ef7a7607685e9e1039e30aab
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
branch HEAD: d6f75d86aa786740ef7a7607685e9e1039e30aab  nfp: bpf: Use kmemdup_array instead of kmemdup for multiple allocation

elapsed time: 1592m

configs tested: 185
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.2.0
alpha                            allyesconfig   gcc-13.3.0
alpha                               defconfig   gcc-13.2.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                      axs103_smp_defconfig   gcc-13.2.0
arc                                 defconfig   gcc-13.2.0
arc                     haps_hs_smp_defconfig   gcc-13.2.0
arc                     nsimosci_hs_defconfig   gcc-13.2.0
arc                 nsimosci_hs_smp_defconfig   gcc-13.2.0
arc                   randconfig-001-20240823   gcc-13.2.0
arc                   randconfig-002-20240823   gcc-13.2.0
arc                    vdk_hs38_smp_defconfig   gcc-13.2.0
arm                              allmodconfig   gcc-13.2.0
arm                               allnoconfig   gcc-13.2.0
arm                              allyesconfig   gcc-13.2.0
arm                                 defconfig   gcc-13.2.0
arm                          exynos_defconfig   gcc-13.2.0
arm                           imxrt_defconfig   gcc-13.2.0
arm                         lpc32xx_defconfig   gcc-13.2.0
arm                   randconfig-001-20240823   gcc-13.2.0
arm                   randconfig-002-20240823   gcc-13.2.0
arm                   randconfig-003-20240823   gcc-13.2.0
arm                   randconfig-004-20240823   gcc-13.2.0
arm                             rpc_defconfig   gcc-13.2.0
arm                        vexpress_defconfig   gcc-13.2.0
arm64                            allmodconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-13.2.0
arm64                               defconfig   gcc-13.2.0
arm64                 randconfig-001-20240823   gcc-13.2.0
arm64                 randconfig-002-20240823   gcc-13.2.0
arm64                 randconfig-003-20240823   gcc-13.2.0
arm64                 randconfig-004-20240823   gcc-13.2.0
csky                              allnoconfig   gcc-13.2.0
csky                                defconfig   gcc-13.2.0
csky                  randconfig-001-20240823   gcc-13.2.0
csky                  randconfig-002-20240823   gcc-13.2.0
i386                             allmodconfig   clang-18
i386                              allnoconfig   clang-18
i386                             allyesconfig   clang-18
i386         buildonly-randconfig-001-20240823   clang-18
i386         buildonly-randconfig-002-20240823   clang-18
i386         buildonly-randconfig-003-20240823   clang-18
i386         buildonly-randconfig-004-20240823   clang-18
i386         buildonly-randconfig-005-20240823   clang-18
i386         buildonly-randconfig-006-20240823   clang-18
i386                                defconfig   clang-18
i386                  randconfig-001-20240823   clang-18
i386                  randconfig-002-20240823   clang-18
i386                  randconfig-003-20240823   clang-18
i386                  randconfig-004-20240823   clang-18
i386                  randconfig-005-20240823   clang-18
i386                  randconfig-006-20240823   clang-18
i386                  randconfig-011-20240823   clang-18
i386                  randconfig-012-20240823   clang-18
i386                  randconfig-013-20240823   clang-18
i386                  randconfig-014-20240823   clang-18
i386                  randconfig-015-20240823   clang-18
i386                  randconfig-016-20240823   clang-18
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-13.2.0
loongarch                           defconfig   gcc-13.2.0
loongarch             randconfig-001-20240823   gcc-13.2.0
loongarch             randconfig-002-20240823   gcc-13.2.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-13.2.0
m68k                             allyesconfig   gcc-14.1.0
m68k                                defconfig   gcc-13.2.0
m68k                          hp300_defconfig   gcc-13.2.0
m68k                            q40_defconfig   gcc-13.2.0
m68k                           virt_defconfig   gcc-13.2.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-13.2.0
microblaze                       allyesconfig   gcc-14.1.0
microblaze                          defconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.2.0
mips                            gpr_defconfig   gcc-13.2.0
mips                           ip32_defconfig   gcc-13.2.0
mips                        vocore2_defconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-13.2.0
nios2                               defconfig   gcc-13.2.0
nios2                 randconfig-001-20240823   gcc-13.2.0
nios2                 randconfig-002-20240823   gcc-13.2.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
openrisc                    or1ksim_defconfig   gcc-13.2.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc                randconfig-001-20240823   gcc-13.2.0
parisc                randconfig-002-20240823   gcc-13.2.0
parisc64                            defconfig   gcc-13.2.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   gcc-14.1.0
powerpc                      katmai_defconfig   gcc-13.2.0
powerpc                     ksi8560_defconfig   gcc-13.2.0
powerpc                      mgcoge_defconfig   gcc-13.2.0
powerpc               mpc834x_itxgp_defconfig   gcc-13.2.0
powerpc                      pcm030_defconfig   gcc-13.2.0
powerpc               randconfig-001-20240823   gcc-13.2.0
powerpc               randconfig-002-20240823   gcc-13.2.0
powerpc                     skiroot_defconfig   gcc-13.2.0
powerpc                  storcenter_defconfig   gcc-13.2.0
powerpc                     tqm8560_defconfig   gcc-13.2.0
powerpc                 xes_mpc85xx_defconfig   gcc-13.2.0
powerpc64             randconfig-001-20240823   gcc-13.2.0
powerpc64             randconfig-002-20240823   gcc-13.2.0
powerpc64             randconfig-003-20240823   gcc-13.2.0
riscv                            allmodconfig   gcc-14.1.0
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   gcc-14.1.0
riscv                               defconfig   gcc-14.1.0
riscv                 randconfig-001-20240823   gcc-13.2.0
riscv                 randconfig-002-20240823   gcc-13.2.0
s390                             allmodconfig   clang-20
s390                              allnoconfig   clang-20
s390                              allnoconfig   gcc-14.1.0
s390                             allyesconfig   clang-20
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   gcc-14.1.0
s390                  randconfig-001-20240823   gcc-13.2.0
s390                  randconfig-002-20240823   gcc-13.2.0
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-13.2.0
sh                               allyesconfig   gcc-14.1.0
sh                                  defconfig   gcc-14.1.0
sh                    randconfig-001-20240823   gcc-13.2.0
sh                    randconfig-002-20240823   gcc-13.2.0
sh                           se7206_defconfig   gcc-13.2.0
sh                           se7721_defconfig   gcc-13.2.0
sh                        sh7757lcr_defconfig   gcc-13.2.0
sh                        sh7785lcr_defconfig   gcc-13.2.0
sh                            titan_defconfig   gcc-13.2.0
sparc                            allmodconfig   gcc-14.1.0
sparc                       sparc64_defconfig   gcc-13.2.0
sparc64                             defconfig   gcc-14.1.0
sparc64               randconfig-001-20240823   gcc-13.2.0
sparc64               randconfig-002-20240823   gcc-13.2.0
um                               allmodconfig   gcc-13.3.0
um                                allnoconfig   clang-17
um                                allnoconfig   gcc-14.1.0
um                               allyesconfig   gcc-13.3.0
um                                  defconfig   gcc-14.1.0
um                             i386_defconfig   gcc-14.1.0
um                    randconfig-001-20240823   gcc-13.2.0
um                    randconfig-002-20240823   gcc-13.2.0
um                           x86_64_defconfig   gcc-14.1.0
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240823   gcc-12
x86_64       buildonly-randconfig-002-20240823   gcc-12
x86_64       buildonly-randconfig-003-20240823   gcc-12
x86_64       buildonly-randconfig-004-20240823   gcc-12
x86_64       buildonly-randconfig-005-20240823   gcc-12
x86_64       buildonly-randconfig-006-20240823   gcc-12
x86_64                              defconfig   clang-18
x86_64                                  kexec   clang-18
x86_64                randconfig-001-20240823   gcc-12
x86_64                randconfig-002-20240823   gcc-12
x86_64                randconfig-003-20240823   gcc-12
x86_64                randconfig-004-20240823   gcc-12
x86_64                randconfig-005-20240823   gcc-12
x86_64                randconfig-006-20240823   gcc-12
x86_64                randconfig-011-20240823   gcc-12
x86_64                randconfig-012-20240823   gcc-12
x86_64                randconfig-013-20240823   gcc-12
x86_64                randconfig-014-20240823   gcc-12
x86_64                randconfig-015-20240823   gcc-12
x86_64                randconfig-016-20240823   gcc-12
x86_64                randconfig-071-20240823   gcc-12
x86_64                randconfig-072-20240823   gcc-12
x86_64                randconfig-073-20240823   gcc-12
x86_64                randconfig-074-20240823   gcc-12
x86_64                randconfig-075-20240823   gcc-12
x86_64                randconfig-076-20240823   gcc-12
x86_64                          rhel-8.3-rust   clang-18
x86_64                               rhel-8.3   clang-18
xtensa                            allnoconfig   gcc-13.2.0
xtensa                randconfig-001-20240823   gcc-13.2.0
xtensa                randconfig-002-20240823   gcc-13.2.0
xtensa                    smp_lx200_defconfig   gcc-13.2.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
