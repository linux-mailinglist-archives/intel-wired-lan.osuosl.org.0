Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C0116D7455
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Apr 2023 08:20:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 65E254161C;
	Wed,  5 Apr 2023 06:20:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 65E254161C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680675624;
	bh=YYg9h2pZw2gVjtl/lXqzvGY5WVUc3vn1Ei6QkCdnqSc=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=l99r5Bbu29nmEB4xoQznrMZXwxDyXcXOrWEud5wGF+LrYmltQdUGuiHlimFYLxgAA
	 Y4CW05mz0tr8gon+lmE90bUPc7O0yD8pDDIQweOAcGtTOKf7E6zvD0KtPjjy4yS/j2
	 pOKnsVe4gtNs22Q9266l946Fh5OlC8LCDexL//iwtKynTwfvxNl5GbqzV7VHwBL/v/
	 NNZd5TtYpqQaRDa0L+T5rjkO3iSQFpzRZT9UduaX8CmkEGsPSjsM179P7Gy8T/3PwR
	 4kNq8LKMBbvGfYdHP2ub60RlohcWFQlm6KQPV4LD4QFjISE3/YZqnEF1cv8VUyjwGq
	 vbCTwJ1PSlvGg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7Kjs-HeAf3me; Wed,  5 Apr 2023 06:20:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 65277410E0;
	Wed,  5 Apr 2023 06:20:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 65277410E0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 689401BF2FF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Apr 2023 06:20:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 40FD981F0E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Apr 2023 06:20:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 40FD981F0E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HPHfj60JuCy1 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Apr 2023 06:20:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CA90381F08
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CA90381F08
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Apr 2023 06:20:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="428667231"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="428667231"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 23:20:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="716909969"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="716909969"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 04 Apr 2023 23:20:05 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pjwUy-000QM8-0b;
 Wed, 05 Apr 2023 06:20:00 +0000
Date: Wed, 05 Apr 2023 14:19:49 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <642d1305.7y1VyBoJr9/Zs63E%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680675615; x=1712211615;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=92mkUkYZeQEwhu4OBr7nimzIPEqffB4KWh7kZknhc0w=;
 b=jb7VwkLdYdWEuJAhhmRDxYBjy1rKj+4RG5UIasoRFn5Sy6rmqL0l0aXK
 YPZTOQdrcfc2/atfMJwmjMFPhK1hgHLjj0WGCeoKxShwY4gL77BBcupMS
 0GusqH40nwzrigOGvBvM7vB42u9XI7NUbJeaOmfw6wGjTNfrss9gUppY3
 lGKu5xkhkNT4j17coefcJGZ+L9ZFXTZu7cDhn715UVSzImEBojw14uMXF
 4t64LBY+GhXadvu4gi0xj+zlKhV4nN3Z4tTbeb3SFpG6hewIbPdGR7beq
 RBLX9dubsuJCNlZRg/kXHw73oLZ4VOipBf2MYTHhoCfG5VAkpUFPGujKX
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jb7VwkLd
Subject: [Intel-wired-lan] [tnguy-net-queue:100GbE] BUILD SUCCESS
 83c911dc5e0e8e6eaa6431c06972a8f159bfe2fc
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 100GbE
branch HEAD: 83c911dc5e0e8e6eaa6431c06972a8f159bfe2fc  ice: Reset FDIR counter in FDIR init stage

elapsed time: 758m

configs tested: 208
configs skipped: 18

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r001-20230403   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r002-20230403   gcc  
alpha                randconfig-r005-20230403   gcc  
alpha                randconfig-r016-20230403   gcc  
alpha                randconfig-r023-20230403   gcc  
alpha                randconfig-r034-20230403   gcc  
alpha                randconfig-r036-20230403   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r006-20230403   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r002-20230403   gcc  
arc                  randconfig-r006-20230403   gcc  
arc                  randconfig-r016-20230403   gcc  
arc                  randconfig-r021-20230403   gcc  
arc                  randconfig-r022-20230403   gcc  
arc                  randconfig-r025-20230403   gcc  
arc                  randconfig-r031-20230404   gcc  
arc                  randconfig-r032-20230403   gcc  
arc                  randconfig-r032-20230404   gcc  
arc                  randconfig-r033-20230403   gcc  
arc                  randconfig-r034-20230403   gcc  
arc                  randconfig-r036-20230404   gcc  
arc                  randconfig-r043-20230403   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r003-20230403   clang
arm                                 defconfig   gcc  
arm                  randconfig-r033-20230403   gcc  
arm                  randconfig-r034-20230403   gcc  
arm                         wpcm450_defconfig   gcc  
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r001-20230404   gcc  
arm64        buildonly-randconfig-r004-20230403   clang
arm64                               defconfig   gcc  
arm64                randconfig-r004-20230403   clang
arm64                randconfig-r012-20230403   gcc  
arm64                randconfig-r015-20230403   gcc  
arm64                randconfig-r026-20230403   gcc  
csky         buildonly-randconfig-r002-20230403   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r031-20230403   gcc  
csky                 randconfig-r033-20230403   gcc  
hexagon      buildonly-randconfig-r001-20230403   clang
hexagon      buildonly-randconfig-r006-20230403   clang
hexagon      buildonly-randconfig-r006-20230404   clang
hexagon              randconfig-r005-20230403   clang
hexagon              randconfig-r006-20230403   clang
hexagon              randconfig-r024-20230403   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230403   clang
i386                 randconfig-a002-20230403   clang
i386                 randconfig-a003-20230403   clang
i386                 randconfig-a004-20230403   clang
i386                 randconfig-a005-20230403   clang
i386                 randconfig-a006-20230403   clang
i386                 randconfig-a011-20230403   gcc  
i386                 randconfig-a012-20230403   gcc  
i386                 randconfig-a013-20230403   gcc  
i386                 randconfig-a014-20230403   gcc  
i386                 randconfig-a015-20230403   gcc  
i386                 randconfig-a016-20230403   gcc  
i386                 randconfig-r014-20230403   gcc  
i386                 randconfig-r015-20230403   gcc  
i386                 randconfig-r021-20230403   gcc  
i386                 randconfig-r023-20230403   gcc  
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r001-20230403   gcc  
ia64         buildonly-randconfig-r004-20230403   gcc  
ia64         buildonly-randconfig-r006-20230403   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r026-20230403   gcc  
ia64                 randconfig-r033-20230404   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r006-20230403   gcc  
loongarch            randconfig-r013-20230403   gcc  
loongarch            randconfig-r021-20230403   gcc  
loongarch            randconfig-r022-20230403   gcc  
loongarch            randconfig-r035-20230403   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r001-20230403   gcc  
m68k         buildonly-randconfig-r005-20230403   gcc  
m68k                       bvme6000_defconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r001-20230403   gcc  
m68k                 randconfig-r012-20230403   gcc  
m68k                 randconfig-r024-20230403   gcc  
m68k                 randconfig-r032-20230403   gcc  
m68k                 randconfig-r033-20230403   gcc  
microblaze   buildonly-randconfig-r002-20230404   gcc  
microblaze           randconfig-r011-20230403   gcc  
microblaze           randconfig-r024-20230403   gcc  
microblaze           randconfig-r031-20230403   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r004-20230403   gcc  
mips         buildonly-randconfig-r005-20230403   gcc  
mips                 randconfig-r004-20230403   gcc  
mips                 randconfig-r021-20230403   clang
mips                 randconfig-r024-20230403   clang
mips                 randconfig-r034-20230403   gcc  
mips                 randconfig-r035-20230403   gcc  
mips                 randconfig-r036-20230403   gcc  
nios2        buildonly-randconfig-r006-20230403   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r014-20230403   gcc  
nios2                randconfig-r022-20230403   gcc  
nios2                randconfig-r024-20230403   gcc  
nios2                randconfig-r032-20230403   gcc  
nios2                randconfig-r033-20230403   gcc  
nios2                randconfig-r035-20230403   gcc  
openrisc                         alldefconfig   gcc  
openrisc     buildonly-randconfig-r003-20230403   gcc  
openrisc             randconfig-r011-20230403   gcc  
openrisc             randconfig-r013-20230403   gcc  
openrisc             randconfig-r016-20230403   gcc  
openrisc             randconfig-r022-20230403   gcc  
parisc       buildonly-randconfig-r005-20230403   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r011-20230403   gcc  
parisc               randconfig-r013-20230403   gcc  
parisc               randconfig-r014-20230403   gcc  
parisc               randconfig-r034-20230403   gcc  
parisc               randconfig-r035-20230403   gcc  
parisc               randconfig-r036-20230403   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r003-20230404   clang
powerpc                 linkstation_defconfig   gcc  
powerpc                     rainier_defconfig   gcc  
powerpc              randconfig-r003-20230403   clang
powerpc              randconfig-r005-20230403   clang
powerpc              randconfig-r013-20230403   gcc  
powerpc              randconfig-r014-20230403   gcc  
powerpc                    sam440ep_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv             nommu_k210_sdcard_defconfig   gcc  
riscv                randconfig-r014-20230403   gcc  
riscv                randconfig-r042-20230403   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r012-20230403   gcc  
s390                 randconfig-r031-20230404   gcc  
s390                 randconfig-r034-20230404   gcc  
s390                 randconfig-r044-20230403   gcc  
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r005-20230403   gcc  
sh                               j2_defconfig   gcc  
sh                   randconfig-r011-20230403   gcc  
sh                   randconfig-r034-20230403   gcc  
sh                   randconfig-r036-20230403   gcc  
sh                           se7343_defconfig   gcc  
sh                           se7705_defconfig   gcc  
sh                   sh7724_generic_defconfig   gcc  
sh                        sh7757lcr_defconfig   gcc  
sparc        buildonly-randconfig-r001-20230403   gcc  
sparc        buildonly-randconfig-r006-20230403   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r016-20230403   gcc  
sparc                randconfig-r031-20230403   gcc  
sparc                randconfig-r032-20230403   gcc  
sparc                randconfig-r035-20230404   gcc  
sparc64              randconfig-r005-20230403   gcc  
sparc64              randconfig-r014-20230403   gcc  
sparc64              randconfig-r024-20230403   gcc  
sparc64              randconfig-r025-20230403   gcc  
sparc64              randconfig-r026-20230403   gcc  
sparc64              randconfig-r031-20230403   gcc  
sparc64              randconfig-r033-20230403   gcc  
sparc64              randconfig-r034-20230404   gcc  
sparc64              randconfig-r035-20230404   gcc  
sparc64              randconfig-r036-20230403   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230403   clang
x86_64               randconfig-a002-20230403   clang
x86_64               randconfig-a003-20230403   clang
x86_64               randconfig-a004-20230403   clang
x86_64               randconfig-a005-20230403   clang
x86_64               randconfig-a006-20230403   clang
x86_64               randconfig-a011-20230403   gcc  
x86_64               randconfig-a012-20230403   gcc  
x86_64               randconfig-a013-20230403   gcc  
x86_64               randconfig-a014-20230403   gcc  
x86_64               randconfig-a015-20230403   gcc  
x86_64               randconfig-a016-20230403   gcc  
x86_64               randconfig-r012-20230403   gcc  
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r002-20230403   gcc  
xtensa       buildonly-randconfig-r003-20230403   gcc  
xtensa               randconfig-r012-20230403   gcc  
xtensa               randconfig-r021-20230403   gcc  
xtensa               randconfig-r023-20230403   gcc  
xtensa               randconfig-r026-20230403   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
