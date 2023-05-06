Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id ADD896F909E
	for <lists+intel-wired-lan@lfdr.de>; Sat,  6 May 2023 10:36:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A19FE82050;
	Sat,  6 May 2023 08:36:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A19FE82050
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683362177;
	bh=aRdffnbECfGs2lCol6hkjFqcE1LulJjNAnWeMoiJlIM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=o6/iSBVdbD5YgWZTIIq/VMQ8AQsqDIln/2ZLyfc68W10TtmEr5Lz3wX82VWXFy3/f
	 J+SkHzElVR74rdUHWRvdxFJj3OBcw/o5SzZVN8d41mVty6YhCj3ttOSnjFKCoDZ+ec
	 QEzj/WKkEccOnWC4Rs3wVSh8NAzUbzYfOn5fOCYEWb3gNY+XzlHG4YJ9p/27jDqBg3
	 MKIE073vG5kGEjjdmw2/qXH1/uOFGQAJUGxgX2Bluh3HH2fqS1WtTlIeHqSsg3l2S/
	 +fZ40gdxAjPN0Es5w7XgUTBZ15E7walge7Uey1P88vRKrxwJkpWyA/xAiP/xPEAPSS
	 nBwCxw9LCSRYg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VEGjm7i1jp-T; Sat,  6 May 2023 08:36:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8370182051;
	Sat,  6 May 2023 08:36:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8370182051
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 213AC1BF375
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 May 2023 08:36:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EB29A42032
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 May 2023 08:36:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EB29A42032
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vcr69mSszt9p for <intel-wired-lan@lists.osuosl.org>;
 Sat,  6 May 2023 08:36:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E4A354202E
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E4A354202E
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 May 2023 08:36:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10701"; a="412609541"
X-IronPort-AV: E=Sophos;i="5.99,254,1677571200"; d="scan'208";a="412609541"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2023 01:36:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10701"; a="1027811696"
X-IronPort-AV: E=Sophos;i="5.99,254,1677571200"; d="scan'208";a="1027811696"
Received: from lkp-server01.sh.intel.com (HELO dea6d5a4f140) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 06 May 2023 01:36:06 -0700
Received: from kbuild by dea6d5a4f140 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pvDOf-00003z-2W
 for intel-wired-lan@lists.osuosl.org; Sat, 06 May 2023 08:36:05 +0000
Date: Sat, 06 May 2023 16:35:34 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <20230506083534.QSCOm%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683362168; x=1714898168;
 h=date:from:to:subject:message-id;
 bh=/N1x/NsbySJAeqg+m5hBCko3+HIfDkkzAqjSGTByFYM=;
 b=U6TwbMeZtR99OfcZjbsBcQYl2Gs70UJF0Yq2bLV2D93KHvzU6sMYMaFQ
 D4MNbI+9kp6qBm1L1fzxmjvrQuGGvCXeFNvjqQu75Ua+2dIA9pARBxjjS
 bUQNiRON1Nh3TF8hm3rgGoHB7FItudECiPPXjhVjL654IYgKDbwIEwoe1
 fpedlIh9/T5YKMlJHSfcbgKo9+QAnRv2WpWR9N3AXORA5gCuZC8mX38Od
 XEUd9nwz0LN31Of+nsh4FAxMnySAaVIZgJZvSrM+PRQdzny2b8tY9Ix1i
 uMNw0GAvlu2+zT0qdZzPyHFu/YvMyoUyKQTRltCVLz7iWkFnh9ZzyGPHI
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=U6TwbMeZ
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 09fdaf0ef33bfa35365696bcdc993a1d373e7703
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
branch HEAD: 09fdaf0ef33bfa35365696bcdc993a1d373e7703  ice: Fix undersized tx_flags variable

elapsed time: 728m

configs tested: 172
configs skipped: 18

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r003-20230505   gcc  
alpha        buildonly-randconfig-r005-20230501   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r005-20230505   gcc  
alpha                randconfig-r012-20230504   gcc  
alpha                randconfig-r013-20230430   gcc  
alpha                randconfig-r036-20230504   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r003-20230502   gcc  
arc                  randconfig-r022-20230501   gcc  
arc                  randconfig-r043-20230430   gcc  
arc                  randconfig-r043-20230501   gcc  
arc                  randconfig-r043-20230504   gcc  
arc                  randconfig-r043-20230505   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r005-20230505   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r012-20230430   gcc  
arm                  randconfig-r031-20230504   gcc  
arm                  randconfig-r032-20230504   gcc  
arm                  randconfig-r046-20230430   gcc  
arm                  randconfig-r046-20230501   gcc  
arm                  randconfig-r046-20230504   clang
arm                  randconfig-r046-20230505   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r002-20230505   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r012-20230501   gcc  
csky                 randconfig-r016-20230505   gcc  
csky                 randconfig-r034-20230501   gcc  
hexagon      buildonly-randconfig-r005-20230430   clang
hexagon              randconfig-r041-20230430   clang
hexagon              randconfig-r041-20230501   clang
hexagon              randconfig-r041-20230504   clang
hexagon              randconfig-r041-20230505   clang
hexagon              randconfig-r045-20230430   clang
hexagon              randconfig-r045-20230501   clang
hexagon              randconfig-r045-20230504   clang
hexagon              randconfig-r045-20230505   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230501   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230501   gcc  
i386                 randconfig-a002-20230501   gcc  
i386                 randconfig-a003-20230501   gcc  
i386                 randconfig-a004-20230501   gcc  
i386                 randconfig-a005-20230501   gcc  
i386                 randconfig-a006-20230501   gcc  
i386                 randconfig-a011-20230501   clang
i386                 randconfig-a012-20230501   clang
i386                 randconfig-a013-20230501   clang
i386                 randconfig-a014-20230501   clang
i386                 randconfig-a015-20230501   clang
i386                 randconfig-a016-20230501   clang
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r004-20230505   gcc  
loongarch            randconfig-r016-20230504   gcc  
loongarch            randconfig-r024-20230501   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r006-20230502   gcc  
m68k                 randconfig-r036-20230430   gcc  
microblaze   buildonly-randconfig-r006-20230504   gcc  
microblaze           randconfig-r021-20230505   gcc  
microblaze           randconfig-r033-20230504   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r013-20230504   clang
mips                 randconfig-r024-20230505   gcc  
mips                 randconfig-r026-20230505   gcc  
mips                 randconfig-r033-20230430   clang
nios2        buildonly-randconfig-r004-20230505   gcc  
nios2        buildonly-randconfig-r006-20230501   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r011-20230504   gcc  
nios2                randconfig-r013-20230505   gcc  
nios2                randconfig-r024-20230430   gcc  
nios2                randconfig-r035-20230430   gcc  
openrisc     buildonly-randconfig-r002-20230505   gcc  
openrisc             randconfig-r006-20230505   gcc  
openrisc             randconfig-r014-20230504   gcc  
openrisc             randconfig-r032-20230430   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r014-20230501   gcc  
parisc               randconfig-r015-20230504   gcc  
parisc               randconfig-r016-20230430   gcc  
parisc               randconfig-r031-20230430   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r001-20230501   clang
powerpc              randconfig-r012-20230505   clang
powerpc              randconfig-r025-20230505   clang
powerpc              randconfig-r034-20230430   gcc  
powerpc              randconfig-r035-20230501   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r001-20230504   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r002-20230502   clang
riscv                randconfig-r004-20230502   clang
riscv                randconfig-r023-20230505   clang
riscv                randconfig-r042-20230430   clang
riscv                randconfig-r042-20230501   clang
riscv                randconfig-r042-20230504   gcc  
riscv                randconfig-r042-20230505   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r014-20230505   clang
s390                 randconfig-r021-20230430   clang
s390                 randconfig-r031-20230501   gcc  
s390                 randconfig-r032-20230501   gcc  
s390                 randconfig-r034-20230504   clang
s390                 randconfig-r044-20230430   clang
s390                 randconfig-r044-20230501   clang
s390                 randconfig-r044-20230504   gcc  
s390                 randconfig-r044-20230505   clang
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r002-20230504   gcc  
sh           buildonly-randconfig-r003-20230504   gcc  
sh                   randconfig-r003-20230505   gcc  
sh                   randconfig-r011-20230505   gcc  
sh                   randconfig-r015-20230430   gcc  
sh                   randconfig-r022-20230430   gcc  
sparc        buildonly-randconfig-r001-20230430   gcc  
sparc        buildonly-randconfig-r006-20230505   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r001-20230505   gcc  
sparc                randconfig-r011-20230501   gcc  
sparc                randconfig-r015-20230501   gcc  
sparc                randconfig-r015-20230505   gcc  
sparc                randconfig-r033-20230501   gcc  
sparc64      buildonly-randconfig-r002-20230501   gcc  
sparc64              randconfig-r005-20230502   gcc  
sparc64              randconfig-r011-20230430   gcc  
sparc64              randconfig-r035-20230504   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230501   gcc  
x86_64               randconfig-a002-20230501   gcc  
x86_64               randconfig-a003-20230501   gcc  
x86_64               randconfig-a004-20230501   gcc  
x86_64               randconfig-a005-20230501   gcc  
x86_64               randconfig-a006-20230501   gcc  
x86_64               randconfig-a011-20230501   clang
x86_64               randconfig-a012-20230501   clang
x86_64               randconfig-a013-20230501   clang
x86_64               randconfig-a014-20230501   clang
x86_64               randconfig-a015-20230501   clang
x86_64               randconfig-a016-20230501   clang
x86_64               randconfig-r013-20230501   clang
x86_64               randconfig-r025-20230501   clang
x86_64               randconfig-r026-20230501   clang
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r002-20230430   gcc  
xtensa       buildonly-randconfig-r003-20230501   gcc  
xtensa               randconfig-r014-20230430   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
