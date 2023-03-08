Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CFBF6AFDF6
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Mar 2023 05:39:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 840FF41735;
	Wed,  8 Mar 2023 04:39:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 840FF41735
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678250388;
	bh=8QM0i4oVgfArl8LX3y/6iTkjRo9IkfxNSDJ0sVLMHHg=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=6EtN5+3JVgqrOPZejwNWqObubS1k07YwZXHvBWIlCMdFpV9UGpk0Szc1nUYPRa8lz
	 CAYreXykZxtvkD6a8eTGp3ku4GcZPHmktfikOYkYu8mFIj7Lepjd03J+GzasDFqlq4
	 Arga/iBPtsuZRwBceJ7y3Tq4Ktw+ZsDyhgVVhDG6iyWdSXRSJxmE6BD83K7k/sPY+m
	 moUz4GeErpmxy/bJI3AGhMMG6QIgr1jjAMh0vwKCWF3zMeiWPcKq7bz5CVL+n5BmOh
	 FFmmwMqyE24evrOgJ+6iIZKuey61/Ag00Q1wqhZEOYrU9fMZHwEZumLT69e21Qh6Cv
	 lmG3m/ZwJ+6pg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i3FHp5FdM_gl; Wed,  8 Mar 2023 04:39:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0DDF1402E7;
	Wed,  8 Mar 2023 04:39:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0DDF1402E7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DB3171BF29F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Mar 2023 04:39:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B4B3E403AF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Mar 2023 04:39:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B4B3E403AF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aef0dYSzbRbd for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Mar 2023 04:39:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 06382400B9
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 06382400B9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Mar 2023 04:39:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="319887842"
X-IronPort-AV: E=Sophos;i="5.98,242,1673942400"; d="scan'208";a="319887842"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2023 20:39:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="820058310"
X-IronPort-AV: E=Sophos;i="5.98,242,1673942400"; d="scan'208";a="820058310"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 07 Mar 2023 20:39:35 -0800
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pZlaQ-0001s4-3C;
 Wed, 08 Mar 2023 04:39:34 +0000
Date: Wed, 08 Mar 2023 12:39:23 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6408117b./RqFBIZFNuQLHEYk%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678250378; x=1709786378;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=WsXp+g0ujXl+JjlQmqDMWd2ULdS2qKkwV7/jyw8COcY=;
 b=JGmm5heh4nWUTkZhOK+MFkMi4UDvLarJG6SJudJUbDeQoIjSXEhPPsRL
 q9eCJcaR6r15SDp9fVBWI3v5E0CvTqssB6qimQ2yq5BUiF5vNtA3xylvC
 7l4SRTIc+/L3Nw7F8gVmp5wfGiIhdZORr1paeVP10Rwhw/xKxQmq/9Oj9
 AcPtD6ZH4lzubsNgRPxPrwEmPQhun7NxjwMCoNa/K//E1acDiAvAOUV/5
 UE0J641YVmKWhZXk7xOGkrHeFuL0W+gzqyTwm4EOU+6QUNdymce59nA98
 dXu7cPOH1Xn7Tjeb9LzglOuIhiuk7oQJwOefUj0zVd+XPaUXMtH5g0NQg
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JGmm5heh
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 382e363d5bed0cec5807b35761d14e55955eee63
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git master
branch HEAD: 382e363d5bed0cec5807b35761d14e55955eee63  net: usb: qmi_wwan: add Telit 0x1080 composition

elapsed time: 816m

configs tested: 211
configs skipped: 25

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r006-20230306   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r011-20230306   gcc  
alpha                randconfig-r025-20230306   gcc  
alpha                randconfig-r035-20230306   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r002-20230305   gcc  
arc          buildonly-randconfig-r006-20230306   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r005-20230306   gcc  
arc                  randconfig-r014-20230305   gcc  
arc                  randconfig-r015-20230306   gcc  
arc                  randconfig-r022-20230305   gcc  
arc                  randconfig-r022-20230306   gcc  
arc                  randconfig-r031-20230305   gcc  
arc                  randconfig-r032-20230306   gcc  
arc                  randconfig-r033-20230306   gcc  
arc                  randconfig-r035-20230306   gcc  
arc                  randconfig-r043-20230305   gcc  
arc                  randconfig-r043-20230306   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r002-20230305   clang
arm                                 defconfig   gcc  
arm                  randconfig-r013-20230306   gcc  
arm                  randconfig-r021-20230306   gcc  
arm                  randconfig-r031-20230306   clang
arm                  randconfig-r033-20230305   gcc  
arm                  randconfig-r033-20230306   clang
arm                  randconfig-r046-20230305   clang
arm                  randconfig-r046-20230306   gcc  
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r003-20230306   gcc  
arm64        buildonly-randconfig-r005-20230305   clang
arm64        buildonly-randconfig-r006-20230305   clang
arm64                               defconfig   gcc  
arm64                randconfig-r002-20230306   gcc  
arm64                randconfig-r013-20230305   gcc  
arm64                randconfig-r014-20230305   gcc  
arm64                randconfig-r014-20230306   clang
arm64                randconfig-r015-20230306   clang
arm64                randconfig-r016-20230306   clang
arm64                randconfig-r021-20230305   gcc  
arm64                randconfig-r025-20230306   clang
arm64                randconfig-r026-20230306   clang
csky         buildonly-randconfig-r004-20230306   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r001-20230305   gcc  
csky                 randconfig-r002-20230305   gcc  
csky                 randconfig-r004-20230306   gcc  
csky                 randconfig-r011-20230305   gcc  
csky                 randconfig-r012-20230306   gcc  
csky                 randconfig-r015-20230305   gcc  
csky                 randconfig-r024-20230305   gcc  
csky                 randconfig-r025-20230306   gcc  
csky                 randconfig-r033-20230305   gcc  
hexagon      buildonly-randconfig-r001-20230305   clang
hexagon      buildonly-randconfig-r002-20230305   clang
hexagon              randconfig-r002-20230306   clang
hexagon              randconfig-r012-20230306   clang
hexagon              randconfig-r023-20230305   clang
hexagon              randconfig-r034-20230305   clang
hexagon              randconfig-r041-20230305   clang
hexagon              randconfig-r041-20230306   clang
hexagon              randconfig-r045-20230305   clang
hexagon              randconfig-r045-20230306   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a006-20230306   gcc  
i386                 randconfig-a016-20230306   clang
i386                 randconfig-r002-20230306   gcc  
i386                 randconfig-r034-20230306   gcc  
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r003-20230306   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r002-20230305   gcc  
ia64                 randconfig-r006-20230305   gcc  
ia64                 randconfig-r011-20230305   gcc  
ia64                 randconfig-r011-20230306   gcc  
ia64                 randconfig-r015-20230305   gcc  
ia64                 randconfig-r021-20230306   gcc  
ia64                 randconfig-r022-20230306   gcc  
ia64                 randconfig-r023-20230305   gcc  
ia64                 randconfig-r035-20230305   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r005-20230305   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r004-20230305   gcc  
loongarch            randconfig-r006-20230305   gcc  
loongarch            randconfig-r011-20230305   gcc  
loongarch            randconfig-r013-20230305   gcc  
loongarch            randconfig-r016-20230305   gcc  
loongarch            randconfig-r021-20230306   gcc  
loongarch            randconfig-r022-20230305   gcc  
loongarch            randconfig-r033-20230305   gcc  
loongarch            randconfig-r034-20230305   gcc  
loongarch            randconfig-r036-20230305   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r006-20230306   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r003-20230305   gcc  
m68k                 randconfig-r032-20230305   gcc  
m68k                 randconfig-r035-20230305   gcc  
m68k                 randconfig-r036-20230306   gcc  
microblaze           randconfig-r003-20230306   gcc  
microblaze           randconfig-r005-20230305   gcc  
microblaze           randconfig-r013-20230306   gcc  
microblaze           randconfig-r014-20230306   gcc  
microblaze           randconfig-r015-20230305   gcc  
microblaze           randconfig-r016-20230305   gcc  
microblaze           randconfig-r016-20230306   gcc  
microblaze           randconfig-r034-20230306   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r004-20230305   gcc  
mips                 randconfig-r005-20230305   gcc  
mips                 randconfig-r006-20230306   clang
mips                 randconfig-r022-20230305   clang
mips                 randconfig-r025-20230305   clang
nios2        buildonly-randconfig-r004-20230306   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r025-20230305   gcc  
nios2                randconfig-r031-20230306   gcc  
nios2                randconfig-r036-20230306   gcc  
openrisc     buildonly-randconfig-r001-20230306   gcc  
openrisc     buildonly-randconfig-r005-20230306   gcc  
openrisc     buildonly-randconfig-r006-20230305   gcc  
openrisc             randconfig-r013-20230306   gcc  
openrisc             randconfig-r024-20230306   gcc  
parisc       buildonly-randconfig-r002-20230306   gcc  
parisc       buildonly-randconfig-r003-20230306   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r002-20230305   gcc  
parisc               randconfig-r016-20230305   gcc  
parisc               randconfig-r022-20230306   gcc  
parisc               randconfig-r023-20230306   gcc  
parisc               randconfig-r032-20230306   gcc  
parisc               randconfig-r036-20230305   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r003-20230305   gcc  
powerpc      buildonly-randconfig-r004-20230305   gcc  
powerpc      buildonly-randconfig-r005-20230305   gcc  
powerpc      buildonly-randconfig-r005-20230306   clang
powerpc              randconfig-r006-20230306   gcc  
powerpc              randconfig-r024-20230306   clang
powerpc              randconfig-r031-20230305   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r003-20230305   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r001-20230306   gcc  
riscv                randconfig-r014-20230305   gcc  
riscv                randconfig-r014-20230306   clang
riscv                randconfig-r021-20230305   gcc  
riscv                randconfig-r024-20230305   gcc  
riscv                randconfig-r032-20230305   clang
riscv                randconfig-r035-20230306   gcc  
riscv                randconfig-r042-20230305   gcc  
riscv                randconfig-r042-20230306   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r002-20230306   clang
s390         buildonly-randconfig-r004-20230306   clang
s390                                defconfig   gcc  
s390                 randconfig-r001-20230305   clang
s390                 randconfig-r023-20230305   gcc  
s390                 randconfig-r044-20230305   gcc  
s390                 randconfig-r044-20230306   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r026-20230306   gcc  
sh                   randconfig-r034-20230306   gcc  
sparc        buildonly-randconfig-r003-20230305   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r012-20230305   gcc  
sparc                randconfig-r016-20230306   gcc  
sparc                randconfig-r021-20230305   gcc  
sparc                randconfig-r023-20230306   gcc  
sparc                randconfig-r024-20230305   gcc  
sparc                randconfig-r026-20230305   gcc  
sparc                randconfig-r031-20230306   gcc  
sparc64      buildonly-randconfig-r004-20230305   gcc  
sparc64              randconfig-r003-20230305   gcc  
sparc64              randconfig-r004-20230305   gcc  
sparc64              randconfig-r005-20230306   gcc  
sparc64              randconfig-r012-20230305   gcc  
sparc64              randconfig-r024-20230306   gcc  
sparc64              randconfig-r036-20230305   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a006-20230306   gcc  
x86_64               randconfig-r001-20230306   gcc  
x86_64               randconfig-r006-20230306   gcc  
x86_64               randconfig-r011-20230306   clang
x86_64               randconfig-r026-20230306   clang
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r002-20230306   gcc  
xtensa       buildonly-randconfig-r005-20230306   gcc  
xtensa               randconfig-r003-20230306   gcc  
xtensa               randconfig-r012-20230305   gcc  
xtensa               randconfig-r023-20230306   gcc  
xtensa               randconfig-r034-20230305   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
