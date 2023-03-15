Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 281226BB558
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Mar 2023 14:57:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BD5674098E;
	Wed, 15 Mar 2023 13:57:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BD5674098E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678888633;
	bh=NcbiG9w2+yJl9FC9RQVR+s/Z9l5O6wii7qYQBVGYVUI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=5UsbMV7x9TdkjEU1kUj8w/7jFZGOlAhWUE+5AjYhGx3XDtjtaUNjbjc39Dil56SU1
	 xjEfUVcosZRXVBXQmEhP3IQJfrX4p0mvix+jBmBbc1ogWcQ7l/JHWWijmLWBiZxHh3
	 rldzLhaXCRH4HhNWv6PIlLvQ9/J3sY2gi7Jj+dmi0qjzBwmg8Vj5UYix6D0mZCxsF5
	 uaXup3JMtAe+pxX8bj09/55+xyp2xcamPMR4db2n9i9pPuXKMEu9QFwkbu0zRw8kQ2
	 6oJ45qtdw8C77mAIio1CMsKybm8PmYBJt4qK6YMMPB2b6XJ/GkNG/v5O6pJodAXBEH
	 bbmGVh7Ic8hZA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 42oRGqddddv7; Wed, 15 Mar 2023 13:57:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 322554037E;
	Wed, 15 Mar 2023 13:57:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 322554037E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CF4111BF31D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Mar 2023 13:57:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AC391813CA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Mar 2023 13:57:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AC391813CA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QDlfuM1s9A84 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Mar 2023 13:57:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5820B812BF
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5820B812BF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Mar 2023 13:57:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10649"; a="402576791"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400"; d="scan'208";a="402576791"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2023 06:56:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10649"; a="743703401"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400"; d="scan'208";a="743703401"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 15 Mar 2023 06:56:49 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pcRcW-0007iR-2R;
 Wed, 15 Mar 2023 13:56:48 +0000
Date: Wed, 15 Mar 2023 21:56:27 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6411ce8b.LoEl9vygdZepqn3U%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678888624; x=1710424624;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=7/YB7/NppWVDaSn3XzIAUJpvB4i1BCylZFzc3IhssIk=;
 b=lGNU7ypXSGUZbheFNGRetndpJ5ihIwQBl0f+3QXd9pHtOCJXGMQYDEm2
 Ag+PFli6e5SXzqeCs4Q39rV8szq1pkgVh0svyph2WuXUei1WWuy+fgSdc
 SvUlyJo2kJ5cqKkyz3SS04uxdoBWLdJU9YHODhYRb4/fjfO7cdyzEIArj
 jQbAajX1fSoIoNj3c4i5pWzrRkFE7kzcXbRpl3DjJc99DRem89dVhs+pZ
 YHTnDWywqquBaIiRiDqbkLuEI5aphN0Cn02eA0ZlqM8+ZVZ0N6ke4suqJ
 TrbuaLtPMk5kr1ikPvnJUhiwKhLmoYfu/xk7booo+WLIW+W1zzUkpnpsS
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lGNU7ypX
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 bcc858689db5f2e5a8d4d6e8bc5bb9736cd80626
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git main
branch HEAD: bcc858689db5f2e5a8d4d6e8bc5bb9736cd80626  net: Use of_property_present() for testing DT property presence

elapsed time: 2239m

configs tested: 340
configs skipped: 30

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r001-20230313   gcc  
alpha        buildonly-randconfig-r002-20230313   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r002-20230313   gcc  
alpha                randconfig-r006-20230313   gcc  
alpha                randconfig-r016-20230312   gcc  
alpha                randconfig-r026-20230313   gcc  
alpha                randconfig-r031-20230313   gcc  
alpha                randconfig-r034-20230313   gcc  
arc                              allyesconfig   gcc  
arc                      axs103_smp_defconfig   gcc  
arc          buildonly-randconfig-r004-20230312   gcc  
arc          buildonly-randconfig-r005-20230313   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r001-20230313   gcc  
arc                  randconfig-r003-20230312   gcc  
arc                  randconfig-r004-20230312   gcc  
arc                  randconfig-r013-20230313   gcc  
arc                  randconfig-r014-20230312   gcc  
arc                  randconfig-r015-20230312   gcc  
arc                  randconfig-r022-20230313   gcc  
arc                  randconfig-r023-20230313   gcc  
arc                  randconfig-r024-20230313   gcc  
arc                  randconfig-r026-20230312   gcc  
arc                  randconfig-r031-20230313   gcc  
arc                  randconfig-r036-20230312   gcc  
arc                  randconfig-r043-20230312   gcc  
arc                  randconfig-r043-20230313   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r003-20230312   clang
arm          buildonly-randconfig-r004-20230313   gcc  
arm                     davinci_all_defconfig   clang
arm                                 defconfig   gcc  
arm                          moxart_defconfig   clang
arm                        multi_v7_defconfig   gcc  
arm                       netwinder_defconfig   clang
arm                  randconfig-c002-20230312   gcc  
arm                  randconfig-r006-20230313   clang
arm                  randconfig-r011-20230313   gcc  
arm                  randconfig-r013-20230313   gcc  
arm                  randconfig-r016-20230313   gcc  
arm                  randconfig-r024-20230312   clang
arm                  randconfig-r034-20230313   clang
arm                  randconfig-r046-20230312   clang
arm                  randconfig-r046-20230313   gcc  
arm                           spitz_defconfig   clang
arm                         wpcm450_defconfig   gcc  
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r001-20230312   clang
arm64        buildonly-randconfig-r004-20230313   gcc  
arm64        buildonly-randconfig-r006-20230313   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r003-20230312   clang
arm64                randconfig-r004-20230312   clang
arm64                randconfig-r006-20230312   clang
arm64                randconfig-r011-20230312   gcc  
arm64                randconfig-r012-20230313   clang
arm64                randconfig-r023-20230313   clang
arm64                randconfig-r032-20230313   gcc  
arm64                randconfig-r034-20230312   clang
csky                                defconfig   gcc  
csky                 randconfig-r003-20230312   gcc  
csky                 randconfig-r004-20230313   gcc  
csky                 randconfig-r011-20230313   gcc  
csky                 randconfig-r012-20230313   gcc  
csky                 randconfig-r013-20230312   gcc  
csky                 randconfig-r014-20230313   gcc  
csky                 randconfig-r022-20230313   gcc  
csky                 randconfig-r023-20230312   gcc  
csky                 randconfig-r025-20230312   gcc  
csky                 randconfig-r025-20230313   gcc  
csky                 randconfig-r031-20230313   gcc  
csky                 randconfig-r036-20230313   gcc  
hexagon      buildonly-randconfig-r001-20230313   clang
hexagon              randconfig-r006-20230312   clang
hexagon              randconfig-r016-20230313   clang
hexagon              randconfig-r021-20230312   clang
hexagon              randconfig-r033-20230312   clang
hexagon              randconfig-r041-20230312   clang
hexagon              randconfig-r041-20230313   clang
hexagon              randconfig-r045-20230312   clang
hexagon              randconfig-r045-20230313   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r006-20230313   gcc  
i386                         debian-10.3-func   gcc  
i386                   debian-10.3-kselftests   gcc  
i386                        debian-10.3-kunit   gcc  
i386                          debian-10.3-kvm   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230313   gcc  
i386                          randconfig-a001   gcc  
i386                 randconfig-a002-20230313   gcc  
i386                          randconfig-a002   clang
i386                 randconfig-a003-20230313   gcc  
i386                          randconfig-a003   gcc  
i386                 randconfig-a004-20230313   gcc  
i386                          randconfig-a004   clang
i386                 randconfig-a005-20230313   gcc  
i386                          randconfig-a005   gcc  
i386                 randconfig-a006-20230313   gcc  
i386                          randconfig-a006   clang
i386                 randconfig-a011-20230313   clang
i386                 randconfig-a012-20230313   clang
i386                 randconfig-a013-20230313   clang
i386                 randconfig-a014-20230313   clang
i386                 randconfig-a015-20230313   clang
i386                 randconfig-a016-20230313   clang
i386                          randconfig-c001   gcc  
i386                 randconfig-r003-20230313   gcc  
i386                 randconfig-r005-20230313   gcc  
i386                 randconfig-r023-20230313   clang
i386                 randconfig-r032-20230313   gcc  
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r002-20230312   gcc  
ia64         buildonly-randconfig-r006-20230312   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r002-20230313   gcc  
ia64                 randconfig-r006-20230313   gcc  
ia64                 randconfig-r011-20230312   gcc  
ia64                 randconfig-r012-20230312   gcc  
ia64                 randconfig-r022-20230313   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r002-20230313   gcc  
loongarch    buildonly-randconfig-r005-20230312   gcc  
loongarch                           defconfig   gcc  
loongarch                 loongson3_defconfig   gcc  
loongarch            randconfig-r002-20230312   gcc  
loongarch            randconfig-r002-20230313   gcc  
loongarch            randconfig-r016-20230312   gcc  
loongarch            randconfig-r021-20230312   gcc  
loongarch            randconfig-r022-20230312   gcc  
loongarch            randconfig-r033-20230313   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r004-20230313   gcc  
m68k         buildonly-randconfig-r006-20230313   gcc  
m68k                                defconfig   gcc  
m68k                            q40_defconfig   gcc  
m68k                 randconfig-r001-20230313   gcc  
m68k                 randconfig-r003-20230313   gcc  
m68k                 randconfig-r004-20230312   gcc  
m68k                 randconfig-r005-20230312   gcc  
m68k                 randconfig-r006-20230312   gcc  
m68k                 randconfig-r011-20230312   gcc  
m68k                 randconfig-r014-20230313   gcc  
m68k                 randconfig-r015-20230313   gcc  
m68k                 randconfig-r016-20230312   gcc  
m68k                 randconfig-r016-20230313   gcc  
m68k                 randconfig-r031-20230313   gcc  
m68k                 randconfig-r032-20230312   gcc  
m68k                          sun3x_defconfig   gcc  
microblaze   buildonly-randconfig-r002-20230312   gcc  
microblaze   buildonly-randconfig-r002-20230313   gcc  
microblaze   buildonly-randconfig-r006-20230312   gcc  
microblaze           randconfig-r001-20230312   gcc  
microblaze           randconfig-r001-20230313   gcc  
microblaze           randconfig-r006-20230312   gcc  
microblaze           randconfig-r023-20230312   gcc  
microblaze           randconfig-r032-20230312   gcc  
microblaze           randconfig-r034-20230312   gcc  
microblaze           randconfig-r035-20230313   gcc  
microblaze           randconfig-r036-20230313   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                        bcm63xx_defconfig   clang
mips         buildonly-randconfig-r002-20230312   gcc  
mips                         cobalt_defconfig   gcc  
mips                         db1xxx_defconfig   gcc  
mips                 randconfig-r001-20230312   gcc  
mips                 randconfig-r004-20230312   gcc  
mips                 randconfig-r005-20230313   clang
mips                 randconfig-r033-20230312   gcc  
mips                 randconfig-r035-20230312   gcc  
nios2        buildonly-randconfig-r001-20230313   gcc  
nios2        buildonly-randconfig-r003-20230312   gcc  
nios2        buildonly-randconfig-r005-20230313   gcc  
nios2        buildonly-randconfig-r006-20230313   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r012-20230312   gcc  
nios2                randconfig-r012-20230313   gcc  
nios2                randconfig-r013-20230312   gcc  
nios2                randconfig-r021-20230313   gcc  
nios2                randconfig-r036-20230312   gcc  
nios2                randconfig-r036-20230313   gcc  
openrisc     buildonly-randconfig-r003-20230312   gcc  
openrisc     buildonly-randconfig-r005-20230313   gcc  
openrisc             randconfig-r014-20230313   gcc  
openrisc             randconfig-r021-20230313   gcc  
openrisc             randconfig-r031-20230312   gcc  
openrisc             randconfig-r034-20230313   gcc  
parisc       buildonly-randconfig-r006-20230313   gcc  
parisc                              defconfig   gcc  
parisc                generic-32bit_defconfig   gcc  
parisc               randconfig-r005-20230312   gcc  
parisc               randconfig-r011-20230312   gcc  
parisc               randconfig-r013-20230312   gcc  
parisc               randconfig-r014-20230312   gcc  
parisc               randconfig-r021-20230313   gcc  
parisc               randconfig-r023-20230313   gcc  
parisc               randconfig-r026-20230313   gcc  
parisc               randconfig-r031-20230313   gcc  
parisc               randconfig-r036-20230313   gcc  
parisc64                            defconfig   gcc  
powerpc                    adder875_defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                 linkstation_defconfig   gcc  
powerpc                 mpc836x_mds_defconfig   clang
powerpc                 mpc836x_rdk_defconfig   clang
powerpc                 mpc85xx_cds_defconfig   gcc  
powerpc                      pasemi_defconfig   gcc  
powerpc                      ppc40x_defconfig   gcc  
powerpc                     rainier_defconfig   gcc  
powerpc              randconfig-r003-20230313   gcc  
powerpc              randconfig-r004-20230313   gcc  
powerpc              randconfig-r014-20230312   gcc  
powerpc              randconfig-r015-20230312   gcc  
powerpc              randconfig-r026-20230312   gcc  
powerpc              randconfig-r033-20230313   gcc  
powerpc              randconfig-r035-20230313   gcc  
powerpc                      tqm8xx_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r001-20230312   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r004-20230313   gcc  
riscv                randconfig-r011-20230313   clang
riscv                randconfig-r012-20230312   gcc  
riscv                randconfig-r014-20230312   gcc  
riscv                randconfig-r024-20230312   gcc  
riscv                randconfig-r032-20230313   gcc  
riscv                randconfig-r042-20230312   gcc  
riscv                randconfig-r042-20230313   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r001-20230312   gcc  
s390         buildonly-randconfig-r002-20230312   gcc  
s390         buildonly-randconfig-r003-20230312   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r013-20230313   clang
s390                 randconfig-r016-20230313   clang
s390                 randconfig-r021-20230312   gcc  
s390                 randconfig-r023-20230312   gcc  
s390                 randconfig-r025-20230312   gcc  
s390                 randconfig-r025-20230313   clang
s390                 randconfig-r032-20230313   gcc  
s390                 randconfig-r044-20230312   gcc  
s390                 randconfig-r044-20230313   clang
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r002-20230313   gcc  
sh           buildonly-randconfig-r003-20230313   gcc  
sh           buildonly-randconfig-r005-20230312   gcc  
sh           buildonly-randconfig-r005-20230313   gcc  
sh                            hp6xx_defconfig   gcc  
sh                          r7785rp_defconfig   gcc  
sh                   randconfig-r015-20230312   gcc  
sh                   randconfig-r016-20230312   gcc  
sh                   randconfig-r022-20230312   gcc  
sh                   randconfig-r022-20230313   gcc  
sh                   randconfig-r023-20230313   gcc  
sh                   randconfig-r024-20230312   gcc  
sh                   randconfig-r024-20230313   gcc  
sh                   randconfig-r034-20230312   gcc  
sh                   rts7751r2dplus_defconfig   gcc  
sh                           se7619_defconfig   gcc  
sh                           se7721_defconfig   gcc  
sh                        sh7763rdp_defconfig   gcc  
sh                          urquell_defconfig   gcc  
sparc        buildonly-randconfig-r003-20230313   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r015-20230312   gcc  
sparc                randconfig-r033-20230313   gcc  
sparc                randconfig-r034-20230312   gcc  
sparc                randconfig-r034-20230313   gcc  
sparc                randconfig-r035-20230312   gcc  
sparc                randconfig-r035-20230313   gcc  
sparc64      buildonly-randconfig-r001-20230312   gcc  
sparc64      buildonly-randconfig-r003-20230312   gcc  
sparc64              randconfig-r001-20230312   gcc  
sparc64              randconfig-r001-20230313   gcc  
sparc64              randconfig-r002-20230312   gcc  
sparc64              randconfig-r004-20230312   gcc  
sparc64              randconfig-r004-20230313   gcc  
sparc64              randconfig-r012-20230313   gcc  
sparc64              randconfig-r021-20230312   gcc  
sparc64              randconfig-r021-20230313   gcc  
sparc64              randconfig-r022-20230312   gcc  
sparc64              randconfig-r024-20230313   gcc  
sparc64              randconfig-r025-20230313   gcc  
sparc64              randconfig-r026-20230312   gcc  
sparc64              randconfig-r033-20230313   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r004-20230313   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230313   gcc  
x86_64                        randconfig-a001   clang
x86_64               randconfig-a002-20230313   gcc  
x86_64               randconfig-a003-20230313   gcc  
x86_64                        randconfig-a003   clang
x86_64               randconfig-a004-20230313   gcc  
x86_64               randconfig-a005-20230313   gcc  
x86_64                        randconfig-a005   clang
x86_64               randconfig-a006-20230313   gcc  
x86_64               randconfig-a011-20230313   clang
x86_64                        randconfig-a011   gcc  
x86_64               randconfig-a012-20230313   clang
x86_64               randconfig-a013-20230313   clang
x86_64                        randconfig-a013   gcc  
x86_64               randconfig-a014-20230313   clang
x86_64               randconfig-a015-20230313   clang
x86_64                        randconfig-a015   gcc  
x86_64               randconfig-a016-20230313   clang
x86_64                        randconfig-c001   gcc  
x86_64               randconfig-k001-20230313   clang
x86_64                        randconfig-k001   clang
x86_64               randconfig-r002-20230313   gcc  
x86_64               randconfig-r006-20230313   gcc  
x86_64               randconfig-r025-20230313   clang
x86_64               randconfig-r033-20230313   gcc  
x86_64               randconfig-r035-20230313   gcc  
x86_64                               rhel-8.3   gcc  
xtensa                           alldefconfig   gcc  
xtensa       buildonly-randconfig-r001-20230312   gcc  
xtensa       buildonly-randconfig-r004-20230312   gcc  
xtensa       buildonly-randconfig-r005-20230312   gcc  
xtensa       buildonly-randconfig-r006-20230312   gcc  
xtensa               randconfig-r001-20230312   gcc  
xtensa               randconfig-r005-20230313   gcc  
xtensa               randconfig-r015-20230312   gcc  
xtensa               randconfig-r023-20230312   gcc  
xtensa               randconfig-r031-20230312   gcc  
xtensa               randconfig-r036-20230312   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
