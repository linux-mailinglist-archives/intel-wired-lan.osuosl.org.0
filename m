Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 765CE7DA83E
	for <lists+intel-wired-lan@lfdr.de>; Sat, 28 Oct 2023 19:28:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 24D7383C5B;
	Sat, 28 Oct 2023 17:28:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 24D7383C5B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698514125;
	bh=KHfI1jseP8F7NwHFG2t7kUjgiKc2QL7VyRgX9qayo5I=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=f9bZDJJ1S4yM1zFc9dLbgjVTkiLXx0VW6Yd5D78UwZJsW7Ix0iYcxjfeqNHm9yk6c
	 ZX7deiTv2LGVth/VM7T4OSqP/21cx9wM61+4S28bNvC4JFyg/xLV7HzAprtiiEUX9V
	 kY6yXWtRfT7Zb48ooczlfwh+fVQgmynbrtyswpLUM9DuIAoz5FSbx+fFdb3tMrkq4Y
	 5lggegrC80wU3FxqyU3rGAtYs7CM8qeqGxbnN7zUYsgFX8AATU+TbKJ3CxPCDFsZkf
	 PfC97Y8LZYl09zO91tkuiWbfNi2w824hk/ErLCuU+OictgIc8JSPzXeyPgN9Ik23vk
	 h+B39nXLeIiew==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u73Yw0KMwOXJ; Sat, 28 Oct 2023 17:28:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C1E5183C5A;
	Sat, 28 Oct 2023 17:28:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C1E5183C5A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EFEFA1BF42C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Oct 2023 17:28:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C6BF561227
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Oct 2023 17:28:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C6BF561227
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W9E3keUqyOc1 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 28 Oct 2023 17:28:35 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id ADF1D61223
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Oct 2023 17:28:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ADF1D61223
X-IronPort-AV: E=McAfee;i="6600,9927,10877"; a="454378577"
X-IronPort-AV: E=Sophos;i="6.03,259,1694761200"; d="scan'208";a="454378577"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2023 10:28:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10877"; a="794899360"
X-IronPort-AV: E=Sophos;i="6.03,259,1694761200"; d="scan'208";a="794899360"
Received: from lkp-server01.sh.intel.com (HELO 8917679a5d3e) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 28 Oct 2023 10:28:32 -0700
Received: from kbuild by 8917679a5d3e with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qwn6s-000Bwb-0f
 for intel-wired-lan@lists.osuosl.org; Sat, 28 Oct 2023 17:28:30 +0000
Date: Sun, 29 Oct 2023 01:28:18 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202310290115.fBFt4kHr-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698514115; x=1730050115;
 h=date:from:to:subject:message-id;
 bh=+6lx3KKfzbUE1ISIaHJRbpVsWt+SN2LlNHWrKc4qPiU=;
 b=agsLkP3fKnxsXrZVVHJV1bHJ3YYOYKBlzb4vhlbfpneReP/P9if3TvJK
 WawEAIxzWonSuc/gqeDnEmGDgN1M7SjVkGY8q/JbCvKJmJeMZz/hog29H
 ywF08GxQ9QSZdBKbft/g26VecrlveVVhk9fD1tqjVBiVlCqFeRzvQkTJ/
 juNQR+1o38872RTZFKj6T6GSZQEhBqfyIJYqZxLnMCOh3ZmjJ1a4vTPLc
 GSAfrjWtH7dFzKfrsA1J3LzMTPH8L09+7j6PBu62V7vf8k8l+T4OxGnSa
 snK6EUdxedWHMZbgtvjAhzHDex4/sXFb7QhyAHiMpmMttTmUr7Q7puEsG
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=agsLkP3f
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 f6a28f10df6f455bb57250ac39fb6301f2b0c5c9
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
branch HEAD: f6a28f10df6f455bb57250ac39fb6301f2b0c5c9  ice: Fix VF-VF direction matching in drop rule in switchdev

elapsed time: 2515m

configs tested: 145
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
arc                        nsim_700_defconfig   gcc  
arc                   randconfig-001-20231027   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                         assabet_defconfig   gcc  
arm                                 defconfig   gcc  
arm                          gemini_defconfig   gcc  
arm                      integrator_defconfig   gcc  
arm                          pxa168_defconfig   clang
arm                   randconfig-001-20231027   gcc  
arm                        realview_defconfig   gcc  
arm                         vf610m4_defconfig   gcc  
arm64                            allmodconfig   gcc  
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
i386         buildonly-randconfig-001-20231027   gcc  
i386         buildonly-randconfig-002-20231027   gcc  
i386         buildonly-randconfig-003-20231027   gcc  
i386         buildonly-randconfig-004-20231027   gcc  
i386         buildonly-randconfig-005-20231027   gcc  
i386         buildonly-randconfig-006-20231027   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20231027   gcc  
i386                  randconfig-002-20231027   gcc  
i386                  randconfig-003-20231027   gcc  
i386                  randconfig-004-20231027   gcc  
i386                  randconfig-005-20231027   gcc  
i386                  randconfig-006-20231027   gcc  
i386                  randconfig-011-20231027   gcc  
i386                  randconfig-012-20231027   gcc  
i386                  randconfig-013-20231027   gcc  
i386                  randconfig-014-20231027   gcc  
i386                  randconfig-015-20231027   gcc  
i386                  randconfig-016-20231027   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20231027   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                        stmark2_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   clang
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                            ar7_defconfig   gcc  
mips                       bmips_be_defconfig   gcc  
mips                           rs90_defconfig   clang
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
openrisc                       virt_defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   gcc  
powerpc                      chrp32_defconfig   gcc  
powerpc                         wii_defconfig   gcc  
powerpc64                           defconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20231027   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20231027   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                             espt_defconfig   gcc  
sh                        sh7763rdp_defconfig   gcc  
sparc                            alldefconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                 randconfig-001-20231027   gcc  
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
x86_64       buildonly-randconfig-001-20231027   gcc  
x86_64       buildonly-randconfig-002-20231027   gcc  
x86_64       buildonly-randconfig-003-20231027   gcc  
x86_64       buildonly-randconfig-004-20231027   gcc  
x86_64       buildonly-randconfig-005-20231027   gcc  
x86_64       buildonly-randconfig-006-20231027   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20231027   gcc  
x86_64                randconfig-002-20231027   gcc  
x86_64                randconfig-003-20231027   gcc  
x86_64                randconfig-004-20231027   gcc  
x86_64                randconfig-005-20231027   gcc  
x86_64                randconfig-006-20231027   gcc  
x86_64                randconfig-011-20231027   gcc  
x86_64                randconfig-012-20231027   gcc  
x86_64                randconfig-013-20231027   gcc  
x86_64                randconfig-014-20231027   gcc  
x86_64                randconfig-015-20231027   gcc  
x86_64                randconfig-016-20231027   gcc  
x86_64                randconfig-071-20231027   gcc  
x86_64                randconfig-072-20231027   gcc  
x86_64                randconfig-073-20231027   gcc  
x86_64                randconfig-074-20231027   gcc  
x86_64                randconfig-075-20231027   gcc  
x86_64                randconfig-076-20231027   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                       common_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
