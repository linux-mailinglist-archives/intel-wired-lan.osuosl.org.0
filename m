Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 36CAF7B4394
	for <lists+intel-wired-lan@lfdr.de>; Sat, 30 Sep 2023 22:35:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8110261018;
	Sat, 30 Sep 2023 20:34:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8110261018
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696106098;
	bh=+pmBiB/vLaKwENj84RDCXguKWAcrDq/BnkPSnzmZfdA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=5uWEjuaKAQ5k3ZX4YJ4nJmQDbdeLfaMhKYsR6pP/s4dXraP2aQIm31OQaVH+CGqH4
	 4cnuqRg4qmfkupY6JlC5Ob23M8J/Uar5iVO2tIebaWibkQsWMNcwsOjJmU7FADIdtN
	 DOpmJJB+JeDLPuEB23SSxRSVSOBC9vZZroXlLZnizW2tHvA/S3ro2ldYBOrsx1OI0e
	 yGc2bl0CMctE7v7RiovC9k0Gn9cSdDJGguIN83ZVIOtjsui2tDAnCZCz2+cSFgKBN5
	 y7xVHFtIZs9Qdie1xzc0EZLXlGD630DazhvVRb27gwzZdydszqqcQJnF0Be/VmTfE2
	 qav+0mDfx+4Ww==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oYothXKUtsmr; Sat, 30 Sep 2023 20:34:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2F0E86100C;
	Sat, 30 Sep 2023 20:34:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2F0E86100C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5C6421BF3B0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Sep 2023 20:34:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3580D415C2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Sep 2023 20:34:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3580D415C2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M8KsvWTh0VkC for <intel-wired-lan@lists.osuosl.org>;
 Sat, 30 Sep 2023 20:34:51 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EA921408A8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Sep 2023 20:34:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EA921408A8
X-IronPort-AV: E=McAfee;i="6600,9927,10849"; a="367527544"
X-IronPort-AV: E=Sophos;i="6.03,190,1694761200"; d="scan'208";a="367527544"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2023 13:34:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10849"; a="726893033"
X-IronPort-AV: E=Sophos;i="6.03,190,1694761200"; d="scan'208";a="726893033"
Received: from lkp-server02.sh.intel.com (HELO c3b01524d57c) ([10.239.97.151])
 by orsmga006.jf.intel.com with ESMTP; 30 Sep 2023 13:34:49 -0700
Received: from kbuild by c3b01524d57c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qmgfm-0004RL-2O
 for intel-wired-lan@lists.osuosl.org; Sat, 30 Sep 2023 20:34:46 +0000
Date: Sun, 01 Oct 2023 04:34:27 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202310010425.PLyxj9LI-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696106090; x=1727642090;
 h=date:from:to:subject:message-id;
 bh=TJtwY8R6EEDXs7civBMt60WAUD1Y9nC+WWhYfCfIn1s=;
 b=c0GnR1LLP0nzS3fCxTMmVuiz5vqXOgpOE75VfGZC0cEdpmcKm73SPKpj
 JaiISY1G9ize1sQx+mYibZUJiQ7QXs8YWKyofzOpSleVvm1Y5sj1tDWOQ
 BEXS+ISJCWqjvphBXfIbE1cQNHSOXCRyinL/LGN1CiuK8QaETVojFip+6
 VHqP952g5X6Hfo48tfs9cp58laJJ27yF7ktTxaUIlEdfySNIWt5y7IFBG
 AR9pbYL4wuj1FoTArtwzeHcK1KIwxxjr3FX0UP1wyQi1kioRPTe2IE+Tm
 be1x9QXeUM6+1Zl4oanux/T1Zngkx3a4Mk9ewSIPLJI2xThhWp1f1m45c
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=c0GnR1LL
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 45f71c4e41e1c7c757ae65b34884d65ea968dbc8
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
branch HEAD: 45f71c4e41e1c7c757ae65b34884d65ea968dbc8  ice: block default rule setting on LAG interface

elapsed time: 2905m

configs tested: 188
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
arc                                 defconfig   gcc  
arc                   randconfig-001-20230929   gcc  
arc                   randconfig-001-20230930   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                   randconfig-001-20230929   gcc  
arm                   randconfig-001-20230930   gcc  
arm64                            allmodconfig   gcc  
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386         buildonly-randconfig-001-20230929   gcc  
i386         buildonly-randconfig-001-20230930   gcc  
i386         buildonly-randconfig-001-20231001   gcc  
i386         buildonly-randconfig-002-20230929   gcc  
i386         buildonly-randconfig-002-20230930   gcc  
i386         buildonly-randconfig-002-20231001   gcc  
i386         buildonly-randconfig-003-20230929   gcc  
i386         buildonly-randconfig-003-20230930   gcc  
i386         buildonly-randconfig-003-20231001   gcc  
i386         buildonly-randconfig-004-20230929   gcc  
i386         buildonly-randconfig-004-20230930   gcc  
i386         buildonly-randconfig-004-20231001   gcc  
i386         buildonly-randconfig-005-20230929   gcc  
i386         buildonly-randconfig-005-20230930   gcc  
i386         buildonly-randconfig-005-20231001   gcc  
i386         buildonly-randconfig-006-20230929   gcc  
i386         buildonly-randconfig-006-20230930   gcc  
i386         buildonly-randconfig-006-20231001   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20230929   gcc  
i386                  randconfig-001-20230930   gcc  
i386                  randconfig-001-20231001   gcc  
i386                  randconfig-002-20230929   gcc  
i386                  randconfig-002-20230930   gcc  
i386                  randconfig-002-20231001   gcc  
i386                  randconfig-003-20230929   gcc  
i386                  randconfig-003-20230930   gcc  
i386                  randconfig-003-20231001   gcc  
i386                  randconfig-004-20230929   gcc  
i386                  randconfig-004-20230930   gcc  
i386                  randconfig-004-20231001   gcc  
i386                  randconfig-005-20230929   gcc  
i386                  randconfig-005-20230930   gcc  
i386                  randconfig-005-20231001   gcc  
i386                  randconfig-006-20230929   gcc  
i386                  randconfig-006-20230930   gcc  
i386                  randconfig-006-20231001   gcc  
i386                  randconfig-011-20230929   gcc  
i386                  randconfig-011-20230930   gcc  
i386                  randconfig-012-20230929   gcc  
i386                  randconfig-012-20230930   gcc  
i386                  randconfig-013-20230929   gcc  
i386                  randconfig-013-20230930   gcc  
i386                  randconfig-014-20230929   gcc  
i386                  randconfig-014-20230930   gcc  
i386                  randconfig-015-20230929   gcc  
i386                  randconfig-015-20230930   gcc  
i386                  randconfig-016-20230929   gcc  
i386                  randconfig-016-20230930   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20230929   gcc  
loongarch             randconfig-001-20230930   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
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
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20230929   gcc  
riscv                 randconfig-001-20230930   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20230929   gcc  
s390                  randconfig-001-20230930   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                 randconfig-001-20230930   gcc  
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
x86_64       buildonly-randconfig-001-20230929   gcc  
x86_64       buildonly-randconfig-001-20230930   gcc  
x86_64       buildonly-randconfig-002-20230929   gcc  
x86_64       buildonly-randconfig-002-20230930   gcc  
x86_64       buildonly-randconfig-003-20230929   gcc  
x86_64       buildonly-randconfig-003-20230930   gcc  
x86_64       buildonly-randconfig-004-20230929   gcc  
x86_64       buildonly-randconfig-004-20230930   gcc  
x86_64       buildonly-randconfig-005-20230929   gcc  
x86_64       buildonly-randconfig-005-20230930   gcc  
x86_64       buildonly-randconfig-006-20230929   gcc  
x86_64       buildonly-randconfig-006-20230930   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20230930   gcc  
x86_64                randconfig-001-20231001   gcc  
x86_64                randconfig-002-20230930   gcc  
x86_64                randconfig-002-20231001   gcc  
x86_64                randconfig-003-20230930   gcc  
x86_64                randconfig-003-20231001   gcc  
x86_64                randconfig-004-20230930   gcc  
x86_64                randconfig-004-20231001   gcc  
x86_64                randconfig-005-20230930   gcc  
x86_64                randconfig-005-20231001   gcc  
x86_64                randconfig-006-20230930   gcc  
x86_64                randconfig-006-20231001   gcc  
x86_64                randconfig-011-20230929   gcc  
x86_64                randconfig-011-20230930   gcc  
x86_64                randconfig-012-20230929   gcc  
x86_64                randconfig-012-20230930   gcc  
x86_64                randconfig-013-20230929   gcc  
x86_64                randconfig-013-20230930   gcc  
x86_64                randconfig-014-20230929   gcc  
x86_64                randconfig-014-20230930   gcc  
x86_64                randconfig-015-20230929   gcc  
x86_64                randconfig-015-20230930   gcc  
x86_64                randconfig-016-20230929   gcc  
x86_64                randconfig-016-20230930   gcc  
x86_64                randconfig-071-20230929   gcc  
x86_64                randconfig-071-20230930   gcc  
x86_64                randconfig-072-20230929   gcc  
x86_64                randconfig-072-20230930   gcc  
x86_64                randconfig-073-20230929   gcc  
x86_64                randconfig-073-20230930   gcc  
x86_64                randconfig-074-20230929   gcc  
x86_64                randconfig-074-20230930   gcc  
x86_64                randconfig-075-20230929   gcc  
x86_64                randconfig-075-20230930   gcc  
x86_64                randconfig-076-20230929   gcc  
x86_64                randconfig-076-20230930   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
