Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A4BF27934E0
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Sep 2023 07:31:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2FFF68146C;
	Wed,  6 Sep 2023 05:31:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2FFF68146C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693978298;
	bh=GChyGBVwUP6c5STawt3DV8BsNUGdTejRWFAyo1P2Htg=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=pYeJgljEB6+z90lJdn4DhpLE7+YLtLS3nji7vPh/vr356CxRkacZTI1whxirLWyzW
	 xUZeS3R9R0KL3Mb4XuF3EX0/GDN8IFjrrSzc50qmWSU7TzWXfjktN+E/rfkvjpsPwB
	 9bFgblo4uaMe3lvXazx4x8QK7Fe3YanNOc+Xjs5n1IxOfnsmKvZpP0Lcy1A9VHlWkb
	 IcvResUKhvQ4tLNi4FiGvtww/krQGawLtmBP4pUXSFa10+txiNP2fKXFKRTo4LC4cg
	 Kkwb8+JvWfayLj0Cqn/lOw9YEq4nb7qyqzQJgrZc7i5qhNGZG1PbrwtWQA/LT0B0ZW
	 28y8IUruUtUwA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qSz-1h3wbxeR; Wed,  6 Sep 2023 05:31:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D6EF481458;
	Wed,  6 Sep 2023 05:31:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D6EF481458
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1D2181BF389
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Sep 2023 05:31:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 019288145A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Sep 2023 05:31:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 019288145A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7FcSBFPz3rw6 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Sep 2023 05:31:31 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9459B81458
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Sep 2023 05:31:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9459B81458
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="443371897"
X-IronPort-AV: E=Sophos;i="6.02,231,1688454000"; d="scan'208";a="443371897"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2023 22:31:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="915127293"
X-IronPort-AV: E=Sophos;i="6.02,231,1688454000"; d="scan'208";a="915127293"
Received: from lkp-server02.sh.intel.com (HELO e0b2ea88afd5) ([10.239.97.151])
 by orsmga005.jf.intel.com with ESMTP; 05 Sep 2023 22:31:28 -0700
Received: from kbuild by e0b2ea88afd5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qdl8Q-0002UR-1M
 for intel-wired-lan@lists.osuosl.org; Wed, 06 Sep 2023 05:31:26 +0000
Date: Wed, 06 Sep 2023 13:31:22 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202309061320.NRxRrEBo-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693978291; x=1725514291;
 h=date:from:to:subject:message-id;
 bh=S2K8qRoLJIlnuYAUTQIVuUhdPLVDl08AIyBqyXcOV14=;
 b=g4p2YLn4cLJusg7m5bkIIoORJ18R+hcFS3t4UGDLwzjSWfEe+yb5T/Gw
 8wTYB/1QGshwOBSvl9XoA/fyb5N7ldR/n1Zsf6AY4BLIz8O4lQLtzJD/M
 NT6bHY2ok5glnJVM2+NtSiv0dkmcpHk+9w8fnbZx4on00Xq1tSLYUYM29
 5Ke0fvC3VhrzomG4yWlzEBlOIJObFl9ndInI7mI/DqiQiRd9mfLNnLdZ4
 8KQfRgnT5CvhleSrZytU94SpUj/QgJ6gbQcRMxqbLMxtML1Oxo2CiqD2O
 mdvxXiBhThDOvd9w+/mKFLGDlAuoBnS01rHWQOXPVDSq8OJM3fO4OSAJN
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=g4p2YLn4
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 c9bcab726798c0cd4805df009eff471e56c0af86
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
branch HEAD: c9bcab726798c0cd4805df009eff471e56c0af86  ice: Fix call trace when rebuild fails

elapsed time: 720m

configs tested: 166
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r013-20230906   gcc  
alpha                randconfig-r034-20230906   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20230906   gcc  
arc                  randconfig-r006-20230906   gcc  
arc                  randconfig-r012-20230906   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                   randconfig-001-20230906   gcc  
arm64                            allmodconfig   gcc  
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r004-20230906   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r024-20230906   gcc  
hexagon               randconfig-001-20230906   clang
hexagon               randconfig-002-20230906   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20230906   gcc  
i386         buildonly-randconfig-002-20230906   gcc  
i386         buildonly-randconfig-003-20230906   gcc  
i386         buildonly-randconfig-004-20230906   gcc  
i386         buildonly-randconfig-005-20230906   gcc  
i386         buildonly-randconfig-006-20230906   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20230906   gcc  
i386                  randconfig-002-20230906   gcc  
i386                  randconfig-003-20230906   gcc  
i386                  randconfig-004-20230906   gcc  
i386                  randconfig-005-20230906   gcc  
i386                  randconfig-006-20230906   gcc  
i386                  randconfig-011-20230906   clang
i386                  randconfig-012-20230906   clang
i386                  randconfig-013-20230906   clang
i386                  randconfig-014-20230906   clang
i386                  randconfig-015-20230906   clang
i386                  randconfig-016-20230906   clang
i386                 randconfig-r001-20230906   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20230906   gcc  
loongarch            randconfig-r031-20230906   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                       m5475evb_defconfig   gcc  
m68k                 randconfig-r033-20230906   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
microblaze           randconfig-r016-20230906   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                           ip32_defconfig   gcc  
mips                 randconfig-r025-20230906   gcc  
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
parisc                generic-32bit_defconfig   gcc  
parisc               randconfig-r023-20230906   gcc  
parisc               randconfig-r035-20230906   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   gcc  
powerpc              randconfig-r021-20230906   clang
powerpc64            randconfig-r036-20230906   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20230906   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20230906   clang
s390                 randconfig-r005-20230906   gcc  
sh                               alldefconfig   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                   randconfig-r002-20230906   gcc  
sh                   randconfig-r003-20230906   gcc  
sh                   randconfig-r015-20230906   gcc  
sh                   randconfig-r026-20230906   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r014-20230906   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64              randconfig-r022-20230906   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-001-20230906   gcc  
x86_64       buildonly-randconfig-002-20230906   gcc  
x86_64       buildonly-randconfig-003-20230906   gcc  
x86_64       buildonly-randconfig-004-20230906   gcc  
x86_64       buildonly-randconfig-005-20230906   gcc  
x86_64       buildonly-randconfig-006-20230906   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20230906   clang
x86_64                randconfig-002-20230906   clang
x86_64                randconfig-003-20230906   clang
x86_64                randconfig-004-20230906   clang
x86_64                randconfig-005-20230906   clang
x86_64                randconfig-006-20230906   clang
x86_64                randconfig-011-20230906   gcc  
x86_64                randconfig-012-20230906   gcc  
x86_64                randconfig-013-20230906   gcc  
x86_64                randconfig-014-20230906   gcc  
x86_64                randconfig-015-20230906   gcc  
x86_64                randconfig-016-20230906   gcc  
x86_64                randconfig-071-20230906   gcc  
x86_64                randconfig-072-20230906   gcc  
x86_64                randconfig-073-20230906   gcc  
x86_64                randconfig-074-20230906   gcc  
x86_64                randconfig-075-20230906   gcc  
x86_64                randconfig-076-20230906   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa               randconfig-r011-20230906   gcc  
xtensa               randconfig-r032-20230906   gcc  
xtensa                    smp_lx200_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
