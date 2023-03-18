Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD80C6BF919
	for <lists+intel-wired-lan@lfdr.de>; Sat, 18 Mar 2023 09:53:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 502B94012A;
	Sat, 18 Mar 2023 08:53:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 502B94012A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679129630;
	bh=IJEgpJKXKu8dayrB3dz+QAvP+JjyU5LMv5nA9flfG4o=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Yg04d4DWJcIJutak7Mh9vipvufKvM5tM7mHkrS//n8lpCNi8U8SNQtFiqpCm760h1
	 2/EI681tuNHsniwbvMrLSLxrxy/T/Vz23fHV3mQekm6JNqsRnfZXaqHz92u3msKZgl
	 RBhnljZSaM/RHa8SS0ZZE88uGTo3ryOFLhHO3N1t3A/9CCkHI/rqWFhTTkGS67Urwg
	 7ohhHv9coFZjxsf5Qq6OFQwW5Yk3AXT2aheIFENKXbJI/QJfCQ3RehzNsa/Dc/KiWx
	 3KV9fwskdUpT/D63N6qQl8Y57/Zc/G4kUq+pwhHbDonDFw/ORcU5V71Aai5tFYbAEX
	 6PFAyNGYaLZPg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oiJoEBjpoZe8; Sat, 18 Mar 2023 08:53:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 00BA840119;
	Sat, 18 Mar 2023 08:53:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 00BA840119
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 357D31BF379
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Mar 2023 08:53:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 05FA6607CE
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Mar 2023 08:53:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 05FA6607CE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eL4icHvaAyGG for <intel-wired-lan@lists.osuosl.org>;
 Sat, 18 Mar 2023 08:53:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0A5C760792
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0A5C760792
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Mar 2023 08:53:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="424695806"
X-IronPort-AV: E=Sophos;i="5.98,271,1673942400"; d="scan'208";a="424695806"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2023 01:53:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="749546187"
X-IronPort-AV: E=Sophos;i="5.98,271,1673942400"; d="scan'208";a="749546187"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 18 Mar 2023 01:53:40 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pdSJn-0009xL-1N;
 Sat, 18 Mar 2023 08:53:39 +0000
Date: Sat, 18 Mar 2023 16:53:16 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <64157bfc.RL3/ApkZS6VvY5KA%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679129622; x=1710665622;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=lHF2adZoCpEaN62yaKnIU2bGw3RyRoapOp+Zf8eQhIs=;
 b=CxecFCMxyOVKRg4+CpUPqs6R2yuL+ba7fwlytP+glff6IxRZjtmrOMHX
 kOxocnGKPXwskp9kRPCQ2sJtLwmgtxLywvjb4n6QQ4rFPula1NLjgFm3O
 Xzo2MpFTx9+9RdVMlpYmAAESUEJDDxoDUFtazaIReZqVJFXg6Yv+w8IYk
 +Xa3H4PCUv4DGnBBTH4Qslr42UhDmSAzaqD6iiCXo6zISTdxuhu40xD8d
 HH1EHpmw+tiALqJzK2RVK9ZoVFHfZSo3tCrMEqbO7bMppJ8Xb/M8Ex6pp
 HqAdqg67QNs/M2IukM0N6sl8RyBHBh0TQ+LVLUvsR+gtcJNibcJX2bUyf
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CxecFCMx
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 cebeaee2e9fc6200805bc10696ef8a330846d07f
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: cebeaee2e9fc6200805bc10696ef8a330846d07f  ice: identify aRFS flows using L3/L4 dissector info

elapsed time: 810m

configs tested: 160
configs skipped: 11

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r016-20230312   gcc  
alpha                randconfig-r034-20230313   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r006-20230313   gcc  
arc                  randconfig-r013-20230313   gcc  
arc                  randconfig-r023-20230313   gcc  
arc                  randconfig-r032-20230318   gcc  
arc                  randconfig-r043-20230312   gcc  
arc                  randconfig-r043-20230313   gcc  
arc                  randconfig-r043-20230315   gcc  
arc                  randconfig-r043-20230318   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r003-20230313   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r004-20230312   gcc  
arm                  randconfig-r005-20230312   gcc  
arm                  randconfig-r034-20230318   gcc  
arm                  randconfig-r046-20230312   clang
arm                  randconfig-r046-20230313   gcc  
arm                  randconfig-r046-20230315   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r001-20230312   clang
arm64                randconfig-r011-20230312   gcc  
arm64                randconfig-r015-20230313   clang
csky                                defconfig   gcc  
csky                 randconfig-r002-20230312   gcc  
csky                 randconfig-r022-20230313   gcc  
csky                 randconfig-r023-20230312   gcc  
csky                 randconfig-r025-20230313   gcc  
hexagon      buildonly-randconfig-r004-20230312   clang
hexagon      buildonly-randconfig-r005-20230313   clang
hexagon              randconfig-r003-20230313   clang
hexagon              randconfig-r022-20230312   clang
hexagon              randconfig-r041-20230312   clang
hexagon              randconfig-r041-20230313   clang
hexagon              randconfig-r041-20230315   clang
hexagon              randconfig-r045-20230312   clang
hexagon              randconfig-r045-20230313   clang
hexagon              randconfig-r045-20230315   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r002-20230313   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                          randconfig-a001   gcc  
i386                          randconfig-a002   clang
i386                          randconfig-a003   gcc  
i386                          randconfig-a004   clang
i386                          randconfig-a005   gcc  
i386                          randconfig-a006   clang
i386                 randconfig-a011-20230313   clang
i386                 randconfig-a012-20230313   clang
i386                 randconfig-a013-20230313   clang
i386                 randconfig-a014-20230313   clang
i386                 randconfig-a015-20230313   clang
i386                 randconfig-a016-20230313   clang
i386                 randconfig-r002-20230313   gcc  
i386                 randconfig-r004-20230313   gcc  
i386                 randconfig-r005-20230313   gcc  
i386                 randconfig-r032-20230313   gcc  
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r001-20230313   gcc  
ia64                 randconfig-r002-20230313   gcc  
ia64                 randconfig-r006-20230313   gcc  
ia64                 randconfig-r012-20230312   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r002-20230312   gcc  
m68k                 randconfig-r004-20230313   gcc  
m68k                 randconfig-r016-20230313   gcc  
m68k                 randconfig-r031-20230313   gcc  
m68k                 randconfig-r033-20230318   gcc  
microblaze   buildonly-randconfig-r003-20230312   gcc  
microblaze           randconfig-r001-20230312   gcc  
microblaze           randconfig-r001-20230313   gcc  
microblaze           randconfig-r006-20230312   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r025-20230312   clang
mips                 randconfig-r035-20230318   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r003-20230312   gcc  
nios2                randconfig-r005-20230312   gcc  
nios2                randconfig-r012-20230313   gcc  
openrisc     buildonly-randconfig-r001-20230312   gcc  
openrisc     buildonly-randconfig-r006-20230312   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r005-20230312   gcc  
parisc               randconfig-r005-20230313   gcc  
parisc               randconfig-r021-20230313   gcc  
parisc               randconfig-r036-20230313   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r001-20230313   clang
powerpc      buildonly-randconfig-r004-20230313   clang
powerpc              randconfig-r003-20230313   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r005-20230318   clang
riscv                randconfig-r014-20230312   gcc  
riscv                randconfig-r042-20230312   gcc  
riscv                randconfig-r042-20230313   clang
riscv                randconfig-r042-20230315   clang
riscv                randconfig-r042-20230318   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r011-20230313   clang
s390                 randconfig-r044-20230312   gcc  
s390                 randconfig-r044-20230313   clang
s390                 randconfig-r044-20230315   clang
s390                 randconfig-r044-20230318   gcc  
sh                               allmodconfig   gcc  
sh                   randconfig-r024-20230313   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r002-20230313   gcc  
sparc                randconfig-r035-20230313   gcc  
sparc64              randconfig-r002-20230312   gcc  
sparc64              randconfig-r004-20230312   gcc  
sparc64              randconfig-r004-20230313   gcc  
sparc64              randconfig-r021-20230312   gcc  
sparc64              randconfig-r026-20230312   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230313   gcc  
x86_64               randconfig-a002-20230313   gcc  
x86_64               randconfig-a003-20230313   gcc  
x86_64               randconfig-a004-20230313   gcc  
x86_64               randconfig-a005-20230313   gcc  
x86_64               randconfig-a006-20230313   gcc  
x86_64               randconfig-a011-20230313   clang
x86_64               randconfig-a012-20230313   clang
x86_64               randconfig-a013-20230313   clang
x86_64               randconfig-a014-20230313   clang
x86_64               randconfig-a015-20230313   clang
x86_64               randconfig-a016-20230313   clang
x86_64               randconfig-k001-20230313   clang
x86_64               randconfig-r014-20230313   clang
x86_64               randconfig-r026-20230313   clang
x86_64               randconfig-r033-20230313   gcc  
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r001-20230312   gcc  
xtensa               randconfig-r001-20230313   gcc  
xtensa               randconfig-r003-20230312   gcc  
xtensa               randconfig-r015-20230312   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
