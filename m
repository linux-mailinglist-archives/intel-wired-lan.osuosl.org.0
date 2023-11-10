Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B38897E801C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Nov 2023 19:06:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 36DD361741;
	Fri, 10 Nov 2023 18:06:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 36DD361741
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699639610;
	bh=M1cNqNwMDfnnRHSBSrPwPtna9snKYBBvDT4fUdwmDbM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=UJ+quVSMLu1EMemWcq6XPuaKAg8SX/cVxyWVbiK+/hD1cAX3DYzWM1jHmW0jMeP0n
	 4xJvnbeJX5FgD7rgGLbkj4Vbz909UFEOHdJEgmPpbtl6DlTXPqkBSOjYcgLvMMNCvy
	 cAUYNvDv2XrrVl37YamxUAwiQ6M0+QxetlLX4LHr63tiDOh0WQjkeJ7yUA2jkfnkCG
	 7MbHusyAIrKS2n6UIXpsd80fOB63tk+W2UNsP3RjjhZ9EkrtvJ8XciTR07jfm9hTn+
	 wps+IBnapcivBEbS94cQ5WXAc+MarOZi4EKqxxux13LAAf1pWVs4dQXGHIquHUfzIq
	 M2bTiAvWoBMhg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RiK4jmVQmesK; Fri, 10 Nov 2023 18:06:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CA2FB6108A;
	Fri, 10 Nov 2023 18:06:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CA2FB6108A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 584181BF338
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Nov 2023 18:06:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2EB8442439
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Nov 2023 18:06:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2EB8442439
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ye564w97NWf2 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Nov 2023 18:06:42 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1212442417
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Nov 2023 18:06:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1212442417
X-IronPort-AV: E=McAfee;i="6600,9927,10890"; a="369549287"
X-IronPort-AV: E=Sophos;i="6.03,291,1694761200"; d="scan'208";a="369549287"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2023 10:06:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,291,1694761200"; d="scan'208";a="11920938"
Received: from lkp-server01.sh.intel.com (HELO 17d9e85e5079) ([10.239.97.150])
 by fmviesa001.fm.intel.com with ESMTP; 10 Nov 2023 10:06:40 -0800
Received: from kbuild by 17d9e85e5079 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1r1Vtu-0009nv-0T
 for intel-wired-lan@lists.osuosl.org; Fri, 10 Nov 2023 18:06:38 +0000
Date: Sat, 11 Nov 2023 02:06:28 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202311110226.Xaaw3HiL-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699639602; x=1731175602;
 h=date:from:to:subject:message-id;
 bh=LklhILcZwvn/+S3MmXLSctPESYahteynIoL3MomAMQs=;
 b=Oy3sLr30WVbQek4jxe69D7m2FGzc/FLi3yQXIn4QI4QR/Lz3Vc2fLOrj
 BETZCfy9OvfezsqChvO7e0U7+r2T5cH8jAmDQqQp3BPImz0xPnU978acs
 7HoFugH7m+zZos7TjorWxmicwCWr9kW+oaOvd/uWmrTkTbVpYiNaivbS7
 CSRv7xCyhc6QK0CyjK+dGoJm1qXmzn57rfOabz1hjPJTPA5DGbSYPk2Kl
 5DIlS1vCezMuDAf9CqtVEuy2RncXk63f+DPBd47X16VsGVdIVfZhzF68c
 6EiK9ccA+2n7QAbPn4Pyre95w0eoyz4bgaZjun4tpIKvgB0RYvU6r1iuC
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Oy3sLr30
Subject: [Intel-wired-lan] [tnguy-net-queue:main] BUILD SUCCESS
 83b9dda8afa4e968d9cce253f390b01c0612a2a5
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
branch HEAD: 83b9dda8afa4e968d9cce253f390b01c0612a2a5  net: ti: icss-iep: fix setting counter value

elapsed time: 1676m

configs tested: 195
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            alldefconfig   gcc  
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20231109   gcc  
arc                   randconfig-001-20231110   gcc  
arc                   randconfig-002-20231109   gcc  
arc                   randconfig-002-20231110   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                         lpc32xx_defconfig   clang
arm                   randconfig-001-20231110   gcc  
arm                   randconfig-002-20231110   gcc  
arm                   randconfig-003-20231110   gcc  
arm                   randconfig-004-20231110   gcc  
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20231110   gcc  
arm64                 randconfig-002-20231110   gcc  
arm64                 randconfig-003-20231110   gcc  
arm64                 randconfig-004-20231110   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20231109   gcc  
csky                  randconfig-001-20231110   gcc  
csky                  randconfig-002-20231109   gcc  
csky                  randconfig-002-20231110   gcc  
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20231110   gcc  
i386         buildonly-randconfig-002-20231110   gcc  
i386         buildonly-randconfig-003-20231110   gcc  
i386         buildonly-randconfig-004-20231110   gcc  
i386         buildonly-randconfig-005-20231110   gcc  
i386         buildonly-randconfig-006-20231110   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20231110   gcc  
i386                  randconfig-002-20231110   gcc  
i386                  randconfig-003-20231110   gcc  
i386                  randconfig-004-20231110   gcc  
i386                  randconfig-005-20231110   gcc  
i386                  randconfig-006-20231110   gcc  
i386                  randconfig-011-20231110   gcc  
i386                  randconfig-012-20231110   gcc  
i386                  randconfig-013-20231110   gcc  
i386                  randconfig-014-20231110   gcc  
i386                  randconfig-015-20231110   gcc  
i386                  randconfig-016-20231110   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20231109   gcc  
loongarch             randconfig-001-20231110   gcc  
loongarch             randconfig-002-20231109   gcc  
loongarch             randconfig-002-20231110   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                         cobalt_defconfig   gcc  
mips                     cu1830-neo_defconfig   clang
mips                           gcw0_defconfig   gcc  
mips                           jazz_defconfig   gcc  
mips                           mtx1_defconfig   clang
mips                        qi_lb60_defconfig   clang
nios2                         10m50_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20231110   gcc  
nios2                 randconfig-002-20231110   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20231110   gcc  
parisc                randconfig-002-20231110   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   gcc  
powerpc                    klondike_defconfig   gcc  
powerpc                 mpc8315_rdb_defconfig   clang
powerpc                  mpc885_ads_defconfig   clang
powerpc                      pcm030_defconfig   gcc  
powerpc                     powernv_defconfig   clang
powerpc               randconfig-001-20231110   gcc  
powerpc               randconfig-002-20231110   gcc  
powerpc               randconfig-003-20231110   gcc  
powerpc                    sam440ep_defconfig   gcc  
powerpc64             randconfig-001-20231110   gcc  
powerpc64             randconfig-002-20231110   gcc  
powerpc64             randconfig-003-20231110   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20231110   gcc  
riscv                 randconfig-002-20231110   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20231110   gcc  
s390                  randconfig-002-20231110   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                         ap325rxa_defconfig   gcc  
sh                                  defconfig   gcc  
sh                    randconfig-001-20231110   gcc  
sh                    randconfig-002-20231110   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                 randconfig-001-20231110   gcc  
sparc                 randconfig-002-20231110   gcc  
sparc64                          alldefconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20231110   gcc  
sparc64               randconfig-002-20231110   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                    randconfig-001-20231110   gcc  
um                    randconfig-002-20231110   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-001-20231110   gcc  
x86_64       buildonly-randconfig-002-20231110   gcc  
x86_64       buildonly-randconfig-003-20231110   gcc  
x86_64       buildonly-randconfig-004-20231110   gcc  
x86_64       buildonly-randconfig-005-20231110   gcc  
x86_64       buildonly-randconfig-006-20231110   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                randconfig-001-20231110   gcc  
x86_64                randconfig-002-20231110   gcc  
x86_64                randconfig-003-20231110   gcc  
x86_64                randconfig-004-20231110   gcc  
x86_64                randconfig-005-20231110   gcc  
x86_64                randconfig-006-20231110   gcc  
x86_64                randconfig-011-20231110   gcc  
x86_64                randconfig-012-20231110   gcc  
x86_64                randconfig-013-20231110   gcc  
x86_64                randconfig-014-20231110   gcc  
x86_64                randconfig-015-20231110   gcc  
x86_64                randconfig-016-20231110   gcc  
x86_64                randconfig-071-20231110   gcc  
x86_64                randconfig-072-20231110   gcc  
x86_64                randconfig-073-20231110   gcc  
x86_64                randconfig-074-20231110   gcc  
x86_64                randconfig-075-20231110   gcc  
x86_64                randconfig-076-20231110   gcc  
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
xtensa                randconfig-001-20231110   gcc  
xtensa                randconfig-002-20231110   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
