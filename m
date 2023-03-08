Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D5BA6B0468
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Mar 2023 11:32:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8DC4080FA8;
	Wed,  8 Mar 2023 10:32:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8DC4080FA8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678271574;
	bh=WwZ6w0YA8HOJ73q8zV+7tUG1rxNvYV+HJpRmzu5/OJc=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=6/VH7cEX6RQCSKOL/U3QMKn29rNiry9DUenbGOqceuodBTq5GlqRBXoTJSPtEcXQV
	 X4uvdfBfdbAGDFbD4Rn0KAMfXxsPnQmFShlosD9p910sPTPFCzdqeZAUk4i/9pyKo8
	 BFyJ0dwuPI3gWqUAgRz4prxpPLAKpifzcyTbL5Y9WdEPZvptbSEGgX9aqMQZs8OhBX
	 04US0GyvuwWjAgHtfv2X2jrzoKwTx4X+sDrkG5BDtJALWQ0mJb7O3QIraTA2T7XYGd
	 Ds+ZkHmrs/Usd67eOJK6jz49cxoEfLNc04jilJN2M5xXzFPt/G+0/w84a+hFywqMyJ
	 cFY3WuZpJfdEQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NGnrL1c04BK7; Wed,  8 Mar 2023 10:32:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E4E9880E97;
	Wed,  8 Mar 2023 10:32:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E4E9880E97
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D25AC1BF4E4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Mar 2023 10:32:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A4234405B2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Mar 2023 10:32:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A4234405B2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qlAMWZNjdDjM for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Mar 2023 10:32:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0D900400B9
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0D900400B9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Mar 2023 10:32:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="324432645"
X-IronPort-AV: E=Sophos;i="5.98,243,1673942400"; d="scan'208";a="324432645"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 02:32:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="709382187"
X-IronPort-AV: E=Sophos;i="5.98,243,1673942400"; d="scan'208";a="709382187"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 08 Mar 2023 02:32:43 -0800
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pZr6A-00023e-1Y;
 Wed, 08 Mar 2023 10:32:42 +0000
Date: Wed, 08 Mar 2023 18:32:33 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <64086441.Tg/bX6dAzo8iZVME%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678271566; x=1709807566;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=qTpkF2BIl1R5wMH4xhzOzkVHRp8Lb3DcYfvE73BUAlI=;
 b=Pjsa9EleXGI4VqYEz9y8gVlV04nSdv8JUO3a/a9bxgWS9iHwVj2lY1DQ
 KEY+VV6jtn/18d0LcrIM7FCoqNLwicr2uP9hPIT0ip9XG5w1JuCFlLgcP
 WqvyzLY4y/3PZHJdXY26C3kKFsOJ5e43WIlRPgyeM4U7ld/li5mXjaGPH
 LNV5bgP1OgyTiE1eoULsBxKUFkMJYBlks9OFpeGI9eccgjqaFZh7Ecoee
 LurxZ/n6h2aqevD0HgmH9J9491joVX5DNumoH9feGNKzR1+Yr2J5biHQ/
 jJPx/Y4IUHMb98gGUGZaqmfhmFRxbMhssqaqXNJTsEOsAqX692UDuz8jU
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Pjsa9Ele
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 36e5e391a25af28dc1f4586f95d577b38ff4ed72
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
branch HEAD: 36e5e391a25af28dc1f4586f95d577b38ff4ed72  Merge tag 'for-netdev' of https://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf-next

elapsed time: 1754m

configs tested: 296
configs skipped: 28

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r001-20230305   gcc  
alpha        buildonly-randconfig-r005-20230305   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r001-20230305   gcc  
alpha                randconfig-r012-20230305   gcc  
alpha                randconfig-r016-20230305   gcc  
alpha                randconfig-r024-20230305   gcc  
alpha                randconfig-r026-20230306   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r004-20230306   gcc  
arc                  randconfig-r015-20230306   gcc  
arc                  randconfig-r016-20230306   gcc  
arc                  randconfig-r031-20230305   gcc  
arc                  randconfig-r032-20230306   gcc  
arc                  randconfig-r033-20230306   gcc  
arc                  randconfig-r035-20230306   gcc  
arc                  randconfig-r043-20230305   gcc  
arc                  randconfig-r043-20230306   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r005-20230306   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r003-20230306   clang
arm                  randconfig-r006-20230305   gcc  
arm                  randconfig-r016-20230306   gcc  
arm                  randconfig-r025-20230305   clang
arm                  randconfig-r025-20230306   gcc  
arm                  randconfig-r031-20230306   clang
arm                  randconfig-r033-20230305   gcc  
arm                  randconfig-r033-20230306   clang
arm                  randconfig-r046-20230305   clang
arm                  randconfig-r046-20230306   gcc  
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r002-20230305   clang
arm64        buildonly-randconfig-r004-20230306   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r001-20230306   gcc  
arm64                randconfig-r002-20230306   gcc  
arm64                randconfig-r004-20230305   clang
arm64                randconfig-r013-20230305   gcc  
arm64                randconfig-r013-20230306   clang
arm64                randconfig-r016-20230306   clang
arm64                randconfig-r021-20230305   gcc  
arm64                randconfig-r024-20230306   clang
arm64                randconfig-r026-20230306   clang
arm64                randconfig-r036-20230305   clang
csky         buildonly-randconfig-r001-20230305   gcc  
csky         buildonly-randconfig-r005-20230306   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r002-20230305   gcc  
csky                 randconfig-r004-20230306   gcc  
csky                 randconfig-r011-20230305   gcc  
csky                 randconfig-r025-20230306   gcc  
csky                 randconfig-r033-20230305   gcc  
csky                 randconfig-r034-20230305   gcc  
hexagon      buildonly-randconfig-r003-20230306   clang
hexagon      buildonly-randconfig-r004-20230305   clang
hexagon      buildonly-randconfig-r006-20230305   clang
hexagon              randconfig-r011-20230306   clang
hexagon              randconfig-r012-20230306   clang
hexagon              randconfig-r014-20230305   clang
hexagon              randconfig-r023-20230305   clang
hexagon              randconfig-r032-20230305   clang
hexagon              randconfig-r033-20230306   clang
hexagon              randconfig-r034-20230305   clang
hexagon              randconfig-r041-20230305   clang
hexagon              randconfig-r041-20230306   clang
hexagon              randconfig-r045-20230305   clang
hexagon              randconfig-r045-20230306   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230306   gcc  
i386                 randconfig-a002-20230306   gcc  
i386                 randconfig-a003-20230306   gcc  
i386                 randconfig-a004-20230306   gcc  
i386                 randconfig-a005-20230306   gcc  
i386                 randconfig-a006-20230306   gcc  
i386                 randconfig-a011-20230306   clang
i386                 randconfig-a012-20230306   clang
i386                 randconfig-a013-20230306   clang
i386                 randconfig-a014-20230306   clang
i386                 randconfig-a015-20230306   clang
i386                 randconfig-a016-20230306   clang
i386                 randconfig-r001-20230306   gcc  
i386                 randconfig-r002-20230306   gcc  
i386                 randconfig-r032-20230306   gcc  
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r003-20230306   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r002-20230305   gcc  
ia64                 randconfig-r005-20230305   gcc  
ia64                 randconfig-r005-20230306   gcc  
ia64                 randconfig-r006-20230305   gcc  
ia64                 randconfig-r011-20230306   gcc  
ia64                 randconfig-r012-20230305   gcc  
ia64                 randconfig-r013-20230305   gcc  
ia64                 randconfig-r021-20230306   gcc  
ia64                 randconfig-r022-20230306   gcc  
ia64                 randconfig-r031-20230305   gcc  
ia64                 randconfig-r035-20230305   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r002-20230306   gcc  
loongarch    buildonly-randconfig-r005-20230306   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r003-20230305   gcc  
loongarch            randconfig-r004-20230306   gcc  
loongarch            randconfig-r011-20230305   gcc  
loongarch            randconfig-r011-20230306   gcc  
loongarch            randconfig-r015-20230305   gcc  
loongarch            randconfig-r015-20230306   gcc  
loongarch            randconfig-r022-20230305   gcc  
loongarch            randconfig-r036-20230305   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r003-20230305   gcc  
m68k         buildonly-randconfig-r005-20230305   gcc  
m68k         buildonly-randconfig-r006-20230305   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r001-20230306   gcc  
m68k                 randconfig-r003-20230305   gcc  
m68k                 randconfig-r004-20230306   gcc  
m68k                 randconfig-r023-20230306   gcc  
m68k                 randconfig-r026-20230305   gcc  
m68k                 randconfig-r032-20230305   gcc  
m68k                 randconfig-r035-20230305   gcc  
microblaze   buildonly-randconfig-r001-20230306   gcc  
microblaze   buildonly-randconfig-r005-20230305   gcc  
microblaze   buildonly-randconfig-r005-20230306   gcc  
microblaze   buildonly-randconfig-r006-20230306   gcc  
microblaze           randconfig-r003-20230306   gcc  
microblaze           randconfig-r013-20230305   gcc  
microblaze           randconfig-r013-20230306   gcc  
microblaze           randconfig-r014-20230306   gcc  
microblaze           randconfig-r015-20230305   gcc  
microblaze           randconfig-r016-20230305   gcc  
microblaze           randconfig-r022-20230306   gcc  
microblaze           randconfig-r034-20230306   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r006-20230306   clang
mips                 randconfig-r004-20230305   gcc  
mips                 randconfig-r005-20230305   gcc  
mips                 randconfig-r006-20230306   clang
mips                 randconfig-r011-20230306   gcc  
mips                 randconfig-r015-20230305   clang
mips                 randconfig-r022-20230305   clang
mips                 randconfig-r026-20230305   clang
mips                 randconfig-r036-20230306   clang
nios2        buildonly-randconfig-r001-20230306   gcc  
nios2        buildonly-randconfig-r002-20230305   gcc  
nios2        buildonly-randconfig-r003-20230305   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r004-20230305   gcc  
nios2                randconfig-r022-20230305   gcc  
nios2                randconfig-r036-20230306   gcc  
openrisc             randconfig-r005-20230305   gcc  
openrisc             randconfig-r005-20230306   gcc  
openrisc             randconfig-r013-20230305   gcc  
openrisc             randconfig-r013-20230306   gcc  
openrisc             randconfig-r014-20230306   gcc  
openrisc             randconfig-r024-20230306   gcc  
openrisc             randconfig-r026-20230306   gcc  
openrisc             randconfig-r033-20230305   gcc  
parisc       buildonly-randconfig-r003-20230306   gcc  
parisc       buildonly-randconfig-r004-20230305   gcc  
parisc       buildonly-randconfig-r006-20230305   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r014-20230305   gcc  
parisc               randconfig-r014-20230306   gcc  
parisc               randconfig-r021-20230305   gcc  
parisc               randconfig-r023-20230305   gcc  
parisc               randconfig-r024-20230305   gcc  
parisc               randconfig-r025-20230306   gcc  
parisc               randconfig-r032-20230306   gcc  
parisc               randconfig-r034-20230305   gcc  
parisc               randconfig-r035-20230305   gcc  
parisc               randconfig-r036-20230305   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r002-20230306   clang
powerpc              randconfig-r003-20230305   clang
powerpc              randconfig-r024-20230305   gcc  
powerpc              randconfig-r025-20230305   gcc  
powerpc              randconfig-r026-20230306   clang
powerpc              randconfig-r031-20230305   clang
powerpc              randconfig-r033-20230306   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r003-20230305   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r003-20230305   clang
riscv                randconfig-r014-20230305   gcc  
riscv                randconfig-r024-20230305   gcc  
riscv                randconfig-r032-20230305   clang
riscv                randconfig-r032-20230306   gcc  
riscv                randconfig-r033-20230305   clang
riscv                randconfig-r035-20230305   clang
riscv                randconfig-r035-20230306   gcc  
riscv                randconfig-r042-20230305   gcc  
riscv                randconfig-r042-20230306   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r003-20230306   gcc  
s390                 randconfig-r016-20230306   clang
s390                 randconfig-r021-20230305   gcc  
s390                 randconfig-r021-20230306   clang
s390                 randconfig-r031-20230306   gcc  
s390                 randconfig-r032-20230305   clang
s390                 randconfig-r032-20230306   gcc  
s390                 randconfig-r033-20230305   clang
s390                 randconfig-r034-20230306   gcc  
s390                 randconfig-r035-20230306   gcc  
s390                 randconfig-r044-20230305   gcc  
s390                 randconfig-r044-20230306   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r005-20230305   gcc  
sh                   randconfig-r006-20230306   gcc  
sh                   randconfig-r012-20230306   gcc  
sh                   randconfig-r015-20230306   gcc  
sh                   randconfig-r021-20230306   gcc  
sh                   randconfig-r023-20230305   gcc  
sh                   randconfig-r031-20230305   gcc  
sh                   randconfig-r034-20230306   gcc  
sparc        buildonly-randconfig-r001-20230305   gcc  
sparc        buildonly-randconfig-r001-20230306   gcc  
sparc        buildonly-randconfig-r004-20230306   gcc  
sparc        buildonly-randconfig-r006-20230305   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r002-20230306   gcc  
sparc                randconfig-r004-20230305   gcc  
sparc                randconfig-r011-20230305   gcc  
sparc                randconfig-r013-20230306   gcc  
sparc                randconfig-r016-20230305   gcc  
sparc                randconfig-r023-20230306   gcc  
sparc                randconfig-r031-20230306   gcc  
sparc                randconfig-r036-20230305   gcc  
sparc64      buildonly-randconfig-r001-20230305   gcc  
sparc64              randconfig-r005-20230306   gcc  
sparc64              randconfig-r006-20230306   gcc  
sparc64              randconfig-r012-20230305   gcc  
sparc64              randconfig-r016-20230305   gcc  
sparc64              randconfig-r024-20230306   gcc  
sparc64              randconfig-r031-20230305   gcc  
sparc64              randconfig-r034-20230305   gcc  
sparc64              randconfig-r034-20230306   gcc  
sparc64              randconfig-r036-20230306   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r002-20230306   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230306   gcc  
x86_64                        randconfig-a001   clang
x86_64               randconfig-a002-20230306   gcc  
x86_64                        randconfig-a002   gcc  
x86_64               randconfig-a003-20230306   gcc  
x86_64                        randconfig-a003   clang
x86_64               randconfig-a004-20230306   gcc  
x86_64                        randconfig-a004   gcc  
x86_64               randconfig-a005-20230306   gcc  
x86_64                        randconfig-a005   clang
x86_64               randconfig-a006-20230306   gcc  
x86_64                        randconfig-a006   gcc  
x86_64               randconfig-a011-20230306   clang
x86_64               randconfig-a012-20230306   clang
x86_64               randconfig-a013-20230306   clang
x86_64               randconfig-a014-20230306   clang
x86_64               randconfig-a015-20230306   clang
x86_64               randconfig-a016-20230306   clang
x86_64               randconfig-r022-20230306   clang
x86_64               randconfig-r025-20230306   clang
x86_64               randconfig-r035-20230306   gcc  
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r002-20230305   gcc  
xtensa       buildonly-randconfig-r004-20230305   gcc  
xtensa       buildonly-randconfig-r004-20230306   gcc  
xtensa       buildonly-randconfig-r005-20230305   gcc  
xtensa       buildonly-randconfig-r006-20230306   gcc  
xtensa               randconfig-r002-20230305   gcc  
xtensa               randconfig-r002-20230306   gcc  
xtensa               randconfig-r006-20230306   gcc  
xtensa               randconfig-r021-20230305   gcc  
xtensa               randconfig-r022-20230305   gcc  
xtensa               randconfig-r023-20230306   gcc  
xtensa               randconfig-r024-20230306   gcc  
xtensa               randconfig-r025-20230305   gcc  
xtensa               randconfig-r026-20230305   gcc  
xtensa               randconfig-r034-20230305   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
