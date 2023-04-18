Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A6E56E5EB4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Apr 2023 12:26:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 483764188F;
	Tue, 18 Apr 2023 10:26:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 483764188F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681813616;
	bh=C6epRq2ZqKBqJubDy0BdMs0yDhIQrI3yMkvoPtrhl4E=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=2p5Rk/5FjZRvwm6ATtJTtQOMqunbFkuSW6kDbxAxAmKN/mHGO7dF51wyARawSFFal
	 5gN7AZx0o/etljRv3KlhKMx8vxL3mkYSmkYvCHor+vM5HLJQWbePGaAqvdAQnoMxwB
	 yU3DP6AG7D4kknN0nGrEBsOJ4efGSIJ4SpO8LAJ1MANTOAIw+X8UqYySCk3B2VSwTq
	 eRHL3NPiv2QOdVad60PGg/+/Zm33hPIrlqqpyDF66U2tgOtAhuCk++qpAcH2n/gdL+
	 lz+9jfut/ck2bW8CymCKbQO3ySPK+YcpxCN5JyXsyfRwV63BcBbSZJ+fHD+wOMc1r8
	 ah5mNblrzVEYg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7ZYYUBdmt7rw; Tue, 18 Apr 2023 10:26:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F13C941864;
	Tue, 18 Apr 2023 10:26:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F13C941864
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6B5271C4269
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 10:26:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4E51141864
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 10:26:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4E51141864
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gLrqfUIiR6Fp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Apr 2023 10:26:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EC5364171F
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EC5364171F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 10:26:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="347883738"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="347883738"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 03:26:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="641329567"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="641329567"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 18 Apr 2023 03:26:38 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1poiXh-000dFt-0W;
 Tue, 18 Apr 2023 10:26:33 +0000
Date: Tue, 18 Apr 2023 18:25:38 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <643e7022.YAnvuSenj3JdtymD%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681813608; x=1713349608;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=Ngy90yH94dJ7S+eyKncfcBkvFh0g6wADnExHsb/lUj8=;
 b=P26B5xOhmz1+DYIVq8XhdL/NBwl1fjS91GP2eKoo43PUkYeNB/nN608w
 h6wMjy30rHYdDBllIz0kYLvGbG2xq9ybCaCpCpB4m1xS4yZdij8g2g/pR
 1NIPjDay0S0Q8MK0uengx3sJ7Z9p4SY6kiXOraidHB8PV5/ZyAAhH9wVm
 MJHDdviRqFk6gf2SaMIPawj2kx1TVOpM5txKadYFdOTuhvQUrIdk8ujrA
 kTtU8LNgbqcgeZr1SwEi802jORTgULH67voFdd6FxP8G3lya0iMc4LWpD
 AqSFU0yXEzPT3/sKnx/9AOsctzmyek97vbwVhSj0sYUbIq+JT2mNyt+JQ
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=P26B5xOh
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 56959071c91e2792fa5d1696b75e732ac19e4788
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 56959071c91e2792fa5d1696b75e732ac19e4788  ice: sleep, don't busy-wait, in the SQ send retry loop

elapsed time: 727m

configs tested: 73
configs skipped: 7

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r016-20230417   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r003-20230417   gcc  
arc                                 defconfig   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r015-20230417   gcc  
arm                  randconfig-r035-20230417   clang
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r002-20230417   gcc  
arm64        buildonly-randconfig-r004-20230416   clang
arm64                               defconfig   gcc  
arm64                randconfig-r033-20230417   gcc  
csky         buildonly-randconfig-r004-20230417   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r034-20230416   gcc  
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a015-20230417   clang
i386                 randconfig-a016-20230417   clang
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r032-20230417   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r003-20230416   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r011-20230417   gcc  
m68k                 randconfig-r014-20230417   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r033-20230416   gcc  
mips                 randconfig-r036-20230416   gcc  
nios2        buildonly-randconfig-r001-20230416   gcc  
nios2                               defconfig   gcc  
openrisc     buildonly-randconfig-r005-20230417   gcc  
parisc       buildonly-randconfig-r002-20230416   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r031-20230417   gcc  
parisc               randconfig-r032-20230416   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r005-20230416   gcc  
powerpc              randconfig-r012-20230417   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r006-20230417   clang
riscv                               defconfig   gcc  
riscv                randconfig-r035-20230416   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r001-20230417   clang
s390                                defconfig   gcc  
sh                               allmodconfig   gcc  
sparc                               defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a015-20230417   clang
x86_64               randconfig-a016-20230417   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r034-20230417   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
