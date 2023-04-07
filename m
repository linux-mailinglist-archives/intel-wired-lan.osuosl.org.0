Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63A546DAC65
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Apr 2023 13:56:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E144B41E25;
	Fri,  7 Apr 2023 11:56:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E144B41E25
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680868560;
	bh=+aU5nZseHx7ReClIvMB3hSiVlvbuXNjKgqpYWbQdpaI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=nffKS4qM+UwbppCj31Z4HqQM9DCvs8RzqqipjdZ0nF1r83Hkrz2yFYPn73i3KCc3k
	 lIv+Izx8wqSJ5fGeL17PmcYknPrQYGD4pZitDjf4E9V+3mHy+FZUIJaKun1NrVfZjz
	 lS5Yb1pZSrrJ+CDeAOXM2wBTPF7DCgvYqJ8WbYJMrmgiBPk2rr0kwaLo/AypMCOxB3
	 c3fD+vfXUoT9bWw9G/UHCLWoFbOtgv5Z9nWsRewRycUG0dk+ABTH/UOR/pCDc95xkA
	 JFJzuhkp4NhY5ZpjsJA2L/TSrt3mv/ygRvvY6Ep19JntSZ129yYXrGpZPhQiykWZYb
	 e6m88yrIyzO2Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rp215UxnhNOm; Fri,  7 Apr 2023 11:56:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8F6F74012A;
	Fri,  7 Apr 2023 11:55:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8F6F74012A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E59131C2E3B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Apr 2023 11:55:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BCC0084552
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Apr 2023 11:55:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BCC0084552
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xd2r4WSW8ggd for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Apr 2023 11:55:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 836DE84551
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 836DE84551
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Apr 2023 11:55:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10672"; a="370809670"
X-IronPort-AV: E=Sophos;i="5.98,326,1673942400"; d="scan'208";a="370809670"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2023 04:55:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10672"; a="664865685"
X-IronPort-AV: E=Sophos;i="5.98,326,1673942400"; d="scan'208";a="664865685"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 07 Apr 2023 04:55:44 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pkkgx-000SSI-1O;
 Fri, 07 Apr 2023 11:55:43 +0000
Date: Fri, 07 Apr 2023 19:55:37 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <643004b9.ByiJqcqqFkasF56v%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680868547; x=1712404547;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=PonVRBxgM5xCBKrwyjlSjgJOqtRM2tVm0Lf007bRPi0=;
 b=OyUFkeK25rIPFeHfn25szPCcZ6yaF43pchWiGB3Bb4Bxd/2SOLSTM/Tv
 3btUN30888Q094wIr3c7XDBd+0FF7GjBBkFar36S72MsqalXpUIeHuA6E
 2cAgMITtkpgHAC/5c6dlMvt3srkhbG3Y+kH6IQ6hC3eyp8H0ZufFWdy6Y
 wPrijkwuCI99EPd3l002LvTLkJzzV76vqssE48Bw+DGVL8ybM5iOXd+/L
 FrqjlqJbAfxg8A43SbArZnjE1LKOiAZtLhPFFgqJSn+18rnV8Q3tSXzS3
 HvFt6CIo/+LaxiysKD1G64tYJUp7XDKoiq2JxF6RfpFo44yWlZ4nxcowo
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OyUFkeK2
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 135f057f4ad0a86a138bbb6d395acbc23e6e0a81
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
branch HEAD: 135f057f4ad0a86a138bbb6d395acbc23e6e0a81  iavf: remove active_cvlans and active_svlans bitmaps

elapsed time: 726m

configs tested: 135
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r005-20230403   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r011-20230403   gcc  
arc                  randconfig-r023-20230403   gcc  
arc                  randconfig-r034-20230403   gcc  
arc                  randconfig-r043-20230403   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r025-20230405   clang
arm                  randconfig-r031-20230403   gcc  
arm                  randconfig-r035-20230403   gcc  
arm                  randconfig-r046-20230403   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r004-20230403   clang
arm64                randconfig-r015-20230406   clang
arm64                randconfig-r016-20230406   clang
arm64                randconfig-r021-20230405   gcc  
arm64                randconfig-r035-20230403   clang
csky                                defconfig   gcc  
csky                 randconfig-r021-20230403   gcc  
hexagon      buildonly-randconfig-r006-20230404   clang
hexagon              randconfig-r012-20230403   clang
hexagon              randconfig-r015-20230406   clang
hexagon              randconfig-r024-20230403   clang
hexagon              randconfig-r024-20230405   clang
hexagon              randconfig-r041-20230403   clang
hexagon              randconfig-r045-20230403   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230403   clang
i386                 randconfig-a002-20230403   clang
i386                 randconfig-a003-20230403   clang
i386                 randconfig-a004-20230403   clang
i386                 randconfig-a005-20230403   clang
i386                 randconfig-a006-20230403   clang
i386                 randconfig-a011-20230403   gcc  
i386                 randconfig-a012-20230403   gcc  
i386                 randconfig-a013-20230403   gcc  
i386                 randconfig-a014-20230403   gcc  
i386                 randconfig-a015-20230403   gcc  
i386                 randconfig-a016-20230403   gcc  
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r004-20230404   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r002-20230403   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r002-20230403   gcc  
m68k         buildonly-randconfig-r006-20230403   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r022-20230403   gcc  
microblaze           randconfig-r005-20230403   gcc  
microblaze           randconfig-r012-20230406   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r014-20230406   gcc  
mips                 randconfig-r022-20230405   clang
nios2                               defconfig   gcc  
nios2                randconfig-r013-20230406   gcc  
nios2                randconfig-r032-20230403   gcc  
openrisc     buildonly-randconfig-r005-20230404   gcc  
openrisc             randconfig-r012-20230403   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r013-20230403   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r003-20230404   clang
powerpc              randconfig-r036-20230403   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r012-20230406   clang
riscv                randconfig-r016-20230403   gcc  
riscv                randconfig-r042-20230403   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r001-20230403   clang
s390                 randconfig-r004-20230403   clang
s390                 randconfig-r006-20230403   clang
s390                 randconfig-r026-20230405   gcc  
s390                 randconfig-r044-20230403   gcc  
sh                               allmodconfig   gcc  
sh                         microdev_defconfig   gcc  
sh                   randconfig-r011-20230406   gcc  
sh                   randconfig-r015-20230403   gcc  
sh                   randconfig-r016-20230406   gcc  
sh                   randconfig-r023-20230405   gcc  
sh                   randconfig-r026-20230403   gcc  
sh                   randconfig-r034-20230403   gcc  
sh                           se7750_defconfig   gcc  
sh                        sh7763rdp_defconfig   gcc  
sparc        buildonly-randconfig-r001-20230404   gcc  
sparc        buildonly-randconfig-r004-20230403   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r014-20230403   gcc  
sparc64              randconfig-r031-20230403   gcc  
sparc64              randconfig-r033-20230403   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230403   clang
x86_64               randconfig-a002-20230403   clang
x86_64               randconfig-a003-20230403   clang
x86_64               randconfig-a004-20230403   clang
x86_64               randconfig-a005-20230403   clang
x86_64               randconfig-a006-20230403   clang
x86_64               randconfig-a011-20230403   gcc  
x86_64               randconfig-a012-20230403   gcc  
x86_64               randconfig-a013-20230403   gcc  
x86_64               randconfig-a014-20230403   gcc  
x86_64               randconfig-a015-20230403   gcc  
x86_64               randconfig-a016-20230403   gcc  
x86_64               randconfig-k001-20230403   gcc  
x86_64                           rhel-8.3-bpf   gcc  
x86_64                         rhel-8.3-kunit   gcc  
x86_64                           rhel-8.3-kvm   gcc  
x86_64                           rhel-8.3-syz   gcc  
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r003-20230403   gcc  
xtensa               randconfig-r025-20230403   gcc  
xtensa               randconfig-r033-20230403   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
