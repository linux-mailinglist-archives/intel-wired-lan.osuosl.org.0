Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D7E957BCA5D
	for <lists+intel-wired-lan@lfdr.de>; Sun,  8 Oct 2023 00:17:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 702F483D45;
	Sat,  7 Oct 2023 22:17:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 702F483D45
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696717062;
	bh=ggFFjozPEwKaivK2OhoM/R1bwbNbDfFe6eukeFrtv5M=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=IDNxx1MZXob0Frue9uhUJZoAWRVt5fe5CtEBPs86/ClYDOMYrV1pxXIaZpa+FlQdD
	 aJKX9JRPxW8RRm7MmG1teu5sRvqhgHbgMrYaikTEimicMniwS1WQTZIIIGOa+baW1V
	 vcy55fuizQU0uj05lbAkrP/NyC0cGQoDtuZsRIBZjJn0wLlCwPpTsztJTZeOPRFF2U
	 MMO0nlwZxcuYBAEoXX19/JEqjIAHCFHNSwBWJaCDPExOihNI1qHX/c8nb3Y6K+Uc7P
	 ZGHVa6TElq3A7lPRrAmLphsZMhnfK0wOR6agafRawD1guni1fKmJjEjp65T0IkDuxS
	 9KC3nOI4s+0Tg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ope7tBox3Sye; Sat,  7 Oct 2023 22:17:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4073B83D3F;
	Sat,  7 Oct 2023 22:17:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4073B83D3F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 024D81BF36A
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Oct 2023 22:17:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D81074036E
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Oct 2023 22:17:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D81074036E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W4QAMkhPuHnf for <intel-wired-lan@lists.osuosl.org>;
 Sat,  7 Oct 2023 22:17:35 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 94249401C2
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Oct 2023 22:17:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 94249401C2
X-IronPort-AV: E=McAfee;i="6600,9927,10856"; a="414954671"
X-IronPort-AV: E=Sophos;i="6.03,207,1694761200"; d="scan'208";a="414954671"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2023 15:17:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10856"; a="1083894571"
X-IronPort-AV: E=Sophos;i="6.03,207,1694761200"; d="scan'208";a="1083894571"
Received: from lkp-server01.sh.intel.com (HELO 8a3a91ad4240) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 07 Oct 2023 15:17:33 -0700
Received: from kbuild by 8a3a91ad4240 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qpFc3-0004qt-2l
 for intel-wired-lan@lists.osuosl.org; Sat, 07 Oct 2023 22:17:31 +0000
Date: Sun, 08 Oct 2023 06:17:24 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202310080622.nMrP1vva-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696717055; x=1728253055;
 h=date:from:to:subject:message-id;
 bh=PFQawbnI1k/5b8jD64OF8o1qMzMLzrXVKDBAV84D3NM=;
 b=f5mN4YiscUPNI3+H2MyyeAX79NLCBcjRQSjfj7fdQd9pyn+fQWwXP2W2
 kz/5vipmn8BPHJnMyN6X/VaR8LUfVfChOpZZYNf+6Q+f6nd2aqbCrxVAt
 BtqIp0sdXmkMAy+Lw9tHdsc1i2cTrX7SH29KTrBn+XcH9kQcjzwgGePQ3
 ljqRBdBPjoN9SSQV/l87Q/cveAs6mRWk4I9JaqIfztlSvxGUxvfndyE5l
 0HdAfV0hjM688Ll6Ui46C4WTLMOp1ZjNUZMgZSTcMp8jOVHA/+Sea2ZHM
 MjQcfUSvbJBRSoxIPiZT27Nqiln4cFcm7W6WR9rlKmCQTUgcStbVaXfTS
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=f5mN4Yis
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 13e5bef535438fbbfc61b47e4444bba768edb187
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
branch HEAD: 13e5bef535438fbbfc61b47e4444bba768edb187  ixgbe: fix crash with empty VF macvlan list

elapsed time: 1447m

configs tested: 122
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
arc                   randconfig-001-20231007   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                             mxs_defconfig   clang
arm                            qcom_defconfig   gcc  
arm                   randconfig-001-20231007   gcc  
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
i386         buildonly-randconfig-001-20231007   gcc  
i386         buildonly-randconfig-002-20231007   gcc  
i386         buildonly-randconfig-003-20231007   gcc  
i386         buildonly-randconfig-004-20231007   gcc  
i386         buildonly-randconfig-005-20231007   gcc  
i386         buildonly-randconfig-006-20231007   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20231007   gcc  
i386                  randconfig-002-20231007   gcc  
i386                  randconfig-003-20231007   gcc  
i386                  randconfig-004-20231007   gcc  
i386                  randconfig-005-20231007   gcc  
i386                  randconfig-006-20231007   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20231007   gcc  
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
mips                       bmips_be_defconfig   gcc  
mips                         rt305x_defconfig   gcc  
mips                   sb1250_swarm_defconfig   clang
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
powerpc                    gamecube_defconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20231008   gcc  
riscv                          rv32_defconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20231008   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                          rsk7203_defconfig   gcc  
sh                           se7343_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                 randconfig-001-20231008   gcc  
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
x86_64                           allyesconfig   clang
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-001-20231007   gcc  
x86_64       buildonly-randconfig-002-20231007   gcc  
x86_64       buildonly-randconfig-003-20231007   gcc  
x86_64       buildonly-randconfig-004-20231007   gcc  
x86_64       buildonly-randconfig-005-20231007   gcc  
x86_64       buildonly-randconfig-006-20231007   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-011-20231008   gcc  
x86_64                randconfig-012-20231008   gcc  
x86_64                randconfig-013-20231008   gcc  
x86_64                randconfig-014-20231008   gcc  
x86_64                randconfig-015-20231008   gcc  
x86_64                randconfig-016-20231008   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
