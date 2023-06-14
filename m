Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F0FD730514
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jun 2023 18:37:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B797B41841;
	Wed, 14 Jun 2023 16:37:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B797B41841
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686760623;
	bh=YWGPfQYNZLz7/fYCso+O3mN/NUL1hZkc38wWryw0Uvg=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=U6cNiTi2PLSUVk9z4VB/WfOwqXvzL8150AXLWfzZ5C7zdK1dWCZ3ccwOJFQcevIHc
	 vndbbp+agIvxIfK2IM5027TDDZihG4tQY7tUe32GY7QlN9xBLdTzt0hnCTvyohqU+1
	 TWa/DPGvmk3XQTKrkZUUhrOmqqKnMnRzfEqZR1ruQjO6NgEaoPPxt6bcouOPGYxPRf
	 Znn6wFqzEoaTxvz+xaTCCVepGv/n2Cwh1tDvR64ofpxQCrm1dn4Ql0JHU2R8ABH6pb
	 ecsi+rkbGIz4mS/ejXX3v8mDFsYKU4sRKv3Y7tPA6MmrSbA5WnHaJV+5MNEGpUgpTI
	 umC4/yXMxSerw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id StkjvkpyUk6n; Wed, 14 Jun 2023 16:37:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5EB8E404D5;
	Wed, 14 Jun 2023 16:37:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5EB8E404D5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ADB241BF966
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 16:36:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 85BE261339
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 16:36:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 85BE261339
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oNgcYxJjGikx for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jun 2023 16:36:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8136360E76
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8136360E76
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 16:36:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="361145080"
X-IronPort-AV: E=Sophos;i="6.00,243,1681196400"; d="scan'208";a="361145080"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2023 09:36:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="741892799"
X-IronPort-AV: E=Sophos;i="6.00,243,1681196400"; d="scan'208";a="741892799"
Received: from lkp-server02.sh.intel.com (HELO d59cacf64e9e) ([10.239.97.151])
 by orsmga008.jf.intel.com with ESMTP; 14 Jun 2023 09:36:48 -0700
Received: from kbuild by d59cacf64e9e with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1q9TUA-0000rH-0n
 for intel-wired-lan@lists.osuosl.org; Wed, 14 Jun 2023 16:36:47 +0000
Date: Thu, 15 Jun 2023 00:34:54 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202306150052.gxnfoHiR-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686760614; x=1718296614;
 h=date:from:to:subject:message-id;
 bh=Nm9ywvTo+THHTpZIxiZYOcIfHUw48ktRSoAzsKcxb9U=;
 b=V++atxe+zr7PdWKCXiKUN594sti5rbYRS/hEOuxWJSmZOXtjmimWBk6K
 8s1hTUNKYsQQH91y/360jpX4edg56n2J13b8jjLUrpIVR7oEszDu/DKB0
 VrlsA4f6vuUyn/uOBVdF4gMKrgUwmeiGBOBoplYDR+eGqvkr63iiX/wTa
 9qNXnGqFisgoBuzIR9kz7lODvq8aC9w9yWOlQzLQ7hNvukyhkkYmuh/8W
 h5Q95vgYzYjBMdhfrBLupDQ/6vB+6e+8POnpq4LtHqNtBU9U5OmsIacnZ
 Df8RmSgbs1blmDzp/uLlkcyonHyIPQpGUqBafCs7F2Qwz4Jqd/cmSg2y1
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=V++atxe+
Subject: [Intel-wired-lan] [tnguy-net-queue:main] BUILD SUCCESS
 fbf6f482b65da72744b4a82be412e53a94fd7c9c
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
branch HEAD: fbf6f482b65da72744b4a82be412e53a94fd7c9c  Merge branch 'mptcp-fixes'

elapsed time: 2421m

configs tested: 225
configs skipped: 12

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r004-20230614   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r002-20230612   gcc  
alpha                randconfig-r015-20230612   gcc  
arc                              alldefconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                        nsim_700_defconfig   gcc  
arc                  randconfig-r014-20230612   gcc  
arc                  randconfig-r033-20230612   gcc  
arc                  randconfig-r043-20230612   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                         axm55xx_defconfig   gcc  
arm                                 defconfig   gcc  
arm                            hisi_defconfig   gcc  
arm                       imx_v4_v5_defconfig   clang
arm                         nhk8815_defconfig   gcc  
arm                          pxa910_defconfig   gcc  
arm                            qcom_defconfig   gcc  
arm                  randconfig-r005-20230612   gcc  
arm                  randconfig-r021-20230612   clang
arm                  randconfig-r036-20230612   gcc  
arm                  randconfig-r046-20230612   clang
arm                           u8500_defconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r011-20230612   gcc  
arm64                randconfig-r036-20230612   clang
csky                                defconfig   gcc  
csky                 randconfig-r011-20230612   gcc  
csky                 randconfig-r023-20230612   gcc  
csky                 randconfig-r031-20230612   gcc  
csky                 randconfig-r032-20230612   gcc  
csky                 randconfig-r035-20230612   gcc  
csky                 randconfig-r036-20230612   gcc  
hexagon              randconfig-r031-20230612   clang
hexagon              randconfig-r041-20230612   clang
hexagon              randconfig-r045-20230612   clang
i386                             alldefconfig   gcc  
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230612   clang
i386                 randconfig-i001-20230614   clang
i386                 randconfig-i002-20230612   clang
i386                 randconfig-i002-20230614   clang
i386                 randconfig-i003-20230612   clang
i386                 randconfig-i003-20230614   clang
i386                 randconfig-i004-20230612   clang
i386                 randconfig-i004-20230614   clang
i386                 randconfig-i005-20230612   clang
i386                 randconfig-i005-20230614   clang
i386                 randconfig-i006-20230612   clang
i386                 randconfig-i006-20230614   clang
i386                 randconfig-i011-20230612   gcc  
i386                 randconfig-i011-20230614   gcc  
i386                 randconfig-i012-20230612   gcc  
i386                 randconfig-i012-20230614   gcc  
i386                 randconfig-i013-20230612   gcc  
i386                 randconfig-i013-20230614   gcc  
i386                 randconfig-i014-20230612   gcc  
i386                 randconfig-i014-20230614   gcc  
i386                 randconfig-i015-20230612   gcc  
i386                 randconfig-i015-20230614   gcc  
i386                 randconfig-i016-20230612   gcc  
i386                 randconfig-i016-20230614   gcc  
i386                 randconfig-r016-20230612   gcc  
i386                 randconfig-r034-20230612   clang
i386                 randconfig-r035-20230612   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r001-20230612   gcc  
loongarch            randconfig-r006-20230612   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k         buildonly-randconfig-r004-20230612   gcc  
m68k                       bvme6000_defconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r003-20230612   gcc  
m68k                 randconfig-r033-20230612   gcc  
m68k                           virt_defconfig   gcc  
microblaze   buildonly-randconfig-r001-20230612   gcc  
microblaze                          defconfig   gcc  
microblaze           randconfig-r003-20230612   gcc  
microblaze           randconfig-r013-20230612   gcc  
microblaze           randconfig-r016-20230612   gcc  
microblaze           randconfig-r031-20230612   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                       bmips_be_defconfig   gcc  
mips         buildonly-randconfig-r002-20230614   gcc  
mips         buildonly-randconfig-r003-20230612   gcc  
mips                     cu1830-neo_defconfig   clang
mips                            gpr_defconfig   gcc  
mips                     loongson2k_defconfig   clang
mips                      maltasmvp_defconfig   gcc  
mips                    maltaup_xpa_defconfig   gcc  
mips                 randconfig-r001-20230612   gcc  
mips                 randconfig-r031-20230612   gcc  
mips                 randconfig-r034-20230612   gcc  
mips                         rt305x_defconfig   gcc  
nios2        buildonly-randconfig-r001-20230612   gcc  
nios2        buildonly-randconfig-r005-20230612   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r024-20230612   gcc  
nios2                randconfig-r025-20230612   gcc  
openrisc             randconfig-r004-20230612   gcc  
openrisc             randconfig-r014-20230612   gcc  
openrisc             randconfig-r015-20230612   gcc  
openrisc             randconfig-r026-20230612   gcc  
openrisc             randconfig-r036-20230612   gcc  
parisc                           allyesconfig   gcc  
parisc       buildonly-randconfig-r003-20230612   gcc  
parisc       buildonly-randconfig-r004-20230612   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r002-20230612   gcc  
parisc               randconfig-r004-20230612   gcc  
parisc               randconfig-r022-20230612   gcc  
parisc               randconfig-r023-20230612   gcc  
parisc               randconfig-r034-20230612   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r002-20230612   gcc  
powerpc      buildonly-randconfig-r003-20230614   gcc  
powerpc                   currituck_defconfig   gcc  
powerpc                       eiger_defconfig   gcc  
powerpc                 linkstation_defconfig   gcc  
powerpc                   motionpro_defconfig   gcc  
powerpc                      obs600_defconfig   clang
powerpc                      pasemi_defconfig   gcc  
powerpc                      ppc6xx_defconfig   gcc  
powerpc              randconfig-r024-20230612   gcc  
powerpc                     sequoia_defconfig   gcc  
powerpc                  storcenter_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv        buildonly-randconfig-r002-20230612   gcc  
riscv        buildonly-randconfig-r005-20230612   gcc  
riscv                               defconfig   gcc  
riscv                    nommu_k210_defconfig   gcc  
riscv                randconfig-r006-20230612   clang
riscv                randconfig-r011-20230612   gcc  
riscv                randconfig-r032-20230612   clang
riscv                randconfig-r033-20230612   clang
riscv                randconfig-r042-20230612   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r001-20230614   gcc  
s390         buildonly-randconfig-r003-20230612   gcc  
s390                          debug_defconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r004-20230612   clang
s390                 randconfig-r012-20230612   gcc  
s390                 randconfig-r015-20230612   gcc  
s390                 randconfig-r044-20230612   gcc  
sh                               alldefconfig   gcc  
sh                               allmodconfig   gcc  
sh                         ap325rxa_defconfig   gcc  
sh           buildonly-randconfig-r002-20230612   gcc  
sh           buildonly-randconfig-r003-20230612   gcc  
sh                        edosk7760_defconfig   gcc  
sh                             espt_defconfig   gcc  
sh                          polaris_defconfig   gcc  
sh                   randconfig-r002-20230612   gcc  
sh                   randconfig-r012-20230612   gcc  
sh                   randconfig-r013-20230612   gcc  
sh                          rsk7269_defconfig   gcc  
sh                          sdk7786_defconfig   gcc  
sh                           se7343_defconfig   gcc  
sh                           se7724_defconfig   gcc  
sh                           se7780_defconfig   gcc  
sh                        sh7785lcr_defconfig   gcc  
sh                            titan_defconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r011-20230612   gcc  
sparc                       sparc32_defconfig   gcc  
sparc64      buildonly-randconfig-r006-20230612   gcc  
sparc64              randconfig-r006-20230612   gcc  
sparc64              randconfig-r013-20230612   gcc  
sparc64              randconfig-r015-20230612   gcc  
sparc64              randconfig-r021-20230612   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   clang
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230612   clang
x86_64               randconfig-a002-20230612   clang
x86_64               randconfig-a003-20230612   clang
x86_64               randconfig-a004-20230612   clang
x86_64               randconfig-a005-20230612   clang
x86_64               randconfig-a006-20230612   clang
x86_64               randconfig-a011-20230612   gcc  
x86_64               randconfig-a011-20230614   gcc  
x86_64               randconfig-a012-20230612   gcc  
x86_64               randconfig-a012-20230614   gcc  
x86_64               randconfig-a013-20230612   gcc  
x86_64               randconfig-a013-20230614   gcc  
x86_64               randconfig-a014-20230612   gcc  
x86_64               randconfig-a014-20230614   gcc  
x86_64               randconfig-a015-20230612   gcc  
x86_64               randconfig-a015-20230614   gcc  
x86_64               randconfig-a016-20230612   gcc  
x86_64               randconfig-a016-20230614   gcc  
x86_64               randconfig-r005-20230612   clang
x86_64               randconfig-r014-20230612   gcc  
x86_64                           rhel-8.3-bpf   gcc  
x86_64                          rhel-8.3-func   gcc  
x86_64                    rhel-8.3-kselftests   gcc  
x86_64                         rhel-8.3-kunit   gcc  
x86_64                           rhel-8.3-kvm   gcc  
x86_64                           rhel-8.3-ltp   gcc  
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r006-20230614   gcc  
xtensa               randconfig-r013-20230612   gcc  
xtensa               randconfig-r014-20230612   gcc  
xtensa               randconfig-r033-20230612   gcc  
xtensa                         virt_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
