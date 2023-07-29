Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 31E56767EC6
	for <lists+intel-wired-lan@lfdr.de>; Sat, 29 Jul 2023 13:41:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BD0F08399E;
	Sat, 29 Jul 2023 11:41:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BD0F08399E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690630875;
	bh=1XvLAHNN7WRHAFIXNkDGOYV2ZByj/EG5/rRYJEqDgR8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=NwpwVmHaUBemP6fyYoShZqxSRfK6lyF48Tqm8iOuLp53J1NgaszJRXqskbjxPgoOq
	 MP2q1aIvqHtL5GP+7h1EtROWo5Qe8rXsAd7eeEpZUhhziU81oTv4l5jRoev50mMKBt
	 MTKdyiUzkmZaEUPiy07qgygvVzfQb3HK/fGMixypaCnolByYTVQHYYscKAkfsqUrSB
	 COGJhMzCubt09ccLOwgQWhMeBC1riMM+uhGX89q4lBrK6Jv+TqSNVevttt2HOXmx+o
	 LhOsTF9LdSRY/6Yi9b4F7N/NZc94zAQEw5cb/7QT4a2twXBXTnK/wGz43UnG4uJ6R6
	 lerZIDMNUF/6w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RcMZTlJIKR-t; Sat, 29 Jul 2023 11:41:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 85C9A83592;
	Sat, 29 Jul 2023 11:41:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 85C9A83592
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 004841BF82C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 Jul 2023 11:41:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CB1CB417D8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 Jul 2023 11:41:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CB1CB417D8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id joYCyeZAQlmn for <intel-wired-lan@lists.osuosl.org>;
 Sat, 29 Jul 2023 11:41:07 +0000 (UTC)
Received: from mgamail.intel.com (unknown [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 57123417D1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 Jul 2023 11:41:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 57123417D1
X-IronPort-AV: E=McAfee;i="6600,9927,10785"; a="435046223"
X-IronPort-AV: E=Sophos;i="6.01,240,1684825200"; d="scan'208";a="435046223"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2023 04:41:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10785"; a="851514083"
X-IronPort-AV: E=Sophos;i="6.01,240,1684825200"; d="scan'208";a="851514083"
Received: from lkp-server02.sh.intel.com (HELO 953e8cd98f7d) ([10.239.97.151])
 by orsmga004.jf.intel.com with ESMTP; 29 Jul 2023 04:41:04 -0700
Received: from kbuild by 953e8cd98f7d with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qPiJk-00040b-2I
 for intel-wired-lan@lists.osuosl.org; Sat, 29 Jul 2023 11:41:04 +0000
Date: Sat, 29 Jul 2023 19:40:58 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202307291955.fxFPaoOF-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690630867; x=1722166867;
 h=date:from:to:subject:message-id;
 bh=lYunqkPzfH56Uw0VY2qss5o1ii9gFuE0EmY65XzAwXM=;
 b=hoSorVTKc1uZQv05b/gK7pGxW5ldlZFdWsIcFCqWqWHpMOiTMk1K2d/6
 DasOLjkry3aqBFAJ/tI3/LPqlA0oPBmpTMoqZPD9LK9kXe+ukqHfaL86z
 lMZtTEbwgD/X1q124NKZZpjGNRggtw6vSP6SNJEraBnbfH0AT4gT1yqL2
 hc7B7ZtVV5PuH/wKyGx8Ag3QUlEQgzOg8f7q4tBk410IVlx+r8KBKXKOV
 /Ad8VzyQ0MUG9WdTSLDnVTRFXeRqA5tCUa/EbbNhRCe7dlIpc14fh420o
 KcKAOQG/Ujmgmq+ROCGCQ3w47bGq+GFWTTKzGt6rRYj30EhcX43BDiLkh
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hoSorVTK
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 79dc5308c824de000283d82a4496567bbedae5db
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 79dc5308c824de000283d82a4496567bbedae5db  ice: Support untagged VLAN traffic in br offload

elapsed time: 794m

configs tested: 105
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r034-20230728   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r014-20230728   gcc  
arc                  randconfig-r031-20230728   gcc  
arc                  randconfig-r043-20230728   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r005-20230728   clang
arm                  randconfig-r033-20230728   clang
arm                  randconfig-r046-20230728   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r006-20230728   gcc  
csky                 randconfig-r016-20230728   gcc  
hexagon              randconfig-r026-20230727   clang
hexagon              randconfig-r041-20230728   clang
hexagon              randconfig-r045-20230728   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230728   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230728   gcc  
i386                 randconfig-i002-20230728   gcc  
i386                 randconfig-i003-20230728   gcc  
i386                 randconfig-i004-20230728   gcc  
i386                 randconfig-i005-20230728   gcc  
i386                 randconfig-i006-20230728   gcc  
i386                 randconfig-i011-20230728   clang
i386                 randconfig-i012-20230728   clang
i386                 randconfig-i013-20230728   clang
i386                 randconfig-i014-20230728   clang
i386                 randconfig-i015-20230728   clang
i386                 randconfig-i016-20230728   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r015-20230728   gcc  
m68k                 randconfig-r036-20230728   gcc  
microblaze           randconfig-r024-20230727   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r003-20230728   clang
nios2                               defconfig   gcc  
nios2                randconfig-r004-20230728   gcc  
nios2                randconfig-r022-20230727   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r013-20230728   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230728   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r044-20230728   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r002-20230728   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r032-20230728   gcc  
sparc64              randconfig-r025-20230727   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r011-20230728   gcc  
um                   randconfig-r023-20230727   clang
um                   randconfig-r035-20230728   clang
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230728   gcc  
x86_64       buildonly-randconfig-r002-20230728   gcc  
x86_64       buildonly-randconfig-r003-20230728   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-x001-20230728   clang
x86_64               randconfig-x002-20230728   clang
x86_64               randconfig-x003-20230728   clang
x86_64               randconfig-x004-20230728   clang
x86_64               randconfig-x005-20230728   clang
x86_64               randconfig-x006-20230728   clang
x86_64               randconfig-x011-20230728   gcc  
x86_64               randconfig-x012-20230728   gcc  
x86_64               randconfig-x013-20230728   gcc  
x86_64               randconfig-x014-20230728   gcc  
x86_64               randconfig-x015-20230728   gcc  
x86_64               randconfig-x016-20230728   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r021-20230727   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
