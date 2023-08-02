Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 08D2B76D385
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Aug 2023 18:18:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0DF6A6122A;
	Wed,  2 Aug 2023 16:18:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0DF6A6122A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690993124;
	bh=Nk9Vwif46umRkOtOHRWV1sXDSnwVT164z9lKDmLUW5M=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=UvP5TpxIXs7AAcxhqrq2tidlKb2MQthlr0ADpjylxmuFqJbgDUi5m6oL1lKMA7afo
	 JoR4Hnr0kZ0VH9XW/jicjyOvIAL1bBcOCx0NTJz+y8QuoMGSbeBC6WmnIuMJqyNoEP
	 VVHe+Xvl6FkKU1sYKp0yYFzHeM/dvmr4DBfzn2kLIxUIu2IpCbmQ89s+0q7584zMdo
	 1Gd30yZrkPQO7UDpEzGNI60qRbuOJ+6s3ieq3RzuZ6ck26XTL9W03Ipi9oq8X6zOQ4
	 SBWQsORXQVDXQbJ17bVvE0cBUZ5Zl7dvBgRz/35zRPud9ADCFBYFQ1bX2SwgYWjEVD
	 5rdhpbQQtp1nQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tBj8lApeLmsw; Wed,  2 Aug 2023 16:18:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A518C60E5C;
	Wed,  2 Aug 2023 16:18:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A518C60E5C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 52FCC1BF3A0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 16:18:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7DE6C414B4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 16:18:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7DE6C414B4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F6VYDYexihJj for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Aug 2023 16:18:26 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0B3CE40568
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 16:18:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0B3CE40568
X-IronPort-AV: E=McAfee;i="6600,9927,10790"; a="367093708"
X-IronPort-AV: E=Sophos;i="6.01,249,1684825200"; d="scan'208";a="367093708"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2023 09:18:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="872559912"
Received: from lkp-server01.sh.intel.com (HELO d1ccc7e87e8f) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 02 Aug 2023 09:18:26 -0700
Received: from kbuild by d1ccc7e87e8f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qREYJ-0001KP-2f
 for intel-wired-lan@lists.osuosl.org; Wed, 02 Aug 2023 16:18:23 +0000
Date: Thu, 03 Aug 2023 00:17:26 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202308030024.EdOv2gzS-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690993106; x=1722529106;
 h=date:from:to:subject:message-id;
 bh=pEAwCIijCt3pGvrrEpbuJd1RSFkC+it3EGstKDMwcaI=;
 b=NsbHU6/4PWHb3bckWuDkUJBw/SCxlbTjx5WFHVQ45NIddxzi8gz/4sNm
 4n5rYhxRlxOhNwXsh3/01Fnvg7NopRzrq87zYge6AD8AIoXi6tc2yoyco
 jchLGq7t6nsn7UYSenJ+8P4QeEJHV/gkK1SaRTGswj2YfIPBwoiid7EUx
 JICQPJIqkRvG68LaItlAOX64CStOM/XPlc7EE/38BtfMRUA65t31Xzbpo
 YJd/SLVxF5P5Z1C1dI+K7hXnsC7sw+36tQWinwitmN8xFvQNZf8DBathF
 96jjzMoAXSZac+xtm5XyhE6/97VMhhJu2lDFrhStD5EwrDbxbRDb074dP
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NsbHU6/4
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 01e6f8ad8d26ced14b0cf288c42e55d03a7c5070
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git main
branch HEAD: 01e6f8ad8d26ced14b0cf288c42e55d03a7c5070  net: dsa: qca8k: use dsa_for_each macro instead of for loop

elapsed time: 1691m

configs tested: 120
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r023-20230731   gcc  
alpha                randconfig-r034-20230731   gcc  
alpha                randconfig-r036-20230801   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r004-20230801   gcc  
arc                  randconfig-r023-20230801   gcc  
arc                  randconfig-r026-20230731   gcc  
arc                  randconfig-r036-20230731   gcc  
arc                  randconfig-r043-20230731   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                            hisi_defconfig   gcc  
arm                  randconfig-r004-20230731   clang
arm                  randconfig-r005-20230801   clang
arm                  randconfig-r021-20230801   gcc  
arm                  randconfig-r024-20230731   gcc  
arm                  randconfig-r035-20230731   clang
arm                  randconfig-r046-20230731   gcc  
arm                           sunxi_defconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r006-20230801   gcc  
csky                 randconfig-r022-20230801   gcc  
csky                 randconfig-r032-20230731   gcc  
csky                 randconfig-r032-20230801   gcc  
csky                 randconfig-r033-20230801   gcc  
hexagon              randconfig-r004-20230801   clang
hexagon              randconfig-r013-20230731   clang
hexagon              randconfig-r041-20230731   clang
hexagon              randconfig-r045-20230731   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-r014-20230731   clang
i386                 randconfig-r026-20230801   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r025-20230801   gcc  
microblaze           randconfig-r001-20230801   gcc  
microblaze           randconfig-r002-20230801   gcc  
microblaze           randconfig-r003-20230801   gcc  
microblaze           randconfig-r011-20230731   gcc  
microblaze           randconfig-r013-20230731   gcc  
microblaze           randconfig-r025-20230731   gcc  
microblaze           randconfig-r034-20230801   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                malta_qemu_32r6_defconfig   clang
mips                 randconfig-r002-20230801   clang
mips                 randconfig-r005-20230801   clang
mips                 randconfig-r022-20230731   gcc  
mips                 randconfig-r036-20230801   clang
nios2                               defconfig   gcc  
nios2                randconfig-r002-20230731   gcc  
nios2                randconfig-r005-20230731   gcc  
nios2                randconfig-r006-20230731   gcc  
nios2                randconfig-r012-20230731   gcc  
nios2                randconfig-r015-20230731   gcc  
nios2                randconfig-r026-20230801   gcc  
openrisc             randconfig-r012-20230731   gcc  
openrisc             randconfig-r016-20230731   gcc  
openrisc             randconfig-r034-20230801   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r006-20230801   gcc  
parisc               randconfig-r031-20230801   gcc  
parisc               randconfig-r035-20230801   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                      bamboo_defconfig   gcc  
powerpc                 mpc834x_itx_defconfig   gcc  
powerpc                     tqm8560_defconfig   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r021-20230731   clang
riscv                randconfig-r025-20230801   clang
riscv                randconfig-r042-20230731   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r001-20230801   gcc  
s390                 randconfig-r015-20230731   clang
s390                 randconfig-r024-20230801   clang
s390                 randconfig-r044-20230731   clang
sh                               allmodconfig   gcc  
sh                          r7780mp_defconfig   gcc  
sh                   randconfig-r003-20230801   gcc  
sh                   randconfig-r011-20230731   gcc  
sh                   randconfig-r024-20230801   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r021-20230801   gcc  
sparc                randconfig-r033-20230801   gcc  
sparc64              randconfig-r003-20230731   gcc  
sparc64              randconfig-r031-20230801   gcc  
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r001-20230731   clang
um                           x86_64_defconfig   gcc  
x86_64                           alldefconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-r031-20230731   gcc  
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r022-20230801   gcc  
xtensa               randconfig-r023-20230801   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
