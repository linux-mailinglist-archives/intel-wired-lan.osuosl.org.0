Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D13B072A919
	for <lists+intel-wired-lan@lfdr.de>; Sat, 10 Jun 2023 07:00:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 67CAD42690;
	Sat, 10 Jun 2023 05:00:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 67CAD42690
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686373225;
	bh=qfEz+XIgdHd050bhX5Ktq7ci1gjDx7hzZlEJabjx1To=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=SC+NS496DWU6evVy03anv8FoxP9TRIVNX2/rZEKF5h1U9lUcFKaYWF7u8mGCUOol3
	 28TYzJ0aQWlpovo9P/fuLtu3veF4AuDmztYe2IM7Xjejak8IM4n6dxoz8Tu+9CO/tN
	 MmseW2FJXpfCS1GrGhyjU797bcKIkRJ7kQy9UaSBegh8ptWV5CeK8pwsX6RJMac14Q
	 IgThdBZZ85puzj4YCQF8uuDtsU7d6Cy0n3Xsf67MT9S+STx4czPk8ZMOY8FutK0n7z
	 MJ9uYCEJibZmUApQNps3X7cBwnt8kZdnZ3UY/MuGAfId/436JR7/OfNhodWk7VLOS2
	 fa7U4nDrsqBOQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tpFnrr3eQf3c; Sat, 10 Jun 2023 05:00:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D3C114268A;
	Sat, 10 Jun 2023 05:00:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D3C114268A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CC71C1BF2B3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jun 2023 05:00:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A4A1660AC0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jun 2023 05:00:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A4A1660AC0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9IieFQkEmCMn for <intel-wired-lan@lists.osuosl.org>;
 Sat, 10 Jun 2023 05:00:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6BE4060AB0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6BE4060AB0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jun 2023 05:00:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="360213853"
X-IronPort-AV: E=Sophos;i="6.00,231,1681196400"; d="scan'208";a="360213853"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 22:00:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="854956153"
X-IronPort-AV: E=Sophos;i="6.00,231,1681196400"; d="scan'208";a="854956153"
Received: from lkp-server01.sh.intel.com (HELO 15ab08e44a81) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 09 Jun 2023 22:00:15 -0700
Received: from kbuild by 15ab08e44a81 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1q7qhz-0009l0-03
 for intel-wired-lan@lists.osuosl.org; Sat, 10 Jun 2023 05:00:15 +0000
Date: Sat, 10 Jun 2023 12:59:33 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202306101232.Udxjx98e-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686373217; x=1717909217;
 h=date:from:to:subject:message-id;
 bh=L8Aq+Iolo0yGoQu00NtQQy9A2G59t8SODQ7C5cuR5E0=;
 b=mocf0CgaONKYFcSQ3rzMxh2fz4K11a7KxLq5SzDY1bCmMygOWitD6k84
 s2E9e9291dWfRz21Fwj2NjVcVqSxbNty1zoRY1nQobDDXnuytiq6VMzd9
 VkZWoGSq9Sk993B5cFV5AbxZmzvBl0VPjhmtmWlypgzPko7VYnxX3NI0H
 GyJlx1Y3r24KBFdws/c4SAx+zX4QVVLV0ddNECWo0BOXYJ94fkbVfGtGA
 +JbZimlwMUe7SfZIjqltmBg4pASGbajRu/k19I980x6CltsIPdRE+LHn1
 OPW/7v1SZXnqdyQ9be3ELWVnsarj7VHHWPOFQI4/xGmfdZnuYeCM9VHCW
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mocf0Cga
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 7dad30b226c565a664a92fe9b0105e525f761ba0
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
branch HEAD: 7dad30b226c565a664a92fe9b0105e525f761ba0  igc: Work around HW bug causing missing timestamps

elapsed time: 730m

configs tested: 84
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r002-20230608   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r033-20230608   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r043-20230608   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r014-20230609   clang
arm                  randconfig-r021-20230608   gcc  
arm                  randconfig-r046-20230608   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r012-20230609   gcc  
csky         buildonly-randconfig-r004-20230608   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r011-20230609   gcc  
csky                 randconfig-r026-20230608   gcc  
hexagon              randconfig-r023-20230608   clang
hexagon              randconfig-r041-20230608   clang
hexagon              randconfig-r045-20230608   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i051-20230608   gcc  
i386                 randconfig-i052-20230608   gcc  
i386                 randconfig-i053-20230608   gcc  
i386                 randconfig-i054-20230608   gcc  
i386                 randconfig-i055-20230608   gcc  
i386                 randconfig-i056-20230608   gcc  
i386                 randconfig-r016-20230609   gcc  
i386                 randconfig-r024-20230608   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r013-20230609   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r035-20230608   gcc  
microblaze           randconfig-r025-20230608   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r005-20230608   clang
nios2                               defconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230608   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r003-20230608   clang
s390                                defconfig   gcc  
s390                 randconfig-r044-20230608   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r015-20230609   gcc  
sh                   randconfig-r022-20230608   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r036-20230608   gcc  
sparc64      buildonly-randconfig-r006-20230608   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   clang
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-r032-20230608   gcc  
x86_64               randconfig-x061-20230608   clang
x86_64               randconfig-x062-20230608   clang
x86_64               randconfig-x063-20230608   clang
x86_64               randconfig-x064-20230608   clang
x86_64               randconfig-x065-20230608   clang
x86_64               randconfig-x066-20230608   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
