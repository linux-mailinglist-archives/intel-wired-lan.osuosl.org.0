Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BFEB7A2DDB
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 Sep 2023 06:06:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 792424040D;
	Sat, 16 Sep 2023 04:06:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 792424040D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694837183;
	bh=nwwhw0uE2jvg1SAjuQQbUVGIYPQ3ZKVH3DHN96dYQw0=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=3iLZSg+euUdsphDPs0/eXqS51uzrFqra+tbKQMP98o3GuBeKci3xALMhBRtpUn5lo
	 nO6ls5eRQKfA4Ro0BhyJw0N6TcEzXYijrf3V/d3gUkLz9AQem6+fAn0tTqKcTm4N99
	 u4P5qtI23p4dh4zW/i1WRii3/D9+wZgzcArZoj3ePFwoxW3b0STThQcb+s+ojH5P4J
	 XCKCfv/M+MZwOTfzZdRRVVFpuNd5UqB+M49msSwc9qeUZOXn8XTz+eR+Tq6Gb8biEK
	 tFyoFSRjRaeOHwYyFKH8lJ2rOr4ouyIwRK9Zl4AD80zOwppoCvWIWRwb43+5U+g03m
	 /n+mbq4jjT7JQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J96iGoFHQsS4; Sat, 16 Sep 2023 04:06:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 46F904056B;
	Sat, 16 Sep 2023 04:06:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 46F904056B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4F96F1BF577
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Sep 2023 04:06:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2B7BD4040D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Sep 2023 04:06:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2B7BD4040D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 28OP9zSn5ceY for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 Sep 2023 04:06:12 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 47FD7409F9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Sep 2023 04:06:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 47FD7409F9
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="359631049"
X-IronPort-AV: E=Sophos;i="6.02,151,1688454000"; d="scan'208";a="359631049"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 21:06:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="810731069"
X-IronPort-AV: E=Sophos;i="6.02,151,1688454000"; d="scan'208";a="810731069"
Received: from lkp-server02.sh.intel.com (HELO 9ef86b2655e5) ([10.239.97.151])
 by fmsmga008.fm.intel.com with ESMTP; 15 Sep 2023 21:06:09 -0700
Received: from kbuild by 9ef86b2655e5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qhMZL-0003pI-1U
 for intel-wired-lan@lists.osuosl.org; Sat, 16 Sep 2023 04:06:07 +0000
Date: Sat, 16 Sep 2023 12:05:21 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202309161220.13Rz4qrw-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694837171; x=1726373171;
 h=date:from:to:subject:message-id;
 bh=EZXLuWlBDFgpaLst8q8ge7w4126TxDQGEfn5EDeXqHw=;
 b=g8tMXYAk9rdAeusKvdvbttUetaW5z8SDpyMeFxAvrtFyQMELDHcFZhml
 SkZbRra4kyNLzg+A15tO3ZfSyZyJZKb46VXB591+z4ATc5ttMNJKtwn4s
 HImAWDdc27XqzLDqhtKmyOYDE+CCCEFv6Lu9atDqsmererrXfs3ImY6qv
 gfh4ywhjPSixB8mJzAIDYCCw3CstusiQahrvAMasqpWbj67Gy1CVEZbAH
 5qOV0HsVstX6fCVtF8IuUXyEe1P0LgLYGVbVR+6JvXGejefySC489XiVo
 lIySRj0xVVGb6Of6j0+7Vo5VrwN4kp6fGIzkaQbx2QYJQ0vJqHZyGqF+s
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=g8tMXYAk
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 ae6ef5ce5cdcbf3a281638ac38627f00a638ffda
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: ae6ef5ce5cdcbf3a281638ac38627f00a638ffda  ice: store VF's pci_dev ptr in ice_vf

elapsed time: 720m

configs tested: 144
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
arc                   randconfig-001-20230916   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                       imx_v4_v5_defconfig   clang
arm                         lpc18xx_defconfig   gcc  
arm                        vexpress_defconfig   clang
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
m68k                       m5208evb_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                            ar7_defconfig   gcc  
mips                        bcm63xx_defconfig   clang
mips                       rbtx49xx_defconfig   clang
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
powerpc                   motionpro_defconfig   gcc  
powerpc                    sam440ep_defconfig   gcc  
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
