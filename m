Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BE2B720E3E
	for <lists+intel-wired-lan@lfdr.de>; Sat,  3 Jun 2023 08:59:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 88E7284510;
	Sat,  3 Jun 2023 06:59:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 88E7284510
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685775578;
	bh=w+MS9ERlFz5bUc1pMc3E/ESRiKDmlG92St2zF7mnfzU=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=KTbaH38HlbiuF/8x8BWB7DZijISSYuEl4ylmUmWpazhsK2XCBmiHO5N4A7Ilda/gj
	 s2te0UnvT8LQq2DdU5qXkV9SrmCFXvnYhrGgfhTGaF71ZX7EkNlYzRQEBK12tnsCc9
	 E/P/kLQA5j3swngtfS2hBdPI8eWKTjL0ayCtIaZcPmWWea52bYe+iGDuOqyF10xF26
	 /M2YqoGsGLtLwiLsHAvdBf+hVb0us7XSKOl/3lUq6wVH1PNyED0wFcdfhV93qv3rk+
	 ptfd5PnnsZO1PjzRvlmzEGuqGOLwfZbNh6PVZeAk2UfOWzWdXTVx+zG+icZ+zBn0au
	 lt//UFfhcF5jA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RZ3Pyc5hLLy4; Sat,  3 Jun 2023 06:59:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 21DA884517;
	Sat,  3 Jun 2023 06:59:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 21DA884517
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 85E1A1BF215
 for <intel-wired-lan@lists.osuosl.org>; Sat,  3 Jun 2023 06:59:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6FE0984510
 for <intel-wired-lan@lists.osuosl.org>; Sat,  3 Jun 2023 06:59:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6FE0984510
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ApsZBxu5kIjQ for <intel-wired-lan@lists.osuosl.org>;
 Sat,  3 Jun 2023 06:59:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6CFC984511
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6CFC984511
 for <intel-wired-lan@lists.osuosl.org>; Sat,  3 Jun 2023 06:59:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="419583023"
X-IronPort-AV: E=Sophos;i="6.00,215,1681196400"; d="scan'208";a="419583023"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 23:59:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="741063629"
X-IronPort-AV: E=Sophos;i="6.00,215,1681196400"; d="scan'208";a="741063629"
Received: from lkp-server01.sh.intel.com (HELO 15ab08e44a81) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 02 Jun 2023 23:59:24 -0700
Received: from kbuild by 15ab08e44a81 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1q5LER-0001Oq-13
 for intel-wired-lan@lists.osuosl.org; Sat, 03 Jun 2023 06:59:23 +0000
Date: Sat, 03 Jun 2023 14:59:11 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <20230603065911.huU5V%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685775566; x=1717311566;
 h=date:from:to:subject:message-id;
 bh=In3IzrqGVNGHHxQOlXdg/vHe+0S7a3cY0mDkAM23l+0=;
 b=LPP2lpznAFIhUdBdW3WLPM6xczrEREHZImkvqrQvFLoUb0oHU+BT7peU
 61MtuKki81hS7W/st+aNuiicjBYNPWI2iMf0BH91tVnCxGTYPWQwHPj6m
 soMDV7yBOAK1mAQVpmbop8PcbH0Tbw7ej11lNNotHcK3YvOi2qrOIa5Q0
 cRcy1bKpGO4JrZKezLBNBYUSzAltWTNytyVawd0f643f8z5T2iJ8MIfAz
 0oQGH9csZPl61mz9GdrCn244kHysYk95GCCRUoakgTcUSZjhBmJXytAmd
 EslxHRqL/Zg9jayxgYN6V/e4DMe6bckbKwOboqv/ZcHK3yb1LujEQMzm+
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LPP2lpzn
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 7a4cc1665cdd3176c77f5ba34b5ae872dcc8ff36
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
branch HEAD: 7a4cc1665cdd3176c77f5ba34b5ae872dcc8ff36  igb: Fix extts capture value format for 82580/i354/i350

elapsed time: 726m

configs tested: 157
configs skipped: 9

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r001-20230531   gcc  
alpha        buildonly-randconfig-r006-20230531   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r015-20230601   gcc  
alpha                randconfig-r021-20230531   gcc  
alpha                randconfig-r033-20230602   gcc  
arc                              allyesconfig   gcc  
arc                          axs101_defconfig   gcc  
arc          buildonly-randconfig-r005-20230531   gcc  
arc                                 defconfig   gcc  
arc                 nsimosci_hs_smp_defconfig   gcc  
arc                  randconfig-r015-20230601   gcc  
arc                  randconfig-r043-20230531   gcc  
arc                           tb10x_defconfig   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r001-20230531   gcc  
arm                          collie_defconfig   clang
arm                     davinci_all_defconfig   clang
arm                                 defconfig   gcc  
arm                      integrator_defconfig   gcc  
arm                  randconfig-r024-20230531   gcc  
arm                  randconfig-r046-20230531   gcc  
arm                           sama7_defconfig   clang
arm                           spitz_defconfig   clang
arm                           sunxi_defconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r031-20230602   gcc  
arm64                randconfig-r034-20230602   gcc  
arm64                randconfig-r036-20230602   gcc  
csky         buildonly-randconfig-r002-20230531   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r023-20230531   gcc  
hexagon              randconfig-r041-20230531   clang
hexagon              randconfig-r045-20230531   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230531   gcc  
i386                 randconfig-i002-20230531   gcc  
i386                 randconfig-i003-20230531   gcc  
i386                 randconfig-i004-20230531   gcc  
i386                 randconfig-i005-20230531   gcc  
i386                 randconfig-i006-20230531   gcc  
i386                 randconfig-i051-20230531   gcc  
i386                 randconfig-i052-20230531   gcc  
i386                 randconfig-i053-20230531   gcc  
i386                 randconfig-i054-20230531   gcc  
i386                 randconfig-i055-20230531   gcc  
i386                 randconfig-i056-20230531   gcc  
i386                 randconfig-i061-20230531   gcc  
i386                 randconfig-i062-20230531   gcc  
i386                 randconfig-i063-20230531   gcc  
i386                 randconfig-i064-20230531   gcc  
i386                 randconfig-i065-20230531   gcc  
i386                 randconfig-i066-20230531   gcc  
i386                 randconfig-r012-20230601   gcc  
i386                 randconfig-r035-20230602   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r004-20230531   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r002-20230531   gcc  
loongarch            randconfig-r033-20230602   gcc  
m68k                             allmodconfig   gcc  
m68k                         amcore_defconfig   gcc  
m68k                          atari_defconfig   gcc  
m68k         buildonly-randconfig-r006-20230531   gcc  
m68k                                defconfig   gcc  
m68k                       m5249evb_defconfig   gcc  
m68k                        m5307c3_defconfig   gcc  
m68k                 randconfig-r003-20230531   gcc  
m68k                 randconfig-r013-20230601   gcc  
m68k                 randconfig-r016-20230601   gcc  
m68k                 randconfig-r023-20230531   gcc  
m68k                 randconfig-r034-20230602   gcc  
m68k                        stmark2_defconfig   gcc  
m68k                          sun3x_defconfig   gcc  
microblaze           randconfig-r013-20230601   gcc  
microblaze           randconfig-r021-20230531   gcc  
microblaze           randconfig-r022-20230531   gcc  
microblaze           randconfig-r025-20230531   gcc  
microblaze           randconfig-r031-20230602   gcc  
microblaze           randconfig-r036-20230602   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                          ath79_defconfig   clang
mips                           ci20_defconfig   gcc  
mips                     decstation_defconfig   gcc  
mips                          rm200_defconfig   clang
nios2                         3c120_defconfig   gcc  
nios2                            alldefconfig   gcc  
nios2        buildonly-randconfig-r002-20230531   gcc  
nios2        buildonly-randconfig-r004-20230531   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r012-20230601   gcc  
openrisc     buildonly-randconfig-r003-20230531   gcc  
openrisc             randconfig-r004-20230531   gcc  
openrisc             randconfig-r011-20230601   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                   bluestone_defconfig   clang
powerpc                        icon_defconfig   clang
powerpc                   motionpro_defconfig   gcc  
powerpc                 mpc836x_rdk_defconfig   clang
powerpc                      ppc44x_defconfig   clang
powerpc              randconfig-r014-20230601   gcc  
powerpc              randconfig-r032-20230602   gcc  
powerpc                     tqm8560_defconfig   clang
powerpc                        warp_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230531   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r001-20230531   gcc  
s390                 randconfig-r011-20230601   gcc  
s390                 randconfig-r044-20230531   clang
sh                               allmodconfig   gcc  
sh                        edosk7760_defconfig   gcc  
sh                             espt_defconfig   gcc  
sh                            hp6xx_defconfig   gcc  
sh                   randconfig-r016-20230601   gcc  
sh                          rsk7264_defconfig   gcc  
sh                           se7722_defconfig   gcc  
sh                          urquell_defconfig   gcc  
sparc        buildonly-randconfig-r002-20230531   gcc  
sparc        buildonly-randconfig-r006-20230531   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r035-20230602   gcc  
sparc64              randconfig-r022-20230531   gcc  
sparc64              randconfig-r025-20230531   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230531   gcc  
x86_64               randconfig-a002-20230531   gcc  
x86_64               randconfig-a003-20230531   gcc  
x86_64               randconfig-a004-20230531   gcc  
x86_64               randconfig-a005-20230531   gcc  
x86_64               randconfig-a006-20230531   gcc  
x86_64               randconfig-r006-20230531   gcc  
x86_64               randconfig-r032-20230602   gcc  
x86_64                          rhel-8.3-func   gcc  
x86_64                    rhel-8.3-kselftests   gcc  
x86_64                           rhel-8.3-ltp   gcc  
x86_64                               rhel-8.3   gcc  
xtensa                    xip_kc705_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
