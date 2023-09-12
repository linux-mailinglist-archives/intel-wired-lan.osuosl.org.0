Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D8FB79CEDE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Sep 2023 12:51:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CE0DE6113F;
	Tue, 12 Sep 2023 10:51:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CE0DE6113F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694515868;
	bh=I6Ok05TCtVeyWXuG0yZuNi/q+NOS8BcU8M5ABXbvG5I=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=qgHcmqXLRMN1xn//p/pOMlpv/fF/RaHo1i5Mel2QqHU5Pr/GRhLDjPU6EfgAK1t+F
	 PU84qCec4vRsBxUm1OBJ83WZXxN3GBT/TuKXQzRfppY9PPiVUUja+Yk3T4EQs2fpLG
	 t/rWClfuNE3j2Io8Mpf7i2QZ+MO7AECKVW2tfYGEn4cAWJAaziZkDUbV5AWKzFyPAy
	 XfPwlYO9wIZQwyEw248Z03zIbGPuTdS+P1eItkyvpBINAtZyZtz8jOqxzGx3JlMNYr
	 r+GrIGne44MbqTC24sDSXWX8Y7uxa7kW+LpLl+acV+JtTuZw01+5hBEKqtziBg1Twf
	 Da5ivTZIq5JCw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rpDquFSG3Zo5; Tue, 12 Sep 2023 10:51:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 59A5F6115C;
	Tue, 12 Sep 2023 10:51:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 59A5F6115C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 351021BF27E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 10:51:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0C81B41867
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 10:51:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0C81B41867
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GNLsGMEOq3dr for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Sep 2023 10:51:00 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3F250408FD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 10:51:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3F250408FD
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="442354405"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="442354405"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 03:50:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="772953391"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="772953391"
Received: from lkp-server02.sh.intel.com (HELO 1e56c5165d33) ([10.239.97.151])
 by orsmga008.jf.intel.com with ESMTP; 12 Sep 2023 03:50:54 -0700
Received: from kbuild by 1e56c5165d33 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qg0yo-0000HM-22
 for intel-wired-lan@lists.osuosl.org; Tue, 12 Sep 2023 10:50:50 +0000
Date: Tue, 12 Sep 2023 18:50:26 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202309121824.RSMAKWrL-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694515860; x=1726051860;
 h=date:from:to:subject:message-id;
 bh=ZXoXr02PSSjs+t1nCfxQoVVNtM9iUI3EQHaS0MeLq1I=;
 b=NPARZCVAzif15G8WCSH7IlDVHXkMQoTQOEFbBgbGg4Whkj42jCi0Rsv9
 Xl2FzBbRmgHSIJdQ6aY42NhfgKuKUiltCLkyykno9gsI1025a3yXbEu+D
 HwIe26S3qYrkk4C5FaXJyU3xTNVgzdpCe+IX9OuFvrX7YFqTDS3TqQoJw
 A7neZ6ANp73kAiaszciod1C+xHMg54z+xE7ln0rHrd+f1SlcKlIQ0sb33
 XnGPdshTB/m294vvDp7dLdpT7oPkVSMGXOlVe4u9u4UjgcfZmwUzmWAYK
 vRe4AgMPiZgBLSgDkjWh5ZmRrwqPMNKia3F6pKnt5MYW9AXsykQn7OVKe
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NPARZCVA
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 58b74555c99cdefd674754426f91a54505030be9
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: 58b74555c99cdefd674754426f91a54505030be9  ice: check netlist before enabling ICE_F_GNSS

elapsed time: 902m

configs tested: 172
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r002-20230912   gcc  
alpha                randconfig-r012-20230912   gcc  
alpha                randconfig-r026-20230912   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20230912   gcc  
arc                  randconfig-r006-20230912   gcc  
arc                  randconfig-r016-20230912   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                   randconfig-001-20230912   clang
arm                  randconfig-r005-20230912   gcc  
arm64                            allmodconfig   gcc  
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r024-20230912   gcc  
arm64                randconfig-r031-20230912   clang
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r001-20230912   gcc  
csky                 randconfig-r015-20230912   gcc  
hexagon               randconfig-001-20230912   clang
hexagon               randconfig-002-20230912   clang
hexagon              randconfig-r006-20230912   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20230912   clang
i386         buildonly-randconfig-002-20230912   clang
i386         buildonly-randconfig-003-20230912   clang
i386         buildonly-randconfig-004-20230912   clang
i386         buildonly-randconfig-005-20230912   clang
i386         buildonly-randconfig-006-20230912   clang
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20230912   clang
i386                  randconfig-002-20230912   clang
i386                  randconfig-003-20230912   clang
i386                  randconfig-004-20230912   clang
i386                  randconfig-005-20230912   clang
i386                  randconfig-006-20230912   clang
i386                  randconfig-011-20230912   gcc  
i386                  randconfig-012-20230912   gcc  
i386                  randconfig-013-20230912   gcc  
i386                  randconfig-014-20230912   gcc  
i386                  randconfig-015-20230912   gcc  
i386                  randconfig-016-20230912   gcc  
i386                 randconfig-r005-20230912   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20230912   gcc  
loongarch            randconfig-r002-20230912   gcc  
loongarch            randconfig-r011-20230912   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r004-20230912   gcc  
m68k                 randconfig-r006-20230912   gcc  
m68k                 randconfig-r032-20230912   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
openrisc             randconfig-r004-20230912   gcc  
openrisc             randconfig-r035-20230912   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r004-20230912   gcc  
parisc               randconfig-r005-20230912   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   gcc  
powerpc              randconfig-r001-20230912   clang
powerpc              randconfig-r032-20230912   clang
powerpc              randconfig-r033-20230912   clang
powerpc64            randconfig-r013-20230912   gcc  
powerpc64            randconfig-r034-20230912   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20230912   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20230912   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r022-20230912   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64              randconfig-r003-20230912   gcc  
sparc64              randconfig-r025-20230912   gcc  
sparc64              randconfig-r036-20230912   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r001-20230912   gcc  
um                   randconfig-r003-20230912   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-001-20230912   clang
x86_64       buildonly-randconfig-002-20230912   clang
x86_64       buildonly-randconfig-003-20230912   clang
x86_64       buildonly-randconfig-004-20230912   clang
x86_64       buildonly-randconfig-005-20230912   clang
x86_64       buildonly-randconfig-006-20230912   clang
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20230912   gcc  
x86_64                randconfig-002-20230912   gcc  
x86_64                randconfig-003-20230912   gcc  
x86_64                randconfig-004-20230912   gcc  
x86_64                randconfig-005-20230912   gcc  
x86_64                randconfig-006-20230912   gcc  
x86_64                randconfig-011-20230912   clang
x86_64                randconfig-012-20230912   clang
x86_64                randconfig-013-20230912   clang
x86_64                randconfig-014-20230912   clang
x86_64                randconfig-015-20230912   clang
x86_64                randconfig-016-20230912   clang
x86_64                randconfig-071-20230912   clang
x86_64                randconfig-072-20230912   clang
x86_64                randconfig-073-20230912   clang
x86_64                randconfig-074-20230912   clang
x86_64                randconfig-075-20230912   clang
x86_64                randconfig-076-20230912   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa               randconfig-r014-20230912   gcc  
xtensa               randconfig-r021-20230912   gcc  
xtensa               randconfig-r023-20230912   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
