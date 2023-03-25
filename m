Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 240176C8B21
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Mar 2023 06:41:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0B3B460AF8;
	Sat, 25 Mar 2023 05:41:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0B3B460AF8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679722860;
	bh=Xemcws4QgoPdcoISPXMbqCyfa6/Cwku/eprhFkiRDT4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=R1Jq3au55Lym2Zi3BnyevCbkfj+siJzwROhFNz5zPrfnrTM+IWeQxqikbumGDRqfF
	 kH7q2SJjo8zw1cGlVBF9WN394LemZNWG0Af/kP/hlfyXDjHjDSEk1jkHepYV4XbtX5
	 cD4vb/dTVRSmyGnKLjk4r0ruEddWrDBtlabhyjvGRoUqhXqS5K5S+imJ1Hoazpcvtn
	 XhDjDDmsU97Q/2dJBJ0mNJ3YeE29jM2OogrFwjqTIuM80/YBifrZQedMqJuICrwouz
	 skyLQctDGFteUXg3f6B38kPgn1nRCNSr5pjvkmrHbBEXMR/g8e+bI0TqH/LMeptb0D
	 aRFPtlekvvhcg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8ZS5QjmUX1qu; Sat, 25 Mar 2023 05:40:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 89E5560ADD;
	Sat, 25 Mar 2023 05:40:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 89E5560ADD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6C2E01BF381
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Mar 2023 05:40:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 43C864012E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Mar 2023 05:40:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 43C864012E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sqsVCPDwgmBY for <intel-wired-lan@lists.osuosl.org>;
 Sat, 25 Mar 2023 05:40:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A1A0C400B8
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A1A0C400B8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Mar 2023 05:40:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10659"; a="402537832"
X-IronPort-AV: E=Sophos;i="5.98,289,1673942400"; d="scan'208";a="402537832"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2023 22:40:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10659"; a="857118198"
X-IronPort-AV: E=Sophos;i="5.98,289,1673942400"; d="scan'208";a="857118198"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 24 Mar 2023 22:40:49 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pfwe0-000FzZ-1F;
 Sat, 25 Mar 2023 05:40:48 +0000
Date: Sat, 25 Mar 2023 13:40:19 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <641e8943.ZMoS+YXDhwGxd3xB%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679722851; x=1711258851;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=b/4WbF0WGcp2/wEDhQYjs4n4qE+rzWJ/sY0VIZFezV4=;
 b=NQqc10FYp6n8psdb/fNNA4iS/RvEh9skZRYKsm7qkxutecsIeciikd1k
 oABB/Ic7aSKP8DELQVZeoR5x2QPqowDfsurLex3oEdzmDTtA+v+Ps0ch0
 0wDIB1u68vjW7StntRQOvMQiC8wn6U+vr0MUmjsds2oAARuHbn+ltAGh1
 Kc8+78o1xCbwUiGZS1dZwTHEYtqfW4QeGG/rif+p/5QhbDM/siJVr4sVk
 J6rSQFrSHqvinXxU1cyoi5yreQOtW6eoKfiRT7zAbWDebMHUkXRlXSvPZ
 H371LcN7hu+leGo65gdmT/Ga5aiZrM/EDEWQgdfnRlvfuJubrVnUUOF6a
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NQqc10FY
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 dc0a7b52007145a85d0c2f3151870b101568b449
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
branch HEAD: dc0a7b52007145a85d0c2f3151870b101568b449  Merge git://git.kernel.org/pub/scm/linux/kernel/git/netdev/net

elapsed time: 726m

configs tested: 180
configs skipped: 11

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r006-20230322   gcc  
alpha                randconfig-r025-20230322   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r025-20230324   gcc  
arc                  randconfig-r034-20230322   gcc  
arc                  randconfig-r036-20230322   gcc  
arc                  randconfig-r043-20230322   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                       aspeed_g5_defconfig   gcc  
arm                                 defconfig   gcc  
arm                          moxart_defconfig   clang
arm                  randconfig-r003-20230322   gcc  
arm                  randconfig-r014-20230323   gcc  
arm                  randconfig-r023-20230322   clang
arm                  randconfig-r025-20230322   clang
arm                  randconfig-r033-20230322   gcc  
arm                  randconfig-r035-20230322   gcc  
arm                  randconfig-r046-20230322   clang
arm                  randconfig-r046-20230324   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r023-20230322   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r003-20230322   gcc  
csky                 randconfig-r011-20230322   gcc  
csky                 randconfig-r012-20230322   gcc  
csky                 randconfig-r016-20230322   gcc  
csky                 randconfig-r024-20230322   gcc  
csky                 randconfig-r026-20230322   gcc  
csky                 randconfig-r034-20230322   gcc  
csky                 randconfig-r036-20230322   gcc  
hexagon                          alldefconfig   clang
hexagon      buildonly-randconfig-r006-20230323   clang
hexagon              randconfig-r002-20230322   clang
hexagon              randconfig-r004-20230322   clang
hexagon              randconfig-r031-20230322   clang
hexagon              randconfig-r033-20230322   clang
hexagon              randconfig-r035-20230322   clang
hexagon              randconfig-r041-20230322   clang
hexagon              randconfig-r041-20230324   clang
hexagon              randconfig-r045-20230322   clang
hexagon              randconfig-r045-20230324   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                          randconfig-a001   gcc  
i386                          randconfig-a002   clang
i386                          randconfig-a003   gcc  
i386                          randconfig-a004   clang
i386                          randconfig-a005   gcc  
i386                          randconfig-a006   clang
i386                          randconfig-a012   gcc  
i386                          randconfig-a014   gcc  
i386                          randconfig-a016   gcc  
i386                          randconfig-c001   gcc  
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r005-20230322   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r001-20230324   gcc  
ia64                 randconfig-r004-20230322   gcc  
ia64                 randconfig-r005-20230322   gcc  
ia64                 randconfig-r011-20230322   gcc  
ia64                 randconfig-r015-20230322   gcc  
ia64                 randconfig-r022-20230324   gcc  
ia64                 randconfig-r024-20230322   gcc  
ia64                 randconfig-r031-20230322   gcc  
ia64                 randconfig-r032-20230322   gcc  
ia64                 randconfig-r033-20230322   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r002-20230322   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r002-20230322   gcc  
m68k                                defconfig   gcc  
m68k                            q40_defconfig   gcc  
m68k                 randconfig-r012-20230322   gcc  
m68k                 randconfig-r026-20230322   gcc  
microblaze           randconfig-r015-20230322   gcc  
microblaze           randconfig-r021-20230322   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r004-20230322   gcc  
mips                 randconfig-r012-20230323   gcc  
mips                 randconfig-r021-20230322   clang
mips                 randconfig-r026-20230324   clang
mips                 randconfig-r034-20230322   gcc  
mips                 randconfig-r036-20230322   gcc  
nios2        buildonly-randconfig-r004-20230322   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r003-20230322   gcc  
nios2                randconfig-r003-20230324   gcc  
nios2                randconfig-r004-20230322   gcc  
nios2                randconfig-r016-20230322   gcc  
nios2                randconfig-r016-20230323   gcc  
nios2                randconfig-r035-20230322   gcc  
openrisc     buildonly-randconfig-r002-20230322   gcc  
openrisc             randconfig-r001-20230322   gcc  
openrisc             randconfig-r005-20230322   gcc  
openrisc             randconfig-r014-20230322   gcc  
openrisc             randconfig-r015-20230322   gcc  
openrisc             randconfig-r023-20230322   gcc  
openrisc             randconfig-r032-20230322   gcc  
openrisc             randconfig-r036-20230322   gcc  
openrisc                       virt_defconfig   gcc  
parisc       buildonly-randconfig-r005-20230322   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r002-20230324   gcc  
parisc               randconfig-r004-20230322   gcc  
parisc               randconfig-r006-20230322   gcc  
parisc               randconfig-r013-20230323   gcc  
parisc               randconfig-r024-20230322   gcc  
parisc               randconfig-r025-20230322   gcc  
parisc               randconfig-r031-20230322   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r013-20230322   gcc  
powerpc              randconfig-r035-20230322   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r003-20230322   clang
riscv                randconfig-r021-20230322   gcc  
riscv                randconfig-r042-20230322   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r005-20230323   clang
s390                                defconfig   gcc  
s390                 randconfig-r014-20230322   gcc  
s390                 randconfig-r016-20230322   gcc  
s390                 randconfig-r022-20230322   gcc  
s390                 randconfig-r031-20230322   clang
s390                 randconfig-r044-20230322   gcc  
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r001-20230322   gcc  
sh                   randconfig-r013-20230322   gcc  
sh                   randconfig-r026-20230322   gcc  
sh                   sh7770_generic_defconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r003-20230322   gcc  
sparc                randconfig-r006-20230322   gcc  
sparc                randconfig-r011-20230322   gcc  
sparc                randconfig-r016-20230322   gcc  
sparc64              randconfig-r002-20230322   gcc  
sparc64              randconfig-r022-20230322   gcc  
sparc64              randconfig-r024-20230324   gcc  
sparc64              randconfig-r032-20230322   gcc  
sparc64              randconfig-r035-20230322   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                        randconfig-a001   clang
x86_64                        randconfig-a003   clang
x86_64                        randconfig-a005   clang
x86_64                        randconfig-a011   gcc  
x86_64                        randconfig-a012   clang
x86_64                        randconfig-a013   gcc  
x86_64                        randconfig-a014   clang
x86_64                        randconfig-a015   gcc  
x86_64                        randconfig-a016   clang
x86_64                        randconfig-k001   clang
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r001-20230322   gcc  
xtensa       buildonly-randconfig-r006-20230322   gcc  
xtensa                          iss_defconfig   gcc  
xtensa               randconfig-r001-20230322   gcc  
xtensa               randconfig-r002-20230322   gcc  
xtensa               randconfig-r012-20230322   gcc  
xtensa               randconfig-r013-20230322   gcc  
xtensa               randconfig-r014-20230322   gcc  
xtensa               randconfig-r031-20230322   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
