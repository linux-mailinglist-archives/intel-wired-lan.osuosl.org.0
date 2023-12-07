Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC6D808E6F
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Dec 2023 18:15:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A0C908190B;
	Thu,  7 Dec 2023 17:15:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A0C908190B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701969348;
	bh=gZTY7/eZHlMge6vnDj9VU+/UoknVNMV/cuSkBiNuB38=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=qXE5xMkdg3iwOTcx5SX2uSteGHfmDgqkzszrrmE0RHTkiE52/Oaif9qRwlbbiNU47
	 nqJPeWz+XBiemC7H5nJ9HtgZMC0ljjbTahhzji7CLEAl7HGHtpTOgUD79gN3dcrahn
	 Kbj7y7b6pobM0iF96wmwq5B+azKq+7U2f8vbBJuykfxUILXyuDmF1xoRJtuLLJgwkl
	 i6uL0CPl6JFP/a7sTwTxRR1zbkkfpGfY8tKT1fWw2tIEs9sQIpIBYfFuF8pdCQ/HeX
	 +TwmsI7AK+1Wb91mdbzNOdEmqiKlOoyLaXS6j/MelQVoi0urm3RqESesDDCFTPO3xL
	 CGX29kRUVx0sw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Mm0D7bsZnbm5; Thu,  7 Dec 2023 17:15:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 45273815CC;
	Thu,  7 Dec 2023 17:15:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 45273815CC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5A05A1BF380
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 17:15:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3F0AD4220A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 17:15:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3F0AD4220A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LXlJ7TzHxz-1 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Dec 2023 17:15:41 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3E7E4421F5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 17:15:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3E7E4421F5
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="374433029"
X-IronPort-AV: E=Sophos;i="6.04,258,1695711600"; d="scan'208";a="374433029"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 09:15:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="721547553"
X-IronPort-AV: E=Sophos;i="6.04,258,1695711600"; d="scan'208";a="721547553"
Received: from lkp-server02.sh.intel.com (HELO b07ab15da5fe) ([10.239.97.151])
 by orsmga003.jf.intel.com with ESMTP; 07 Dec 2023 09:15:39 -0800
Received: from kbuild by b07ab15da5fe with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rBHyL-000Ca3-0N
 for intel-wired-lan@lists.osuosl.org; Thu, 07 Dec 2023 17:15:37 +0000
Date: Fri, 08 Dec 2023 01:15:34 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202312080132.KXZCnuXA-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701969341; x=1733505341;
 h=date:from:to:subject:message-id;
 bh=kNkd02alaFd6Pqa0fI9UDxrByiW6P1WUK+Z30TBi15I=;
 b=hPiwfvrW3FYmnmUNdjQcbBJ3bnZxaEwf2l64nkO9ReV69UWydb4iqFtZ
 CtSDtqpJSCzds8WgePClV0Eo0vcBrq3EG6VbTa0nD2ANd6OK3Bu/e3EfA
 5VmywdBkDmkcY22zdshAP2sgCeztqLRZj0x1MZ1rBILntgPgH2xJTyhdW
 mC/i5U2GXs3M/bT++digQlAORt8WwT7ys5d3b+5wDjOr/QpLt7jBUFBR1
 ZfYPwnHU3YdUXaXajtIkKaLQr/mFAjtRfPXGQXwhc29R75GEGfGfjNii0
 DqxB2zKvsPV48ieLmIyhSYEq0q+e1/KtnI9RWEKOnK3d+tDj3wRdNQZ7E
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hPiwfvrW
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 3c1dd2ac39c55beaace43fec4466abb740b2b276
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
branch HEAD: 3c1dd2ac39c55beaace43fec4466abb740b2b276  idpf: fix corrupted frames and skb leaks in singleq mode

elapsed time: 1453m

configs tested: 151
configs skipped: 0

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
arc                   randconfig-001-20231207   gcc  
arc                   randconfig-002-20231207   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                   randconfig-001-20231207   gcc  
arm                   randconfig-002-20231207   gcc  
arm                   randconfig-003-20231207   gcc  
arm                   randconfig-004-20231207   gcc  
arm                           sama7_defconfig   clang
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20231207   gcc  
arm64                 randconfig-002-20231207   gcc  
arm64                 randconfig-003-20231207   gcc  
arm64                 randconfig-004-20231207   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20231207   gcc  
csky                  randconfig-002-20231207   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon               randconfig-001-20231207   clang
hexagon               randconfig-002-20231207   clang
i386                             allmodconfig   clang
i386                              allnoconfig   clang
i386                             allyesconfig   clang
i386         buildonly-randconfig-001-20231207   gcc  
i386         buildonly-randconfig-002-20231207   gcc  
i386         buildonly-randconfig-003-20231207   gcc  
i386         buildonly-randconfig-004-20231207   gcc  
i386         buildonly-randconfig-005-20231207   gcc  
i386         buildonly-randconfig-006-20231207   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20231207   gcc  
i386                  randconfig-002-20231207   gcc  
i386                  randconfig-003-20231207   gcc  
i386                  randconfig-004-20231207   gcc  
i386                  randconfig-005-20231207   gcc  
i386                  randconfig-006-20231207   gcc  
i386                  randconfig-011-20231207   clang
i386                  randconfig-012-20231207   clang
i386                  randconfig-013-20231207   clang
i386                  randconfig-014-20231207   clang
i386                  randconfig-015-20231207   clang
i386                  randconfig-016-20231207   clang
loongarch                        allmodconfig   gcc  
loongarch             randconfig-001-20231207   gcc  
loongarch             randconfig-002-20231207   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                        m5272c3_defconfig   gcc  
m68k                        mvme147_defconfig   gcc  
m68k                        stmark2_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                       allyesconfig   gcc  
mips                             allyesconfig   gcc  
mips                       bmips_be_defconfig   gcc  
mips                           ip27_defconfig   gcc  
mips                   sb1250_swarm_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                 randconfig-001-20231207   gcc  
nios2                 randconfig-002-20231207   gcc  
openrisc                         allyesconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                randconfig-001-20231207   gcc  
parisc                randconfig-002-20231207   gcc  
powerpc                          allmodconfig   clang
powerpc                          allyesconfig   clang
powerpc                    gamecube_defconfig   clang
powerpc                   motionpro_defconfig   gcc  
powerpc                     mpc83xx_defconfig   gcc  
powerpc                    mvme5100_defconfig   clang
powerpc                     powernv_defconfig   clang
powerpc                      ppc40x_defconfig   gcc  
powerpc               randconfig-001-20231207   gcc  
powerpc               randconfig-002-20231207   gcc  
powerpc               randconfig-003-20231207   gcc  
powerpc                    socrates_defconfig   gcc  
powerpc64             randconfig-001-20231207   gcc  
powerpc64             randconfig-002-20231207   gcc  
powerpc64             randconfig-003-20231207   gcc  
riscv                            allmodconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                 randconfig-001-20231207   gcc  
riscv                 randconfig-002-20231207   gcc  
riscv                          rv32_defconfig   clang
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                  randconfig-001-20231207   clang
s390                  randconfig-002-20231207   clang
sh                               allmodconfig   gcc  
sh                               allyesconfig   gcc  
sh                        dreamcast_defconfig   gcc  
sh                    randconfig-001-20231207   gcc  
sh                    randconfig-002-20231207   gcc  
sh                           se7750_defconfig   gcc  
sh                           se7780_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64               randconfig-001-20231207   gcc  
sparc64               randconfig-002-20231207   gcc  
um                               allmodconfig   clang
um                               allyesconfig   clang
um                    randconfig-001-20231207   gcc  
um                    randconfig-002-20231207   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20231207   gcc  
x86_64       buildonly-randconfig-002-20231207   gcc  
x86_64       buildonly-randconfig-003-20231207   gcc  
x86_64       buildonly-randconfig-004-20231207   gcc  
x86_64       buildonly-randconfig-005-20231207   gcc  
x86_64       buildonly-randconfig-006-20231207   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20231207   clang
x86_64                randconfig-002-20231207   clang
x86_64                randconfig-003-20231207   clang
x86_64                randconfig-004-20231207   clang
x86_64                randconfig-005-20231207   clang
x86_64                randconfig-006-20231207   clang
x86_64                randconfig-011-20231207   gcc  
x86_64                randconfig-012-20231207   gcc  
x86_64                randconfig-013-20231207   gcc  
x86_64                randconfig-014-20231207   gcc  
x86_64                randconfig-015-20231207   gcc  
x86_64                randconfig-016-20231207   gcc  
x86_64                randconfig-071-20231207   gcc  
x86_64                randconfig-072-20231207   gcc  
x86_64                randconfig-073-20231207   gcc  
x86_64                randconfig-074-20231207   gcc  
x86_64                randconfig-075-20231207   gcc  
x86_64                randconfig-076-20231207   gcc  
x86_64                          rhel-8.3-rust   clang
xtensa                randconfig-001-20231207   gcc  
xtensa                randconfig-002-20231207   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
